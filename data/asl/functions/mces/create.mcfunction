data modify entity @s Item.tag.Create append from entity @s Item.tag.Spell[0]
data remove entity @s Item.tag.Spell[0]

#check
#execute if data entity @s Item.tag.Create[{Charater:">"}] run function asl:mces/create/check

execute unless data entity @s Item.tag.Create[{Charater:">"}] run function asl:mces/create


