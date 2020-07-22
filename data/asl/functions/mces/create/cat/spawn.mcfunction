#生成实体
summon minecraft:cat ~ ~ ~ {Tags:["asl_new_creature","asl_object"]}


#为生成的实体添加uuido并将其设为操作对象
execute as @e[tag=asl_new_creature] run function vdc:module/id/type/uuido
scoreboard players operation @s asl_object = @e[limit=1,tag=asl_new_creature] uuido


#同步朝向、施术者和收尾
data modify entity @e[tag=asl_new_creature,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[limit=1,tag=asl_new_creature] asl_owner = @s asl_owner

tag @e remove asl_new_creature
tag @s remove mces_create