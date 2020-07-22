scoreboard players set @s ele_need_yin 0
scoreboard players set @s ele_need_yang 3000
scoreboard players set @s ele_need_hot 3000
scoreboard players set @s ele_need_cold 0
scoreboard players set @s ele_need_light 3000
scoreboard players set @s ele_need_shade 0
scoreboard players set @s ele_need_sq 0
#
scoreboard players add @s ele_have_yin 0
scoreboard players add @s ele_have_yang 0
scoreboard players add @s ele_have_hot 0
scoreboard players add @s ele_have_cold 0
scoreboard players add @s ele_have_light 0
scoreboard players add @s ele_have_shade 0
scoreboard players add @s ele_have_sq 0

tag @s add energizing
execute if score @s ele_have_yang >= @s ele_need_yang if score @s ele_have_hot >= @s ele_need_hot if score @s ele_have_light >= @s ele_need_light run function asl:mces/create/fire/ball/spawn
execute if score @s ele_have_yang >= @s ele_need_yang if score @s ele_have_hot >= @s ele_need_hot if score @s ele_have_light >= @s ele_need_light run tag @s remove energizing
execute if score @s ele_have_yang >= @s ele_need_yang if score @s ele_have_hot >= @s ele_need_hot if score @s ele_have_light >= @s ele_need_light run data remove entity @s Item.tag.Create
execute if score @s ele_have_yang >= @s ele_need_yang if score @s ele_have_hot >= @s ele_need_hot if score @s ele_have_light >= @s ele_need_light run function asl:mces/create/fire/ball/reset_score
execute if score @s ele_have_yang >= @s ele_need_yang if score @s ele_have_hot >= @s ele_need_hot if score @s ele_have_light >= @s ele_need_light run tag @s remove mces_create
