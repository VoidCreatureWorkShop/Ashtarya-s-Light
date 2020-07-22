#
#来源的容量不够，或者储存空间已满时触发下一个函数。
#           ↓容量已满                                       ↓储量不够
execute if score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/sq
#           ↓容量已满                                       ↓储量够
execute if score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade >= @s asl_ir_i3 run function asl:block/element_guider/flow/i3/sq
#           ↓容量不满                                       ↓而且储量还不够
execute unless score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/sq

#

execute unless score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_shade1 += @s asl_ir_i3
execute unless score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade >= @s asl_ir_i3 run tag @s add ele_shade_changed
execute unless score @s asl_ir_i3 > @s el_vacancy_shade if score @s ele_cont_shade >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_shade -= @s asl_ir_i3
execute store result score @s el_vacancy_shade run scoreboard players operation @s ele_volume_shade -= @s ele_cont_shade1
execute store result score @s ele_volume_shade run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.shade 1000