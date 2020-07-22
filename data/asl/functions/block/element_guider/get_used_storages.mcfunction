execute store result score @s asl_sc run data get block ~ ~ ~ Items[{Slot:4b}].tag.containerAttributes.StorageCount

scoreboard players reset @s asl_us
execute if score @s asl_sc matches 0 run scoreboard players set @s asl_sc 1024
execute if score @s ele_cont_yin1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_yang1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_hot1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_cold1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_light1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_shade1 matches 1.. run scoreboard players add @s asl_us 1
execute if score @s ele_cont_sq1 matches 1.. run scoreboard players add @s asl_us 1




