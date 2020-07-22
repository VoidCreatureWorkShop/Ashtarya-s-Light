#
#来源的容量不够，或者储存空间已满时触发下一个函数。
#           ↓容量已满                                       ↓储量不够
execute if score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/shade
#           ↓容量已满                                       ↓储量够
execute if score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light >= @s asl_ir_i3 run function asl:block/element_guider/flow/i3/shade
#           ↓容量不满                                       ↓而且储量还不够
execute unless score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/shade

#

execute unless score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_light1 += @s asl_ir_i3
execute unless score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light >= @s asl_ir_i3 run tag @s add ele_light_changed
execute unless score @s asl_ir_i3 > @s el_vacancy_light if score @s ele_cont_light >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_light -= @s asl_ir_i3
execute store result score @s el_vacancy_light run scoreboard players operation @s ele_volume_light -= @s ele_cont_light1
execute store result score @s ele_volume_light run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.light 1000