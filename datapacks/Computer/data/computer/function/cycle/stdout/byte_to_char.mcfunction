# Convert byte value to character string
# Input: computer:cpu result (int 32-126)
# Output: computer:memory stdout_char (string)
$data modify storage computer:memory stdout_char set from storage computer:ascii_$(result) value
