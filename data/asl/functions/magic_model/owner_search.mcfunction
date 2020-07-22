tag @s add asl_tmsearch
execute as @a if score @s uid = @e[limit=1,tag=asl_tmsearch] asl_owner run tag @s add asl_towner
tag @s remove asl_tmsearch