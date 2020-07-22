#获取两种符号的数量
execute store result score @s mces_c2 if data entity @s Item.tag.TypeA[{Charater:"["}]
execute store result score @s mces_c3 if data entity @s Item.tag.TypeA[{Charater:"]"}]

#读取
execute if score @s mces_c2 > @s mces_c3 run data modify entity @s Item.tag.TypeA append from entity @s Item.tag.Spell[0]
execute if score @s mces_c2 > @s mces_c3 run data remove entity @s Item.tag.Spell[0]

execute if score @s mces_c2 > @s mces_c3 run function asl:mces/type_a

tag @s add mces_ta_readover1