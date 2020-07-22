execute store result score @s ele_volume_yin run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.yin 1000
execute store result score @s ele_volume_yang run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.yang 1000
execute store result score @s ele_volume_hot run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.hot 1000
execute store result score @s ele_volume_cold run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.cold 1000
execute store result score @s ele_volume_light run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.light 1000
execute store result score @s ele_volume_shade run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.shade 1000
execute store result score @s ele_volume_sq run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.soulquantum 1000


execute store result score @s ele_cont_yin1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"yin"}].Amount 1000
execute store result score @s ele_cont_yang1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"yang"}].Amount 1000
execute store result score @s ele_cont_hot1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"hot"}].Amount 1000
execute store result score @s ele_cont_cold1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"cold"}].Amount 1000
execute store result score @s ele_cont_light1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"light"}].Amount 1000
execute store result score @s ele_cont_shade1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"shade"}].Amount 1000
execute store result score @s ele_cont_sq1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Storages[{Name:"soulquantum"}].Amount 1000

execute store result score @s el_vacancy_yin run scoreboard players operation @s ele_volume_yin -= @s ele_cont_yin1
execute store result score @s el_vacancy_yang run scoreboard players operation @s ele_volume_yang -= @s ele_cont_yang1
execute store result score @s el_vacancy_hot run scoreboard players operation @s ele_volume_hot -= @s ele_cont_hot1
execute store result score @s el_vacancy_cold run scoreboard players operation @s ele_volume_cold -= @s ele_cont_cold1
execute store result score @s el_vacancy_light run scoreboard players operation @s ele_volume_light -= @s ele_cont_light1
execute store result score @s el_vacancy_shade run scoreboard players operation @s ele_volume_shade -= @s ele_cont_shade1
execute store result score @s el_vacancy_sq run scoreboard players operation @s ele_volume_sq -= @s ele_cont_sq1

execute store result score @s ele_volume_yin run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.yin 1000
execute store result score @s ele_volume_yang run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.yang 1000
execute store result score @s ele_volume_hot run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.hot 1000
execute store result score @s ele_volume_cold run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.cold 1000
execute store result score @s ele_volume_light run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.light 1000
execute store result score @s ele_volume_shade run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.shade 1000
execute store result score @s ele_volume_sq run data get block ~ ~ ~ Items[{Slot:4b}].tag.Volumes.soulquantum 1000
