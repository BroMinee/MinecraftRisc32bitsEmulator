# Inner step for mulUnsigned64
# Reads from parent frame: _ai, _bj, _rb_val, carry
# Writes to parent frame: _rb_val, carry
# prod = _ai * _bj + _rb_val + carry
# carry = prod / 256
# _rb_val = prod - carry * 256

data modify storage computer:alu a set from storage computer:alu stack[-1]._ai
data modify storage computer:alu b set from storage computer:alu stack[-1]._bj
function computer:alu/int/hw_mul
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set from storage computer:alu stack[-1]._rb_val
function computer:alu/int/hw_add
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set from storage computer:alu stack[-1].carry
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1]._prod set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1]._prod
data modify storage computer:alu b set value 256
function computer:alu/int/hw_div
data modify storage computer:alu stack[-1].carry set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].carry
data modify storage computer:alu b set value 256
function computer:alu/int/hw_mul
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1]._prod
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu result
