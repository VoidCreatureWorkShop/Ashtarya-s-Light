execute if score @s asl_us >= @s asl_sc if score @s ele_cont_sq1 matches ..0 run tag @s add asl_full

execute unless score @s[tag=!asl_full] asl_ir_i1 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i1 run data modify block ~ ~ ~ Items[{Slot:7b}].tag.CustomModelData set value 12010111
execute unless score @s[tag=!asl_full] asl_ir_i1 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i1 run scoreboard players operation @s ele_cont_sq1 += @s asl_ir_i1
execute unless score @s[tag=!asl_full] asl_ir_i1 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i1 run tag @s add ele_sq_changed
execute unless score @s[tag=!asl_full] asl_ir_i1 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i1 run scoreboard players operation @s ele_cont_sq -= @s asl_ir_i1
execute store result score @s el_vacancy_sq run scoreboard players operation @s ele_volume_sq -= @s ele_cont_sq1
execute store result score @s ele_volume_sq run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.sq 1000
tag @s remove asl_full