#
#来源的容量不够，或者储存空间已满时触发下一个函数。
#           ↓容量已满                                       ↓储量不够
execute if score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/yang
#           ↓容量已满                                       ↓储量够
execute if score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin >= @s asl_ir_i3 run function asl:block/element_guider/flow/i3/yang
#           ↓容量不满                                       ↓而且储量还不够
execute unless score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/yang

#

execute unless score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin > @s asl_ir_i3 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData set value 12010132
execute unless score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_yin1 += @s asl_ir_i3
execute unless score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin >= @s asl_ir_i3 run tag @s add ele_yin_changed
execute unless score @s asl_ir_i3 > @s el_vacancy_yin if score @s ele_cont_yin >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_yin -= @s asl_ir_i3
execute store result score @s el_vacancy_yin run scoreboard players operation @s ele_volume_yin -= @s ele_cont_yin1
execute store result score @s ele_volume_yin run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.yin 1000