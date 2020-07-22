
scoreboard players reset @s asl_opp_i1
scoreboard players reset @s asl_opp_i2
scoreboard players reset @s asl_opp_i3
#inject rate
scoreboard players reset @s asl_ir
#interface count
scoreboard players reset @s asl_cifc

execute store result score @s asl_cifc run data get block ~ ~ ~ Items[{Slot:4b}].tag.staffAttributes.interfaceCount
execute store result score @s temp1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.containerAttributes.interfaceCount
scoreboard players operation @s asl_cifc > @s temp1


execute store result score @s[scores={asl_cifc=1..}] asl_opp_i1 run data get block ~ ~ ~ Items[{Slot:1b}].tag.staffAttributes.outputPower 50
execute store result score @s[scores={asl_cifc=2..}] asl_opp_i2 run data get block ~ ~ ~ Items[{Slot:6b}].tag.staffAttributes.outputPower 50
execute store result score @s[scores={asl_cifc=3..}] asl_opp_i3 run data get block ~ ~ ~ Items[{Slot:8b}].tag.staffAttributes.outputPower 50

execute store result score @s[scores={asl_cifc=1..}] temp1 run data get block ~ ~ ~ Items[{Slot:1b}].tag.containerAttributes.outputPower 50
execute store result score @s[scores={asl_cifc=2..}] temp2 run data get block ~ ~ ~ Items[{Slot:6b}].tag.containerAttributes.outputPower 50
execute store result score @s[scores={asl_cifc=3..}] temp3 run data get block ~ ~ ~ Items[{Slot:8b}].tag.containerAttributes.outputPower 50

scoreboard players operation @s[scores={asl_cifc=1..}] asl_opp_i1 > @s temp1
scoreboard players operation @s[scores={asl_cifc=2..}] asl_opp_i2 > @s temp2
scoreboard players operation @s[scores={asl_cifc=3..}] asl_opp_i3 > @s temp3

execute store result score @s asl_ir_i1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.staffAttributes.injectRate_i1 50
execute store result score @s asl_ir_i2 run data get block ~ ~ ~ Items[{Slot:4b}].tag.staffAttributes.injectRate_i2 50
execute store result score @s asl_ir_i3 run data get block ~ ~ ~ Items[{Slot:4b}].tag.staffAttributes.injectRate_i3 50
execute store result score @s temp1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.containerAttributes.injectRate_i1 50
execute store result score @s temp2 run data get block ~ ~ ~ Items[{Slot:4b}].tag.containerAttributes.injectRate_i2 50
execute store result score @s temp3 run data get block ~ ~ ~ Items[{Slot:4b}].tag.containerAttributes.injectRate_i3 50



scoreboard players operation @s asl_ir_i1 > @s temp1
scoreboard players operation @s asl_ir_i2 > @s temp2
scoreboard players operation @s asl_ir_i3 > @s temp3

scoreboard players operation @s asl_ir_i1 < @s asl_opp_i1
scoreboard players operation @s asl_ir_i2 < @s asl_opp_i2
scoreboard players operation @s asl_ir_i3 < @s asl_opp_i3



