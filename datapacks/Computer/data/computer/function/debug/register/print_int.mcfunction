# Debug print integer register $(reg) (e.g. x0, x10, x31)
$data modify storage computer:debug val set from storage computer:cpu $(reg)
$data modify storage computer:debug type set value "$(reg)"
function computer:debug/pre_debug_read_32
function computer:debug/printf