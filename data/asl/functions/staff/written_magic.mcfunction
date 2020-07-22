summon snowball ^ ^ ^2.5 {Item:{id:"minecraft:structure_void",Count:1},NoGravity:1,Tags:["system","asl_magic_model","new"]}
function vdc:id/uuido
data modify entity @e[tag=asl_magic_model,tag=new,limit=1] Item.tag.Spell set from entity @s Inventory[{Slot:-106b}].tag.Spell
scoreboard players operation @s asl_tm = @e[limit=1,tag=asl_magic_model,tag=new] uuido
scoreboard players operation @e[tag=asl_magic_model,tag=new] asl_owner = @s uid


tag @s add asl_casting
tag @e[tag=asl_magic_model,tag=new] remove new