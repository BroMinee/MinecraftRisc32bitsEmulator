#!jvmtimer end _dispatcher
#!jvmtimer start fnmadd
# Input:  computer:cpu rs1_val, computer:cpu rs2_val, computer:cpu rs3_val (float)
# Output: computer:alu result (float)
# static float fnmadd_s(float a, float b, float c) { return floatSub(floatNeg(floatMul(a, b)), c); }

function computer:debug/print_log {"message": {"text": "Running fnmadd.s", "color":"gold"}}

# float mul = floatMul(a, b)
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/float/float_mul

# float neg_mul = floatNeg(mul)
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_neg

# float res = floatSub(neg_mul, c)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set from storage computer:cpu rs3_val
function computer:alu/float/float_sub

#!jvmtimer end fnmadd
