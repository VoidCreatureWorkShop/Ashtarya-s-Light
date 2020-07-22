scoreboard players add @s[tag=asl_mm_ownerless] asl_mm_age 1
execute if entity @s[scores={asl_mm_age=60..}] run function asl:magic_model/reset_tm
kill @s[scores={asl_mm_age=60..}]

scoreboard players reset @s[tag=!asl_mm_ownerless] asl_mm_age
