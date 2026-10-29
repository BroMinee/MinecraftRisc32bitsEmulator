#!/usr/bin/env python3
"""Measure performance of all RISC-V instructions via jvmtimer.

Connects to Minecraft websocket, runs /jvmtimer get <name> for each
instruction (+ _dispatcher), parses the results, and outputs a markdown
report with two tables: alphabetical and sorted by average time descending.

Usage:
    python3 measure_perf.py
    python3 measure_perf.py add sub mul   # measure only specific instructions
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
    "do_cycle", "_dispatcher",
    # v1 load/writeback timers
    "_v1_load_add", "_v1_wb_add",
    "_v1_load_addi", "_v1_wb_addi",
    "_v1_load_beq", "_v1_load_bne",
    "_v1_load_sw",
    "_v1_wb_lui", "_v1_wb_jal", "_v1_jal_jump",
    "_v1_load_fadd.s", "_v1_wb_fadd.s",
    "_v1_load_fmul.s", "_v1_wb_fmul.s",
    "_v1_load_fmadd.s", "_v1_wb_fmadd.s",
    "_v1_load_fsub.s", "_v1_wb_fsub.s",
    "_v1_load_flt.s", "_v1_wb_flt.s",
    "_v1_load_fcvt.s.w",
    # instructions (compute only)
    "add", "addi", "and", "andi", "auipc",
    "beq", "bge", "bgeu", "blt", "bltu", "bne",
    "div", "divu",
    "ebreak", "ecall",
    "fadd.s", "fclass.s", "fcvt.s.w", "fcvt.s.wu", "fcvt.w.s", "fcvt.wu.s",
    "fdiv.s", "fence", "fence.tso", "feq.s", "fle.s", "flt.s", "flw",
    "fmadd.s", "fmax.s", "fmin.s", "fmsub.s", "fmul.s",
    "fmv.w.x", "fmv.x.w", "fnmadd.s", "fnmsub.s",
    "fsgnjn.s", "fsgnj.s", "fsgnjx.s", "fsqrt.s", "fsub.s", "fsw",
    "jal", "jalr",
    "lb", "lbu", "lh", "lhu", "lui", "lw",
    "mul", "mulh", "mulhsu", "mulhu",
    "or", "ori", "pause",
    "rem", "remu",
    "sb", "sh", "sll", "slli", "slt", "slti", "sltiu", "sltu",
    "sra", "srai", "srl", "srli", "sub", "sw",
    "xor", "xori",
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
    m_maxmin = re.search(r'Max/Min time:\s*\n?\s*([^\n/]+)/([^\n]+)', text)

    if not all([m_total, m_count, m_avg, m_maxmin]):
        return None

    return {
        "total": m_total.group(1).strip(),
        "total_us": parse_time_to_us(m_total.group(1).strip()),
        "count": int(m_count.group(1)),
        "avg": m_avg.group(1).strip(),
        "avg_us": parse_time_to_us(m_avg.group(1).strip()),
        "max": m_maxmin.group(1).strip(),
        "max_us": parse_time_to_us(m_maxmin.group(1).strip()),
        "min": m_maxmin.group(2).strip(),
        "min_us": parse_time_to_us(m_maxmin.group(2).strip()),
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

            await asyncio.sleep(0.1)

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
