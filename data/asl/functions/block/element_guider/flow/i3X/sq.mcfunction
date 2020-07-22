
execute unless score @s asl_ir_i3 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_sq1 += @s asl_ir_i3
execute unless score @s asl_ir_i3 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i3 run tag @s add ele_sq_changed
execute unless score @s asl_ir_i3 > @s el_vacancy_sq if score @s ele_cont_sq >= @s asl_ir_i3 run scoreboard players operation @s ele_cont_sq -= @s asl_ir_i3
execute store result score @s el_vacancy_sq run scoreboard players operation @s ele_volume_sq -= @s ele_cont_sq1
execute store result score @s ele_volume_sq run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.sq 1000