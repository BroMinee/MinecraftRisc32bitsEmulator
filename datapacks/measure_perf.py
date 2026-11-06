#!/usr/bin/env python3
"""Measure performance of all RISC-V instructions via jvmtimer.

Connects to Minecraft websocket, runs /jvmtimer get <name> for each
instruction, parses the results, and outputs a markdown
report with two tables: alphabetical and sorted by average time descending.

Usage:
    python3 measure_perf.py
    python3 measure_perf.py computer:instruction/add computer:instruction/sub   # measure only specific instructions
"""

import asyncio
import json
import math
import re
import sys
import websockets

WS_URL = "ws://localhost:25599/cli"

NAN_RESULT = {
    "total": "NaN", "total_us": float("nan"),
    "count": 0,
    "avg": "NaN", "avg_us": float("nan"),
    "max": "NaN", "max_us": float("nan"),
    "min": "NaN", "min_us": float("nan"),
}

ALL_INSTRUCTIONS = [
    # Cycle / dispatch
    "computer:cycle/do_cycle", "computer:cycle/fetch", "_opcode_decode",
    "_dispatcher", "_disp_opcode_switch",
    "_disp_decode_op_imm", "_disp_decode_branch", "_disp_decode_op",
    "_disp_decode_op_fp", "_disp_decode_store", "_disp_decode_load",
    "_disp_decode_fmadd", "_disp_decode_fmsub", "_disp_decode_fnmadd", "_disp_decode_fnmsub",
    "_disp_funct3_switch", "_disp_funct7_switch",
    # Memory (profile file timers)
    "computer:memory/__internal/compute_addr", "computer:memory/__internal/read_word",
    "computer:memory/__internal/write_word",
    # CPU helpers (profile file timers)
    "computer:cpu/increase_pc",
    # Instructions
    "computer:instruction/add", "computer:instruction/addi",
    "computer:instruction/and", "computer:instruction/andi", "computer:instruction/auipc",
    "computer:instruction/beq", "computer:instruction/bge", "computer:instruction/bgeu",
    "computer:instruction/blt", "computer:instruction/bltu", "computer:instruction/bne",
    "computer:instruction/div", "computer:instruction/divu",
    "computer:instruction/fadd.s", "computer:instruction/fclass.s",
    "computer:instruction/fcvt.s.w", "computer:instruction/fcvt.s.wu",
    "computer:instruction/fcvt.w.s", "computer:instruction/fcvt.wu.s",
    "computer:instruction/fdiv.s", "computer:instruction/feq.s",
    "computer:instruction/fle.s", "computer:instruction/flt.s", "computer:instruction/flw",
    "computer:instruction/fmadd", "computer:instruction/fmax.s",
    "computer:instruction/fmin.s", "computer:instruction/fmsub", "computer:instruction/fmul.s",
    "computer:instruction/fmv.w.x", "computer:instruction/fmv.x.w",
    "computer:instruction/fnmadd", "computer:instruction/fnmsub",
    "computer:instruction/fsgnjn.s", "computer:instruction/fsgnj.s",
    "computer:instruction/fsgnjx.s", "computer:instruction/fsub.s", "computer:instruction/fsw",
    "computer:instruction/jal", "computer:instruction/jalr",
    "computer:instruction/lb", "computer:instruction/lbu",
    "computer:instruction/lh", "computer:instruction/lhu",
    "computer:instruction/lui", "computer:instruction/lw",
    "computer:instruction/mul", "computer:instruction/mulh",
    "computer:instruction/mulhsu", "computer:instruction/mulhu",
    "computer:instruction/or", "computer:instruction/ori",
    "computer:instruction/rem", "computer:instruction/remu",
    "computer:instruction/sb", "computer:instruction/sh",
    "computer:instruction/sll", "computer:instruction/slli",
    "computer:instruction/slt", "computer:instruction/slti",
    "computer:instruction/sltiu", "computer:instruction/sltu",
    "computer:instruction/sra", "computer:instruction/srai",
    "computer:instruction/srl", "computer:instruction/srli",
    "computer:instruction/sub", "computer:instruction/sw",
    "computer:instruction/system", "computer:instruction/xor", "computer:instruction/xori",
    # ALU int functions
    "computer:alu/int/add", "computer:alu/int/and", "computer:alu/int/clear_bit0",
    "computer:alu/int/compare_unsigned", "computer:alu/int/copy_negated_sign_bit",
    "computer:alu/int/copy_sign_bit", "computer:alu/int/div",
    "computer:alu/int/div_rem_unsigned", "computer:alu/int/divu",
    "computer:alu/int/flip_sign_bit",
    "computer:alu/int/hw_add", "computer:alu/int/hw_div",
    "computer:alu/int/hw_mul", "computer:alu/int/hw_sub",
    "computer:alu/int/low31", "computer:alu/int/mask_low_bits", "computer:alu/int/mod_pow2",
    "computer:alu/int/mul", "computer:alu/int/mul_unsigned_64",
    "computer:alu/int/mulh", "computer:alu/int/mulhsu", "computer:alu/int/mulhu",
    "computer:alu/int/negate", "computer:alu/int/not", "computer:alu/int/or",
    "computer:alu/int/pow2", "computer:alu/int/rem", "computer:alu/int/remu",
    "computer:alu/int/shl", "computer:alu/int/shr_s", "computer:alu/int/shr_u",
    "computer:alu/int/sign_extend_8", "computer:alu/int/sign_extend_16",
    "computer:alu/int/sub", "computer:alu/int/xor", "computer:alu/int/xor_sign_bit",
    # ALU float functions
    "computer:alu/float/float_abs", "computer:alu/float/float_add",
    "computer:alu/float/float_ceil", "computer:alu/float/float_div",
    "computer:alu/float/float_floor", "computer:alu/float/float_mul",
    "computer:alu/float/float_neg", "computer:alu/float/float_round",
    "computer:alu/float/float_round_to_int", "computer:alu/float/float_sub",
    "computer:alu/float/float_to_int_trunc", "computer:alu/float/float_to_raw_int_bits",
    "computer:alu/float/float_to_unsigned_int", "computer:alu/float/int_bits_to_float",
    "computer:alu/float/int_to_float", "computer:alu/float/unsigned_int_to_float",
]


def extract_chat(msg_str):
    """Extract the chat text after '[CHAT] ' from a log message."""
    idx = msg_str.find("[CHAT] ")
    if idx == -1:
        return None
    return msg_str[idx + 7:].strip()


def parse_time_to_us(s):
    """Parse a time string like '7.533188ms' or '51.839μs' to float microseconds."""
    s = s.strip()
    if s.endswith("ms"):
        return float(s[:-2]) * 1000.0
    elif s.endswith("μs") or s.endswith("µs"):
        return float(s[:-2])
    elif s.endswith("ns"):
        return float(s[:-2]) / 1000.0
    elif s.endswith("s"):
        return float(s[:-1]) * 1_000_000.0
    return float(s)


def format_time(us):
    """Format microseconds to a human-readable string."""
    if math.isnan(us):
        return "NaN"
    if us >= 1000:
        return f"{us / 1000:.3f}ms"
    return f"{us:.3f}μs"


def parse_timer_message(lines):
    """Parse a [Sniffer] Timer id: ... message into a dict.

    The message is split across multiple chat lines due to \\n in the original.
    We receive them as separate [CHAT] messages.
    """
    # Join all lines and parse fields
    text = "\n".join(lines)

    m_total = re.search(r'Total time:\s*\n?\s*([^\n]+)', text)
    m_count = re.search(r'Count:\s*\n?\s*(\d+)', text)
    m_avg = re.search(r'Average time:\s*\n?\s*([^\n]+)', text)
    m_minmax = re.search(r'Min/Max time:\s*\n?\s*([^\n/]+)/([^\n]+)', text)

    if not all([m_total, m_count, m_avg, m_minmax]):
        return None

    return {
        "total": m_total.group(1).strip(),
        "total_us": parse_time_to_us(m_total.group(1).strip()),
        "count": int(m_count.group(1)),
        "avg": m_avg.group(1).strip(),
        "avg_us": parse_time_to_us(m_avg.group(1).strip()),
        "min": m_minmax.group(1).strip(),
        "min_us": parse_time_to_us(m_minmax.group(1).strip()),
        "max": m_minmax.group(2).strip(),
        "max_us": parse_time_to_us(m_minmax.group(2).strip()),
    }


async def send_and_wait_response(ws, cmd):
    """Send a command and wait for the 'response' message."""
    await ws.send(json.dumps({"type": "command", "command": cmd}))
    while True:
        try:
            msg = await asyncio.wait_for(ws.recv(), timeout=5)
            data = json.loads(msg)
            if isinstance(data, dict) and data.get("type") == "response":
                return data
        except asyncio.TimeoutError:
            return None


async def measure(instructions):
    results = {}

    async with websockets.connect(WS_URL) as ws:
        # Collect timers
        for name in instructions:
            resp = await send_and_wait_response(ws, f"/jvmtimer get {name}")
            feedback = resp.get("feedback", []) if resp else None

            parsed = parse_timer_message(feedback) if feedback else None
            if parsed:
                results[name] = parsed
                print(f"  {name}: avg={parsed['avg']}, count={parsed['count']}")
            else:
                results[name] = NAN_RESULT
                print(f"  {name}: NaN (feedback={feedback})")


        # Reset all timers
        print("\nResetting timers...")
        for name in instructions:
            await send_and_wait_response(ws, f"/jvmtimer reset {name}")
        print("Timers reset.")

    return results


def format_row(name, r):
    count = r['count'] if r['count'] else "NaN"
    return (
        f"| {name} | {count} | {format_time(r['total_us'])} "
        f"| {format_time(r['avg_us'])} | {format_time(r['min_us'])} | {format_time(r['max_us'])} |"
    )


def generate_markdown(results):
    """Generate markdown with two tables."""
    if not results:
        return "# Performance Report\n\nNo data collected.\n"

    header = "| Instruction | Count | Total | Average | Min | Max |\n|---|---|---|---|---|---|"

    # Table 1: alphabetical
    alpha_rows = [format_row(name, results[name]) for name in sorted(results.keys())]

    # Table 2: by average time descending (NaN at the bottom)
    by_avg = sorted(results.keys(), key=lambda n: -results[n]['avg_us'] if not math.isnan(results[n]['avg_us']) else float('inf'))
    avg_rows = [format_row(name, results[name]) for name in by_avg]

    md = f"""# Performance Report

## Alphabetical

{header}
""" + "\n".join(alpha_rows) + f"""

## By Average Time (descending)

{header}
""" + "\n".join(avg_rows) + "\n"

    return md


def main():
    args = sys.argv[1:]
    instructions = args if args else ALL_INSTRUCTIONS

    print(f"Measuring {len(instructions)} timers...")
    results = asyncio.run(measure(instructions))

    md = generate_markdown(results)

    out_path = "perf_report.md"
    with open(out_path, "w") as f:
        f.write(md)

    print(f"\nReport written to {out_path}")


if __name__ == "__main__":
    main()
