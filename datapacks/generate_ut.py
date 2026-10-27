"""
Unit Test generator for ALU functions.

Test definition files live in tests_ut/.
Each file is named after the ALU function (e.g., "add", "hw_add").
Generated mcfunctions go to Computer/data/computer/function/tests/ut/

File format:
  - Lines starting with '#' are comments (ignored)
  - Lines starting with '##' are metadata:
      ## function <namespace:path>      -- function to test
      ## inputs <name1> <name2> ...     -- input storage fields in computer:alu
      ## outputs <name1> <name2> ...    -- output storage fields in computer:alu
      ## types <type1> <type2> ...      -- optional: type per field (int or float), default all int
  - Other lines are test cases: space-separated values matching inputs + outputs order.
    - int values: signed decimal (e.g. 42, -1, 2147483647)
    - float values: decimal with optional f suffix (e.g. 1.0, -3.14)
    - ERROR as output value: expects the function to call print_error (error stats == 1)
    Example for float_add (inputs: a b, outputs: result, types: float float float):
      1.0 2.0 3.0
      -1.0 1.0 0.0

The generator:
  1. Creates tests/ut/<name>.mcfunction that:
     - Checks if function is implemented (calls with dummy input, checks error stats)
     - If not implemented, skips with a message
     - Otherwise runs all test cases and reports pass/fail
  2. Creates tests/ut/testsuite.mcfunction that calls all ut tests
"""

import os
import struct
import math

SOURCE_DIR = "./tests_ut"
OUTPUT_DIR = "./Computer/data/computer/function/tests/ut"
DATAPACK_DIR = "./Computer/data"

os.makedirs(OUTPUT_DIR, exist_ok=True)


def is_placeholder(function_id):
    """Check if a function mcfunction file only calls debug/print_error.
    function_id is like 'computer:alu/int/add'."""
    namespace, path = function_id.split(":", 1)
    filepath = os.path.join(DATAPACK_DIR, namespace, "function", path + ".mcfunction")
    if not os.path.isfile(filepath):
        return True  # file doesn't exist, treat as not implemented
    with open(filepath, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            if "debug/print_error" not in line:
                return False  # has real logic
        return True  # only comments/blank/print_error calls


def to_signed32(val):
    """Ensure value is in signed 32-bit range."""
    return struct.unpack('>i', struct.pack('>I', val & 0xFFFFFFFF))[0]


def parse_float_value(s):
    """Parse a float value from test file. Returns a float."""
    s = s.strip().rstrip('f').rstrip('F')
    if s.lower() == 'nan':
        return float('nan')
    if s.lower() == 'infinity' or s.lower() == 'inf':
        return float('inf')
    if s.lower() == '-infinity' or s.lower() == '-inf':
        return float('-inf')
    return float(s)


def float_to_mc_literal(f):
    """Convert a Python float to a Minecraft NBT float literal string."""
    if math.isnan(f):
        return "NaNf"
    if math.isinf(f):
        return "Infinityf" if f > 0 else "-Infinityf"
    # Handle -0.0
    if f == 0.0 and math.copysign(1.0, f) < 0:
        return "-0.0f"
    # Format with enough precision
    s = repr(f)
    if '.' not in s and 'e' not in s and 'E' not in s:
        s += '.0'
    return s + "f"


def float_to_display(f):
    """Human-readable display of a float value for error messages."""
    if math.isnan(f):
        return "NaN"
    if math.isinf(f):
        return "Inf" if f > 0 else "-Inf"
    if f == 0.0 and math.copysign(1.0, f) < 0:
        return "-0.0"
    return repr(f)


def parse_test_file(filepath):
    """Parse a ut test definition file.
    Returns (function, inputs, outputs, types, cases).
    types is a list of 'int' or 'float' for each field (inputs + outputs).
    """
    function = None
    inputs = []
    outputs = []
    types = None
    cases = []

    with open(filepath, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                if line.startswith("## function "):
                    function = line[len("## function "):]
                elif line.startswith("## inputs "):
                    inputs = line[len("## inputs "):].split()
                elif line.startswith("## outputs "):
                    outputs = line[len("## outputs "):].split()
                elif line.startswith("## types "):
                    types = line[len("## types "):].split()
                continue
            # Test case line: space-separated values
            parts = line.split()
            n_fields = len(inputs) + len(outputs)
            if len(parts) != n_fields:
                raise ValueError(
                    f"Test case has {len(parts)} values, expected {n_fields} "
                    f"(inputs: {inputs}, outputs: {outputs}): {line}"
                )
            cases.append(parts)  # keep as strings, parse later based on type

    if function is None:
        raise ValueError(f"No '## function' metadata in {filepath}")
    if not outputs:
        raise ValueError(f"No '## outputs' metadata in {filepath}")

    # Default types: all int
    n_fields = len(inputs) + len(outputs)
    if types is None:
        types = ["int"] * n_fields
    if len(types) != n_fields:
        raise ValueError(
            f"types has {len(types)} entries, expected {n_fields} "
            f"(inputs: {inputs}, outputs: {outputs})"
        )

    return function, inputs, outputs, types, cases


def generate_skip_mcfunction(test_name, function):
    """Generate a mcfunction that just prints SKIP for unimplemented functions."""
    return (
        '# auto-generated\n'
        '# Unit test for %s (not implemented)\n'
        'tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},'
        '{"text":"SKIP %s (not implemented)","color":"gray"}]\n'
    ) % (function, test_name)


def generate_test_mcfunction(test_name, function, inputs, outputs, types, cases):
    """Generate mcfunction content for a unit test."""
    lines = []
    num_inputs = len(inputs)
    input_types = types[:num_inputs]
    output_types = types[num_inputs:]

    lines.append("# auto-generated")
    lines.append("# Unit test for %s" % function)

    # -- Run actual test cases --
    lines.append("scoreboard players set _ut_pass tests 0")
    lines.append("scoreboard players set _ut_fail tests 0")
    lines.append("")

    for raw_values in cases:
        input_strs = raw_values[:num_inputs]
        output_strs = raw_values[num_inputs:]

        # Set inputs
        for i, inp in enumerate(inputs):
            if input_types[i] == "float":
                fval = parse_float_value(input_strs[i])
                mc_lit = float_to_mc_literal(fval)
                lines.append("data modify storage computer:alu %s set value %s" % (inp, mc_lit))
            else:
                lines.append("data modify storage computer:alu %s set value %d" % (inp, int(input_strs[i])))

        # Reset error before call
        lines.append("scoreboard players set error stats 0")

        # Call function
        lines.append("function %s" % function)

        # Build input description for error messages
        input_descs = []
        for i in range(num_inputs):
            if input_types[i] == "float":
                input_descs.append(float_to_display(parse_float_value(input_strs[i])))
            else:
                input_descs.append(input_strs[i])
        input_desc = ",".join(input_descs)

        # Check each output
        # Special case: if ANY output is "ERROR", we expect error stats == 1
        if any(s.upper() == "ERROR" for s in output_strs):
            lines.append(
                "execute if score error stats matches 1 "
                "run scoreboard players add _ut_pass tests 1"
            )
            lines.append(
                "execute unless score error stats matches 1 "
                "run scoreboard players add _ut_fail tests 1"
            )
            lines.append(
                'execute unless score error stats matches 1 run tellraw @a '
                '[{"text":"[UT] - ","bold":true,"color":"blue"},'
                '{"text":"FAIL ","bold":true,"color":"red"},'
                '{"text":"%s(%s) ","color":"gold"},'
                '{"text":"expected ERROR but no error","color":"white"}]'
                % (function.split(":")[-1], input_desc)
            )
            # Reset error and clean up stack for next test
            lines.append("scoreboard players set error stats 0")
            lines.append("data modify storage computer:alu stack set value []")

            lines.append("")
            continue

        for j, out in enumerate(outputs):
            if output_types[j] == "float":
                fval = parse_float_value(output_strs[j])
                mc_lit = float_to_mc_literal(fval)
                display = float_to_display(fval)

                if math.isnan(fval):
                    # NaN: check that result is NaN using the fact that NaN != NaN
                    # We store expected NaN, then check the result is also NaN
                    # In MC NBT, {result: NaNf} should match NaN
                    lines.append(
                        "execute if data storage computer:alu {%s: %s} "
                        "run scoreboard players add _ut_pass tests 1" % (out, mc_lit)
                    )
                    lines.append(
                        "execute unless data storage computer:alu {%s: %s} "
                        "run scoreboard players add _ut_fail tests 1" % (out, mc_lit)
                    )
                    lines.append(
                        'execute unless data storage computer:alu {%s: %s} run tellraw @a '
                        '[{"text":"[UT] - ","bold":true,"color":"blue"},'
                        '{"text":"FAIL ","bold":true,"color":"red"},'
                        '{"text":"%s(%s) ","color":"gold"},'
                        '{"text":"%s: expected %s got ","color":"white"},'
                        '{"storage":"computer:alu","nbt":"%s","color":"red"}]'
                        % (out, mc_lit, function.split(":")[-1], input_desc, out, display, out)
                    )
                else:
                    # Float comparison using NBT match
                    lines.append(
                        "execute if data storage computer:alu {%s: %s} "
                        "run scoreboard players add _ut_pass tests 1" % (out, mc_lit)
                    )
                    lines.append(
                        "execute unless data storage computer:alu {%s: %s} "
                        "run scoreboard players add _ut_fail tests 1" % (out, mc_lit)
                    )
                    lines.append(
                        'execute unless data storage computer:alu {%s: %s} run tellraw @a '
                        '[{"text":"[UT] - ","bold":true,"color":"blue"},'
                        '{"text":"FAIL ","bold":true,"color":"red"},'
                        '{"text":"%s(%s) ","color":"gold"},'
                        '{"text":"%s: expected %s got ","color":"white"},'
                        '{"storage":"computer:alu","nbt":"%s","color":"red"}]'
                        % (out, mc_lit, function.split(":")[-1], input_desc, out, display, out)
                    )
            else:
                expected = int(output_strs[j])
                # Int comparison using scoreboard
                lines.append("execute store result score _ut_got tests run data get storage computer:alu %s" % out)
                lines.append(
                    "execute if score _ut_got tests matches %d run scoreboard players add _ut_pass tests 1" % expected
                )
                lines.append(
                    "execute unless score _ut_got tests matches %d run scoreboard players add _ut_fail tests 1" % expected
                )
                lines.append(
                    'execute unless score _ut_got tests matches %d run tellraw @a '
                    '[{"text":"[UT] - ","bold":true,"color":"blue"},'
                    '{"text":"FAIL ","bold":true,"color":"red"},'
                    '{"text":"%s(%s) ","color":"gold"},'
                    '{"text":"%s: expected %d got ","color":"white"},'
                    '{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]'
                    % (expected, function.split(":")[-1], input_desc, out, expected)
                )

        # Check stack is empty after call
        lines.append(
            "execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1"
        )
        lines.append(
            'execute if data storage computer:alu stack[0] run tellraw @a '
            '[{"text":"[UT] - ","bold":true,"color":"blue"},'
            '{"text":"FAIL ","bold":true,"color":"red"},'
            '{"text":"%s(%s) ","color":"gold"},'
            '{"text":"stack not empty after call","color":"red"}]'
            % (function.split(":")[-1], input_desc)
        )

        lines.append("")

    # -- Summary --
    lines.append("# Report results")
    lines.append(
        'execute if score _ut_fail tests matches 0 run tellraw @a '
        '[{"text":"[UT] - ","bold":true,"color":"blue"},'
        '{"text":"PASS %s ","bold":true,"color":"green"},'
        '{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},'
        '{"text":" checks)","color":"gold"}]' % test_name
    )
    lines.append(
        'execute unless score _ut_fail tests matches 0 run tellraw @a '
        '[{"text":"[UT] - ","bold":true,"color":"blue"},'
        '{"text":"FAIL %s ","bold":true,"color":"red"},'
        '{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},'
        '{"text":" failures out of ","color":"gold"},'
        '{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},'
        '{"text":" + ","color":"gold"},'
        '{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},'
        '{"text":" checks)","color":"gold"}]' % test_name
    )

    # Update global counters
    lines.append("scoreboard players add _ut_total_pass tests 1")
    lines.append("execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1")
    lines.append(
        'execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "%s"'
        % test_name
    )

    return "\n".join(lines) + "\n"


def main():
    if not os.path.isdir(SOURCE_DIR):
        print("No tests_ut/ directory found, nothing to generate.")
        return

    files = sorted(
        f for f in os.listdir(SOURCE_DIR)
        if os.path.isfile(os.path.join(SOURCE_DIR, f)) and not f.startswith(".")
    )

    if not files:
        print("No test files found in tests_ut/")
        return

    testsuite_lines = []
    testsuite_lines.append("# ALU Unit Test Suite (auto-generated)")
    testsuite_lines.append("function computer:reset")
    testsuite_lines.append("scoreboard players set _ut_total_pass tests 0")
    testsuite_lines.append("scoreboard players set _ut_total_fail tests 0")
    testsuite_lines.append("data modify storage computer:test ut_failed set value []")
    testsuite_lines.append("")

    skipped = 0

    for filename in files:
        filepath = os.path.join(SOURCE_DIR, filename)
        test_name = filename  # e.g. "add", "hw_add"
        print("Processing UT: %s" % filename)

        try:
            function, inputs, outputs, types, cases = parse_test_file(filepath)
        except Exception as e:
            print("  ERROR: %s" % e)
            continue

        if is_placeholder(function):
            print("  SKIP (not implemented)")
            skipped += 1
            content = generate_skip_mcfunction(test_name, function)
        else:
            print("  function=%s inputs=%s outputs=%s types=%s cases=%d" % (function, inputs, outputs, types, len(cases)))
            content = generate_test_mcfunction(test_name, function, inputs, outputs, types, cases)

        outpath = os.path.join(OUTPUT_DIR, "%s.mcfunction" % test_name)
        with open(outpath, "w", encoding="utf-8") as f:
            f.write(content)

        testsuite_lines.append("# %s" % test_name)
        testsuite_lines.append("function computer:tests/ut/%s" % test_name)

    # Summary
    testsuite_lines.append("")
    testsuite_lines.append(
        'tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},'
        '{"text":"Results: ","bold":true,"color":"gold"},'
        '{"score":{"name":"_ut_total_fail","objective":"tests"},"bold":true,"color":"red"},'
        '{"text":" failures out of ","color":"gold"},'
        '{"score":{"name":"_ut_total_pass","objective":"tests"},"bold":true,"color":"green"},'
        '{"text":" functions tested","color":"gold"}'
        + (',{"text":" (%d skipped)","bold":true,"color":"gray"}' % skipped if skipped > 0 else '')
        + ']'
    )
    testsuite_lines.append(
        'execute if data storage computer:test ut_failed[0] run tellraw @a '
        '[{"text":"[UT] - ","bold":true,"color":"blue"},'
        '{"text":"Failed: ","bold":true,"color":"red"},'
        '{"storage":"computer:test","nbt":"ut_failed","color":"red"}]'
    )

    testsuite_path = os.path.join(OUTPUT_DIR, "testsuite.mcfunction")
    with open(testsuite_path, "w", encoding="utf-8") as f:
        f.write("\n".join(testsuite_lines) + "\n")

    print("Generated %d UT test files + testsuite.mcfunction" % len(files))


if __name__ == "__main__":
    main()
