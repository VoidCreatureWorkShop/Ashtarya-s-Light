scoreboard players set @s ele_need_yin 0
scoreboard players set @s ele_need_yang 500
scoreboard players set @s ele_need_hot 500
scoreboard players set @s ele_need_cold 0
scoreboard players set @s ele_need_light 0
scoreboard players set @s ele_need_shade 0
scoreboard players set @s ele_need_sq 0
#
scoreboard players operation @s ele_need_yang *= @s mces_parm1
scoreboard players operation @s ele_need_hot *= @s mces_parm1

scoreboard players add @s ele_need_yang 0
scoreboard players add @s ele_need_hot 0



scoreboard players add @s ele_have_yin 0
scoreboard players add @s ele_have_yang 0
scoreboard players add @s ele_have_hot 0
scoreboard players add @s ele_have_cold 0
scoreboard players add @s ele_have_light 0
scoreboard players add @s ele_have_shade 0
scoreboard players add @s ele_have_sq 0

tag @s add energizing