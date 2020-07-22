function asl:magic_model/owner_search
tag @s add asl_temp
execute as @a[tag=asl_towner] at @s anchored eyes positioned ^ ^ ^3 as @e[tag=asl_temp] run tp @s ~ ~ ~ ~ ~
tag @s add asl_temp
tag @a remove owner_search