tag @s add asl_tmsearch
execute as @e[tag=asl_magic_model] if score @s uuido = @a[limit=1,tag=asl_tmsearch] asl_tm run tag @s remove asl_mm_ownerless
tag @s remove asl_tmsearch