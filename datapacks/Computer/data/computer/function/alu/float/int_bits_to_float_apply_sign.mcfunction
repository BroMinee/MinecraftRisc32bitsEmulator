# Helper: apply sign to stack[-1].res, write to computer:alu result
# if (sign == 1) result = floatNeg(result);

data modify storage computer:alu result set from storage computer:alu stack[-1].res
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].res
execute if score _sign alu matches 1 run function computer:alu/float/float_neg
