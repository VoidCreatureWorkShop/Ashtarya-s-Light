tag @e[tag=asl_magic_model] add asl_mm_ownerless
execute as @a[tag=using_coas] run function asl:magic_model/energize_check
execute as @e[tag=asl_magic_model] run function asl:magic_model/age

execute as @e[tag=asl_magic_model] at @s run function asl:magic_model/mode
execute as @a[tag=using_coas] run function asl:magic_model/energizing/main


execute as @e[tag=asl_magic_model,tag=!energizing,tag=!mces_create,tag=!mces_type_a] unless data entity @s Item.tag.Spell[0] unless data entity @s Item.tag.Create[0] unless data entity @s Item.tag.TypeA[0] unless data entity @s Item.tag.TypeATemp[0] run kill @s