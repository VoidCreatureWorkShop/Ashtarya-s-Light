tag @s add asl_tmsearch
execute as @e[tag=asl_magic_model] if score @s asl_owner = @a[limit=1,tag=asl_tmsearch] uid run tag @s add asl_tmm
tag @s remove asl_tmsearch