
scoreboard players reset @s ele_cont_yin
scoreboard players reset @s ele_cont_yang
scoreboard players reset @s ele_cont_hot
scoreboard players reset @s ele_cont_cold
scoreboard players reset @s ele_cont_light
scoreboard players reset @s ele_cont_shade
scoreboard players reset @s ele_cont_sq

execute store result score @s ele_cont_yin run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"yin"}].Amount 1000
execute store result score @s ele_cont_yang run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"yang"}].Amount 1000
execute store result score @s ele_cont_hot run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"hot"}].Amount 1000
execute store result score @s ele_cont_cold run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"cold"}].Amount 1000
execute store result score @s ele_cont_light run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"light"}].Amount 1000
execute store result score @s ele_cont_shade run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"shade"}].Amount 1000
execute store result score @s ele_cont_sq run data get block ~ ~ ~ Items[{Slot:8b}].tag.Storages[{Name:"soulquantum"}].Amount 1000
