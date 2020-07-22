#
execute as @a run function asl:attributes_cal/ele_storages
#

function asl:recipes/main
function asl:magic_model/main
execute as @a run function asl:attributes_cal/base

scoreboard players enable @a asl_magic

scoreboard players enable @a asl_staff_inject
scoreboard players enable @a asl_staff_react
execute as @a run function asl:staff/main
title @a[nbt={SelectedItem:{tag:{id:"asl:staff"}}}] actionbar [{"score":{"name":"*","objective":"ele_staff_yin"},"color":"gray"}," ",{"score":{"name":"*","objective":"ele_staff_yang"},"color":"white"}," ",{"score":{"name":"*","objective":"ele_staff_hot"},"color":"red"}," ",{"score":{"name":"*","objective":"ele_staff_cold"},"color":"aqua"}," ",{"score":{"name":"*","objective":"ele_staff_light"},"color":"yellow"}," ",{"score":{"name":"*","objective":"ele_staff_shade"},"color":"dark_gray"}," ",{"score":{"name":"*","objective":"ele_staff_sq"},"color":"blue"}]


execute as @e[tag=asl_magic_model] at @s run function asl:mces/main


#
function asl:block/main

#
execute as @a[nbt={SelectedItem:{tag:{id:"asl:staff"}}}] run function asl:attributes_cal/ele_storeback
#
clear @a structure_void{id:"asl:ui_image"}