#
#来源的容量不够，或者储存空间已满时触发下一个函数。
#           ↓容量已满                                       ↓储量不够
execute if score @s asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot < @s asl_ir_i2 run function asl:block/element_guider/flow/i2/cold
#           ↓容量已满                                       ↓储量够
execute if score @s asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i2 run function asl:block/element_guider/flow/i2/cold
#           ↓容量不满                                       ↓而且储量还不够
execute unless score @s asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot < @s asl_ir_i2 run function asl:block/element_guider/flow/i2/cold

execute if score @s asl_us >= @s asl_sc if score @s ele_cont_hot1 matches ..0 run tag @s add asl_full

#
execute unless score @s[tag=!asl_full] asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i2 run data modify block ~ ~ ~ Items[{Slot:3b}].tag.CustomModelData set value 12010124
execute unless score @s[tag=!asl_full] asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i2 run scoreboard players operation @s ele_cont_hot1 += @s asl_ir_i2
execute unless score @s[tag=!asl_full] asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i2 run tag @s add ele_hot_changed
execute unless score @s[tag=!asl_full] asl_ir_i2 > @s el_vacancy_hot if score @s ele_cont_hot >= @s asl_ir_i2 run scoreboard players operation @s ele_cont_hot -= @s asl_ir_i2
execute store result score @s el_vacancy_hot run scoreboard players operation @s ele_volume_hot -= @s ele_cont_hot1
execute store result score @s ele_volume_hot run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.hot 1000
tag @s remove asl_full