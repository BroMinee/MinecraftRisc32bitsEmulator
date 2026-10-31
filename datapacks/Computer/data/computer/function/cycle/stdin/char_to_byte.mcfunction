# Convert stdin_char (string) to stdin_byte (int)
# Input: computer:memory stdin_char
# Output: computer:memory stdin_byte

data modify storage computer:memory stdin_backup set from storage computer:memory stdin_char

# 0x20 = ' '
execute store success score _match alu run data modify storage computer:memory stdin_char set value ' '
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 32
# 0x21 = '!'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '!'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 33
# 0x22 = '"'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '"'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 34
# 0x23 = '#'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '#'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 35
# 0x24 = '$'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '$'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 36
# 0x25 = '%'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '%'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 37
# 0x26 = '&'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '&'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 38
# 0x27 = '''
execute store success score _match alu run data modify storage computer:memory stdin_char set value '\''
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 39
# 0x28 = '('
execute store success score _match alu run data modify storage computer:memory stdin_char set value '('
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 40
# 0x29 = ')'
execute store success score _match alu run data modify storage computer:memory stdin_char set value ')'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 41
# 0x2A = '*'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '*'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 42
# 0x2B = '+'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '+'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 43
# 0x2C = ','
execute store success score _match alu run data modify storage computer:memory stdin_char set value ','
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 44
# 0x2D = '-'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '-'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 45
# 0x2E = '.'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '.'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 46
# 0x2F = '/'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '/'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 47
# 0x30 = '0'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '0'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 48
# 0x31 = '1'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '1'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 49
# 0x32 = '2'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '2'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 50
# 0x33 = '3'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '3'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 51
# 0x34 = '4'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '4'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 52
# 0x35 = '5'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '5'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 53
# 0x36 = '6'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '6'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 54
# 0x37 = '7'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '7'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 55
# 0x38 = '8'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '8'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 56
# 0x39 = '9'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '9'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 57
# 0x3A = ':'
execute store success score _match alu run data modify storage computer:memory stdin_char set value ':'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 58
# 0x3B = ';'
execute store success score _match alu run data modify storage computer:memory stdin_char set value ';'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 59
# 0x3C = '<'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '<'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 60
# 0x3D = '='
execute store success score _match alu run data modify storage computer:memory stdin_char set value '='
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 61
# 0x3E = '>'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '>'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 62
# 0x3F = '?'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '?'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 63
# 0x40 = '@'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '@'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 64
# 0x41 = 'A'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'A'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 65
# 0x42 = 'B'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'B'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 66
# 0x43 = 'C'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'C'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 67
# 0x44 = 'D'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'D'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 68
# 0x45 = 'E'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'E'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 69
# 0x46 = 'F'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'F'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 70
# 0x47 = 'G'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'G'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 71
# 0x48 = 'H'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'H'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 72
# 0x49 = 'I'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'I'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 73
# 0x4A = 'J'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'J'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 74
# 0x4B = 'K'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'K'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 75
# 0x4C = 'L'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'L'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 76
# 0x4D = 'M'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'M'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 77
# 0x4E = 'N'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'N'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 78
# 0x4F = 'O'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'O'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 79
# 0x50 = 'P'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'P'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 80
# 0x51 = 'Q'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'Q'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 81
# 0x52 = 'R'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'R'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 82
# 0x53 = 'S'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'S'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 83
# 0x54 = 'T'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'T'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 84
# 0x55 = 'U'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'U'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 85
# 0x56 = 'V'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'V'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 86
# 0x57 = 'W'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'W'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 87
# 0x58 = 'X'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'X'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 88
# 0x59 = 'Y'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'Y'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 89
# 0x5A = 'Z'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'Z'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 90
# 0x5B = '['
execute store success score _match alu run data modify storage computer:memory stdin_char set value '['
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 91
# 0x5C = '\'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '\\'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 92
# 0x5D = ']'
execute store success score _match alu run data modify storage computer:memory stdin_char set value ']'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 93
# 0x5E = '^'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '^'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 94
# 0x5F = '_'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '_'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 95
# 0x60 = '`'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '`'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 96
# 0x61 = 'a'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'a'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 97
# 0x62 = 'b'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'b'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 98
# 0x63 = 'c'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'c'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 99
# 0x64 = 'd'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'd'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 100
# 0x65 = 'e'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'e'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 101
# 0x66 = 'f'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'f'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 102
# 0x67 = 'g'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'g'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 103
# 0x68 = 'h'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'h'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 104
# 0x69 = 'i'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'i'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 105
# 0x6A = 'j'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'j'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 106
# 0x6B = 'k'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'k'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 107
# 0x6C = 'l'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'l'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 108
# 0x6D = 'm'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'm'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 109
# 0x6E = 'n'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'n'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 110
# 0x6F = 'o'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'o'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 111
# 0x70 = 'p'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'p'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 112
# 0x71 = 'q'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'q'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 113
# 0x72 = 'r'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'r'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 114
# 0x73 = 's'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 's'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 115
# 0x74 = 't'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 't'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 116
# 0x75 = 'u'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'u'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 117
# 0x76 = 'v'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'v'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 118
# 0x77 = 'w'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'w'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 119
# 0x78 = 'x'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'x'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 120
# 0x79 = 'y'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'y'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 121
# 0x7A = 'z'
execute store success score _match alu run data modify storage computer:memory stdin_char set value 'z'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 122
# 0x7B = '{'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '{'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 123
# 0x7C = '|'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '|'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 124
# 0x7D = '}'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '}'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 125
# 0x7E = '~'
execute store success score _match alu run data modify storage computer:memory stdin_char set value '~'
data modify storage computer:memory stdin_char set from storage computer:memory stdin_backup
execute if score _match alu matches 0 run return run data modify storage computer:memory stdin_byte set value 126
