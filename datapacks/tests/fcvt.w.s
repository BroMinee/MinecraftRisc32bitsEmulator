00000000  b7 00 28 42 53 80 00 f0  d3 7f 00 c0 b7 00 28 c2  |..(BS.........(.|
00000010  53 80 00 f0 53 7f 00 c0  93 00 00 00 53 80 00 f0  |S...S.......S...|
00000020  d3 7e 00 c0 b7 00 80 3f  53 80 00 f0 53 7e 00 c0  |.~.....?S...S~..|
00000030  b7 00 00 3f 53 80 00 f0  d3 7d 00 c0 b7 00 c0 3f  |...?S....}.....?|
00000040  53 80 00 f0 53 7d 00 c0  b7 00 80 7f 53 80 00 f0  |S...S}......S...|
00000050  d3 7c 00 c0 b7 00 80 ff  53 80 00 f0 53 7c 00 c0  |.|......S...S|..|
00000060  b7 00 c0 7f 53 80 00 f0  d3 7b 00 c0              |....S....{..|
0000006c

# li x1, 0x42280000       # 42.0
# fmv.w.x f0, x1
# fcvt.w.s x31, f0         # -> 42
# li x1, 0xc2280000       # -42.0
# fmv.w.x f0, x1
# fcvt.w.s x30, f0         # -> -42
# li x1, 0x00000000       # 0.0
# fmv.w.x f0, x1
# fcvt.w.s x29, f0         # -> 0
# li x1, 0x3f800000       # 1.0
# fmv.w.x f0, x1
# fcvt.w.s x28, f0         # -> 1
# li x1, 0x3f000000       # 0.5
# fmv.w.x f0, x1
# fcvt.w.s x27, f0         # -> 0
# li x1, 0x3fc00000       # 1.5
# fmv.w.x f0, x1
# fcvt.w.s x26, f0         # -> 2
# li x1, 0x7f800000       # +inf
# fmv.w.x f0, x1
# fcvt.w.s x25, f0         # -> 0x7fffffff
# li x1, 0xff800000       # -inf
# fmv.w.x f0, x1
# fcvt.w.s x24, f0         # -> 0x80000000
# li x1, 0x7fc00000       # NaN
# fmv.w.x f0, x1
# fcvt.w.s x23, f0         # -> 0x7fffffff

## cycle 27
## pc 0000006c
## x1 7fc00000
## x23 7fffffff
## x24 80000000
## x25 7fffffff
## x26 00000002
## x28 00000001
## x30 ffffffd6
## x31 0000002a
## f0 7fc00000
