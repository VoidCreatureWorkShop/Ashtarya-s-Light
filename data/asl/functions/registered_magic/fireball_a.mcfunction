summon snowball ^ ^ ^2.5 {Item:{id:"minecraft:structure_void",Count:1},NoGravity:1,Tags:["system","asl_magic_model","new"]}
execute as @e[tag=asl_magic_model,tag=new] run function vdc:id/uuido
execute as @e[tag=asl_magic_model,tag=new] run data modify entity @s Item.tag.Spell set value [{Charater:"<"},{Charater:"火"},{Charater:"|"},{Charater:"球"},{Charater:">"},{Charater:"["},{Charater:"前"},{Charater:"|"},{Charater:"1",number:1b},{Charater:"]"}]

#将自己的目标法术模型设置为当前模型，并将当前模型的主人设为自己。
scoreboard players operation @s asl_tm = @e[limit=1,tag=asl_magic_model,tag=new] uuido
scoreboard players operation @e[tag=asl_magic_model,tag=new] asl_owner = @s uid

tag @s add asl_casting
tag @e[tag=asl_magic_model,tag=new] remove new
scoreboard players set @s asl_magic 0
