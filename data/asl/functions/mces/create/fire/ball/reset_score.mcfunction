tellraw @a [{"entity":"@s","nbt":"Item.tag"}]

scoreboard players reset @s ele_need_yin
scoreboard players reset @s ele_need_yang
scoreboard players reset @s ele_need_hot
scoreboard players reset @s ele_need_cold
scoreboard players reset @s ele_need_light
scoreboard players reset @s ele_need_shade
scoreboard players reset @s ele_need_sq


tag @s remove asl_reading
function asl:magic_model/reset_tm

scoreboard players remove @s ele_have_yang 3000
scoreboard players remove @s ele_have_hot 3000
scoreboard players remove @s ele_have_light 3000