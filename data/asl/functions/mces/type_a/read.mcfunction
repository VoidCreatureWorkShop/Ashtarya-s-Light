data modify entity @s Item.tag.TypeATemp append from entity @s Item.tag.TypeA[0]
data remove entity @s Item.tag.TypeA[0]

#check
#execute if data entity @s Item.tag.Create[{Charater:"["}] run function asl:mces/type_a/func_type

#execute unless data entity @s Item.tag.TypeATemp[{Charater:"|"}] unless data entity @s Item.tag.TypeATemp[{Charater:"]",isOver:1b}] run scoreboard players add @s mces_parm 1

execute unless data entity @s Item.tag.TypeATemp[{Charater:"|"}] unless data entity @s Item.tag.TypeATemp[{Charater:"]",isOver:1b}] run function asl:mces/type_a/read
