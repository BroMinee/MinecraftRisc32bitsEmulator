00000000  b7 d0 cc 3d 93 80 d0 cc  53 80 00 f0 37 d1 4c 3e  |...=....S...7.L>|
00000010  13 01 d1 cc d3 00 01 f0                           |........|
00000018


# li x1, 0x3dcccccd
# fmv.w.x f0, x1
# li x2, 0x3e4ccccd
# fmv.w.x f1, x2


## cycle 6
## pc 00000018
## x1 3dcccccd
## x2 3e4ccccd
## f0 3dcccccd
## f1 3e4ccccd