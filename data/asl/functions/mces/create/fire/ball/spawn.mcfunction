summon minecraft:small_fireball ~ ~ ~ {direction:[0.0d,0.0d,0.0d],id:small_fireball,Tags:["asl_new_creature","asl_object"],NoGravity:1,Item:{id:"minecraft:structure_void",Count:1}}

execute as @e[tag=asl_new_creature] run function vdc:module/id/type/uuido
scoreboard players operation @s asl_object = @e[limit=1,tag=asl_new_creature] uuido

data modify entity @e[tag=asl_new_creature,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[limit=1,tag=asl_new_creature] asl_owner = @s asl_owner
tag @e remove asl_new_creature
tag @s remove mces_create
say fireball