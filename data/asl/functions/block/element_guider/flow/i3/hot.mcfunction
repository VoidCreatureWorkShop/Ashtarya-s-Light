#
#来源的容量不够，或者储存空间已满时触发下一个函数。
#           ↓容量已满                                       ↓储量不够
execute if score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/cold
#           ↓容量已满                                       ↓储量够
execute if score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i3 run function asl:block/element_guider/flow/i3/cold
#           ↓容量不满                                       ↓而且储量还不够
execute unless score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot < @s asl_ir_i3 run function asl:block/element_guider/flow/i3/cold

#
execute unless score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i3 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData set value 12010134
execute unless score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_hot1 += @s asl_ir_i3
execute unless score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i3 run tag @s add ele_hot_changed
execute unless score @s asl_ir_i3 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_hot -= @s asl_ir_i3
execute store result score @s el_vacancy_hot run scoreboard players operation @s ele_volume_hot -= @s ele_cont_hot1
execute store result score @s ele_volume_hot run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.hot 1000