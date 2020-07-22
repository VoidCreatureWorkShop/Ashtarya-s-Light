#提取下一个字符
execute as @s[tag=!energizing,tag=!asl_reading] run data modify entity @s Item.tag.Check set from entity @s Item.tag.Spell[0]
execute as @s[tag=!energizing,tag=!asl_reading] run data remove entity @s Item.tag.Spell[0]
#


scoreboard players add @s mces_c1 0

#Create
execute if data entity @s[scores={mces_c1=0..},tag=!energizing] Item.tag.Check{Charater:"<"} run tag @s add mces_create
execute if data entity @s[scores={mces_c1=0..},tag=!energizing] Item.tag.Check{Charater:"<"} run tag @s add asl_reading
execute if data entity @s[scores={mces_c1=0..},tag=!energizing] Item.tag.Check{Charater:"<"} run data modify entity @s Item.tag.Create prepend from entity @s Item.tag.Check
execute if data entity @s[scores={mces_c1=0..},tag=!energizing] Item.tag.Check{Charater:"<"} run function asl:mces/create
execute if data entity @s[scores={mces_c1=0..},tag=!energizing] Item.tag.Check{Charater:"<"} run data remove entity @s Item.tag.Check
execute if entity @s[tag=mces_create] run function asl:mces/create/check

#
execute if data entity @s[tag=!energizing] Item.tag.Check{Charater:"["} run tag @s add mces_type_a
execute if data entity @s[tag=!energizing] Item.tag.Check{Charater:"["} run tag @s add asl_reading
execute if data entity @s[tag=!energizing] Item.tag.Check{Charater:"["} run data modify entity @s Item.tag.TypeA prepend from entity @s Item.tag.Check
execute if data entity @s[tag=!energizing] Item.tag.Check{Charater:"["} run function asl:mces/type_a
execute if data entity @s[tag=!energizing] Item.tag.Check{Charater:"["} run data remove entity @s Item.tag.Check
execute if score @s[tag=mces_ta_readover1] mces_c2 = @s mces_c3 run data modify entity @s Item.tag.TypeA[-1].isOver set value 1b
execute if score @s[tag=mces_ta_readover1] mces_c2 = @s mces_c3 run function asl:mces/type_a/check
#TypeA的函数充能检测
execute as @s[tag=mces_func_toward] run function asl:mces/type_a/function/toward/ele_check
#execute as @s[tag=mces_type_a] run 
