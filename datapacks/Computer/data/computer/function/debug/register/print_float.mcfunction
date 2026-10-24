# Debug print float register $(reg) (e.g. f0, f10, f31)
$data modify storage computer:debug val set from storage computer:cpu $(reg)
$data modify storage computer:debug type set value "$(reg)"
function computer:debug/pre_debug_read_32
function computer:debug/printff