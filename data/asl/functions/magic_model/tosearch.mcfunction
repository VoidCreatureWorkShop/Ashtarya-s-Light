#目标对象寻找，记得加as
tag @s add asl_tmsearch
execute as @e[tag=asl_object] if score @s uuido = @e[limit=1,tag=asl_tmsearch] asl_object run tag @s add asl_to
tag @s remove asl_tmsearch