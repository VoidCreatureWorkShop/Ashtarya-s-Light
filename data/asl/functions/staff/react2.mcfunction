scoreboard players remove @s asl_staff_react 1

scoreboard players operation @s ele_staff_sq -= @s asl_rp

scoreboard players operation @s el_vacancy_yin = @s ele_volume_yin
scoreboard players operation @s el_vacancy_yang = @s ele_volume_yang
scoreboard players operation @s el_vacancy_hot = @s ele_volume_hot
scoreboard players operation @s el_vacancy_cold = @s ele_volume_cold
scoreboard players operation @s el_vacancy_light = @s ele_volume_light
scoreboard players operation @s el_vacancy_shade = @s ele_volume_shade
scoreboard players operation @s el_vacancy_sq = @s ele_volume_sq

scoreboard players operation @s el_vacancy_yin -= @s ele_staff_yin
scoreboard players operation @s el_vacancy_yang -= @s ele_staff_yang
scoreboard players operation @s el_vacancy_hot -= @s ele_staff_hot
scoreboard players operation @s el_vacancy_cold -= @s ele_staff_cold
scoreboard players operation @s el_vacancy_light -= @s ele_staff_light
scoreboard players operation @s el_vacancy_shade -= @s ele_staff_shade
scoreboard players operation @s el_vacancy_sq -= @s ele_staff_sq

execute unless score @s el_vacancy_yin < @s asl_rp run scoreboard players operation @s ele_staff_yin += @s asl_rp
execute unless score @s el_vacancy_yang < @s asl_rp run scoreboard players operation @s ele_staff_yang += @s asl_rp
execute unless score @s el_vacancy_hot < @s asl_rp run scoreboard players operation @s ele_staff_hot += @s asl_rp
execute unless score @s el_vacancy_cold < @s asl_rp run scoreboard players operation @s ele_staff_cold += @s asl_rp
execute unless score @s el_vacancy_light < @s asl_rp run scoreboard players operation @s ele_staff_light += @s asl_rp
execute unless score @s el_vacancy_shade < @s asl_rp run scoreboard players operation @s ele_staff_shade += @s asl_rpp

#
#
execute if score @s soulquantum < @s asl_rp run scoreboard players reset @s asl_staff_react
scoreboard players reset @s[nbt=!{SelectedItem:{tag:{id:"asl:staff"}}}] asl_staff_react
execute if score @s el_vacancy_yin matches ..0 if score @s el_vacancy_yang matches ..0 if score @s el_vacancy_hot matches ..0 if score @s el_vacancy_cold matches ..0 if score @s el_vacancy_light matches ..0 if score @s el_vacancy_shade matches ..0 run scoreboard players reset @s asl_staff_react
