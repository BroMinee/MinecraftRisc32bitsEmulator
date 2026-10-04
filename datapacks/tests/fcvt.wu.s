00000000  b7 00 28 42 53 80 00 f0  d3 7f 10 c0 b7 00 28 c2  |..(BS.........(.|
00000010  53 80 00 f0 53 7f 10 c0  93 00 00 00 53 80 00 f0  |S...S.......S...|
00000020  d3 7e 10 c0 b7 00 80 3f  53 80 00 f0 53 7e 10 c0  |.~.....?S...S~..|
00000030  b7 00 80 7f 53 80 00 f0  d3 7d 10 c0 b7 00 c0 7f  |....S....}......|
00000040  53 80 00 f0 53 7d 10 c0                           |S...S}..|
00000048

# li x1, 0x42280000       # 42.0
# fmv.w.x f0, x1
# fcvt.wu.s x31, f0        # -> 42
# li x1, 0xc2280000       # -42.0
# fmv.w.x f0, x1
# fcvt.wu.s x30, f0        # -> 0
# li x1, 0x00000000       # 0.0
# fmv.w.x f0, x1
# fcvt.wu.s x29, f0        # -> 0
# li x1, 0x3f800000       # 1.0
# fmv.w.x f0, x1
# fcvt.wu.s x28, f0        # -> 1
# li x1, 0x7f800000       # +inf
# fmv.w.x f0, x1
# fcvt.wu.s x27, f0        # -> 0xffffffff
# li x1, 0x7fc00000       # NaN
# fmv.w.x f0, x1
# fcvt.wu.s x26, f0        # -> 0xffffffff

## cycle 18
## pc 00000048
## x1 7fc00000
## x26 ffffffff
## x27 ffffffff
## x28 00000001
## x31 0000002a
## f0 7fc00000
