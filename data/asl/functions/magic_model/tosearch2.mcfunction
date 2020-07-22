#找主人玩家
tag @s add asl_tmsearch
execute as @a if score @s uid = @e[tag=asl_tmsearch,limit=1] asl_owner run tag @s add asl_tmm
tag @s remove asl_tmsearch