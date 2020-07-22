function asl:magic_model/tosearch
#


function vdc:mod_base/vec_toward
#scoreboard players operation @s temp1 *= @s mces_parm1
#scoreboard players operation @s temp2 *= @s mces_parm1
#scoreboard players operation @s temp3 *= @s mces_parm1

scoreboard players operation @e[tag=asl_to] temp1 = @s temp1
scoreboard players operation @e[tag=asl_to] temp2 = @s temp2
scoreboard players operation @e[tag=asl_to] temp3 = @s temp3

execute as @e[tag=asl_to] run function vdc:mod_base/vec_s_mot

#execute store result entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp int 0.25 run scoreboard players get @s temp1
#execute store result score @e[tag=asl_to] temp1 run data get entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp 1
#execute store result entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp int 0.25 run scoreboard players get @s temp2
#execute store result score @e[tag=asl_to] temp2 run data get entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp 1
#execute store result entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp int 0.25 run scoreboard players get @s temp3
#execute store result score @e[tag=asl_to] temp3 run data get entity @e[limit=1,tag=vdc] ArmorItems[0].tag.Temp 1




execute as @e[tag=asl_to] run function vdc:mod_base/vec_s_drc
tag @e remove asl_to
tag @s remove mces_func_toward
tag @s remove energizing
tag @s remove mces_type_a

scoreboard players remove @s ele_have_yang 500
scoreboard players remove @s ele_have_hot 500