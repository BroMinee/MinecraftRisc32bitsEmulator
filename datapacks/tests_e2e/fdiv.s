00000000  b7 00 c0 40 53 80 00 f0  37 01 40 40 d3 00 01 f0  |...@S...7.@@....|
00000010  d3 7f 10 18 b7 00 80 3f  53 80 00 f0 37 01 80 3f  |.......?S...7..?|
00000020  d3 00 01 f0 53 7f 10 18  b7 00 80 bf 53 80 00 f0  |....S.......S...|
00000030  37 01 00 40 d3 00 01 f0  d3 7e 10 18 b7 00 c0 c0  |7..@.....~......|
00000040  53 80 00 f0 37 01 40 c0  d3 00 01 f0 53 7e 10 18  |S...7.@.....S~..|
00000050  b7 00 80 3f 53 80 00 f0  13 01 00 00 d3 00 01 f0  |...?S...........|
00000060  d3 7d 10 18 b7 00 80 bf  53 80 00 f0 13 01 00 00  |.}......S.......|
00000070  d3 00 01 f0 53 7d 10 18  93 00 00 00 53 80 00 f0  |....S}......S...|
00000080  13 01 00 00 d3 00 01 f0  d3 7c 10 18 b7 00 20 41  |.........|.... A|
00000090  53 80 00 f0 37 01 a0 40  d3 00 01 f0 d3 79 10 18  |S...7..@.....y..|
000000a0  b7 00 80 3f 53 80 00 f0  37 01 40 40 d3 00 01 f0  |...?S...7.@@....|
000000b0  53 79 10 18 93 00 00 00  53 80 00 f0 37 01 a0 40  |Sy......S...7..@|
000000c0  d3 00 01 f0 d3 78 10 18  b7 00 80 3f 53 80 00 f0  |.....x.....?S...|
000000d0  37 01 00 3f d3 00 01 f0  d3 77 10 18 b7 00 80 7f  |7..?.....w......|
000000e0  93 80 f0 ff 53 80 00 f0  37 01 00 3f d3 00 01 f0  |....S...7..?....|
000000f0  53 77 10 18 b7 00 80 00  53 80 00 f0 37 01 00 40  |Sw......S...7..@|
00000100  d3 00 01 f0 d3 76 10 18                           |.....v..|
00000108

# li x1, 0x40c00000
# fmv.w.x f0, x1
# li x2, 0x40400000
# fmv.w.x f1, x2
# fdiv.s f31, f0, f1 # Test 1: 6.0 / 3.0 = 2.0

# li x1, 0x3f800000
# fmv.w.x f0, x1
# li x2, 0x3f800000
# fmv.w.x f1, x2
# fdiv.s f30, f0, f1 # Test 2: 1.0 / 1.0 = 1.0

# li x1, 0xbf800000
# fmv.w.x f0, x1
# li x2, 0x40000000
# fmv.w.x f1, x2
# fdiv.s f29, f0, f1 # Test 3: -1.0 / 2.0 = -0.5

# li x1, 0xc0c00000
# fmv.w.x f0, x1
# li x2, 0xc0400000
# fmv.w.x f1, x2
# fdiv.s f28, f0, f1 # Test 4: -6.0 / -3.0 = 2.0

# li x1, 0x3f800000
# fmv.w.x f0, x1
# li x2, 0x00000000
# fmv.w.x f1, x2
# fdiv.s f27, f0, f1 # Test 5: 1.0 / +0.0 = +inf

# li x1, 0xbf800000
# fmv.w.x f0, x1
# li x2, 0x00000000
# fmv.w.x f1, x2
# fdiv.s f26, f0, f1 # Test 6: -1.0 / +0.0 = -inf

# li x1, 0x00000000
# fmv.w.x f0, x1
# li x2, 0x00000000
# fmv.w.x f1, x2
# fdiv.s f25, f0, f1 # Test 7: 0.0 / 0.0 = NaN

### li x1, 0x7f800000
### fmv.w.x f0, x1
### li x2, 0x40000000
### fmv.w.x f1, x2
### fdiv.s f24, f0, f1 # Test 8: inf / 2.0 = inf

### li x1, 0x40000000
### fmv.w.x f0, x1
### li x2, 0x7f800000
### fmv.w.x f1, x2
### fdiv.s f23, f0, f1 # Test 9: 2.0 / inf = +0.0

### li x1, 0x7f800000
### fmv.w.x f0, x1
### li x2, 0x7f800000
### fmv.w.x f1, x2
### fdiv.s f22, f0, f1 # Test 10: inf / inf = NaN

### li x1, 0x7f800001
### fmv.w.x f0, x1
### li x2, 0x3f800000
### fmv.w.x f1, x2
### fdiv.s f21, f0, f1 # Test 11: sNaN / 1.0 = qNaN

### li x1, 0x3f800000
### fmv.w.x f0, x1
### li x2, 0x7fc00000
### fmv.w.x f1, x2
### fdiv.s f20, f0, f1 # Test 12: 1.0 / qNaN = qNaN

# li x1, 0x41200000
# fmv.w.x f0, x1
# li x2, 0x40a00000
# fmv.w.x f1, x2
# fdiv.s f19, f0, f1 # Test 13: 10.0 / 5.0 = 2.0

# li x1, 0x3f800000
# fmv.w.x f0, x1
# li x2, 0x40400000
# fmv.w.x f1, x2
# fdiv.s f18, f0, f1 # Test 14: 1.0 / 3.0 = 0.333...

# li x1, 0x00000000
# fmv.w.x f0, x1
# li x2, 0x40a00000
# fmv.w.x f1, x2
# fdiv.s f17, f0, f1 # Test 15: 0.0 / 5.0 = 0.0

### li x1, 0x80000000
### fmv.w.x f0, x1
### li x2, 0x40a00000
### fmv.w.x f1, x2
### fdiv.s f16, f0, f1 # Test 16: -0.0 / 5.0 = -0.0

# li x1, 0x3f800000
# fmv.w.x f0, x1
# li x2, 0x3f000000
# fmv.w.x f1, x2
# fdiv.s f15, f0, f1 # Test 17: 1.0 / 0.5 = 2.0

# li x1, 0x7f7fffff
# fmv.w.x f0, x1
# li x2, 0x3f000000
# fmv.w.x f1, x2
# fdiv.s f14, f0, f1 # Test 18: max_normal / 0.5 = inf

# li x1, 0x00800000
# fmv.w.x f0, x1
# li x2, 0x40000000
# fmv.w.x f1, x2
# fdiv.s f13, f0, f1 # Test 19: min_normal / 2.0 = subnormal

### li x1, 0xff800000
### fmv.w.x f0, x1
### li x2, 0x40000000
### fmv.w.x f1, x2
### fdiv.s f12, f0, f1 # Test 20: -inf / 2.0 = -inf

## cycle 66
## pc 00000108
## x1 00800000
## x2 40000000
## f0 00800000
## f1 40000000
## f13 00400000
## f14 7f800000
## f15 40000000
## f18 3eaaaaab
## f19 40000000
## f25 7fc00000
## f26 ff800000
## f27 7f800000
## f28 40000000
## f29 bf000000
## f30 3f800000
## f31 40000000