# Compute float display value from computer:debug val (IEEE 754 single precision)
# Outputs computer:debug float as string

# Extract sign (bit 31) from bin array
data modify storage computer:debug sign set from storage computer:debug bin[31]

# Extract exponent (bits 23-30) and mantissa (bits 0-22) via number providers
data modify storage computer:debug exponent set compute default integer computer:debug/exponent
data modify storage computer:debug mantissa set compute default integer computer:debug/mantissa

# Compute real exponent (exp - 127) for normal float display
data modify storage computer:debug real_exp set compute default integer computer:debug/real_exp

# Determine case based on exponent and mantissa
# Default: normal (case 0)
data modify storage computer:debug case set value 0
# exp=0, mantissa=0 -> zero
execute if data storage computer:debug {exponent:0,mantissa:0} run data modify storage computer:debug case set value 1
# exp=0, mantissa!=0 -> subnormal
execute if data storage computer:debug {exponent:0} unless data storage computer:debug {mantissa:0} run data modify storage computer:debug case set value 2
# exp=255, mantissa=0 -> infinity
execute if data storage computer:debug {exponent:255,mantissa:0} run data modify storage computer:debug case set value 3
# exp=255, mantissa!=0 -> NaN
execute if data storage computer:debug {exponent:255} unless data storage computer:debug {mantissa:0} run data modify storage computer:debug case set value 4

# Zero
execute if data storage computer:debug {case:1,sign:0} run data modify storage computer:debug float set value "0.0"
execute if data storage computer:debug {case:1,sign:1} run data modify storage computer:debug float set value "-0.0"

# Infinity
execute if data storage computer:debug {case:3,sign:0} run data modify storage computer:debug float set value "+Inf"
execute if data storage computer:debug {case:3,sign:1} run data modify storage computer:debug float set value "-Inf"

# NaN
execute if data storage computer:debug {case:4} run data modify storage computer:debug float set value "NaN"

# Normal: mantissa(with implicit 1) * 2^(exp-127)
execute if data storage computer:debug {case:0} run data modify storage computer:debug float set compute default float computer:debug/normal_value

# Subnormal: mantissa(no implicit 1) * 2^(-126)
execute if data storage computer:debug {case:2} run data modify storage computer:debug float set compute default float computer:debug/subnormal_value

# Negate if sign=1
execute if data storage computer:debug {sign:1} unless data storage computer:debug {case:3} unless data storage computer:debug {case:4} unless data storage computer:debug {case:1} run data modify storage computer:debug float set compute default float computer:debug/negate

data modify storage computer:debug float set string storage computer:debug float