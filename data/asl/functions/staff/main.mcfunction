scoreboard players add @s asl_magic 0
#execute if score @s asl_magic matches 0 
#注册法术使用
execute unless score @s[tag=using_coas,nbt={SelectedItem:{tag:{id:"asl:staff"}}}] asl_magic matches 0 run function asl:registered_magic/registered_magic_model_comparison

#

execute if score @s[tag=!asl_casting] asl_magic matches 0 as @s[tag=using_coas,nbt={SelectedItem:{tag:{id:"asl:staff"}},Inventory:[{Slot:-106b,tag:{id:"asl:method_paper"}}]}] at @s anchored eyes run function asl:staff/written_magic




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
#
function asl:attributes_cal/ele_volume
execute if score @s asl_staff_inject matches 1.. run function asl:staff/inject
execute if score @s asl_staff_react matches 1.. unless score @s ele_staff_sq < @s asl_rp unless score @s el_vacancy_yin < @s asl_rp unless score @s el_vacancy_yang < @s asl_rp unless score @s el_vacancy_hot < @s asl_rp unless score @s el_vacancy_cold < @s asl_rp unless score @s el_vacancy_light < @s asl_rp unless score @s el_vacancy_shade < @s asl_rp run function asl:staff/react
execute if score @s asl_staff_react matches 2.. unless score @s ele_staff_sq < @s asl_rp run function asl:staff/react2