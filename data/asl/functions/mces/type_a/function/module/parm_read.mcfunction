data modify entity @s Item.tag.History append from entity @s Item.tag.TypeATemp
data remove entity @s Item.tag.TypeATemp

#参数1：速度
execute if data entity @s Item.tag.TypeA[0] run function asl:mces/type_a/read
execute store result score @s mces_parm1 run data get entity @s Item.tag.TypeATemp[0].number


function asl:mces/type_a/function/toward/ele_need_set
data modify entity @s Item.tag.History append from entity @s Item.tag.TypeATemp
data remove entity @s Item.tag.TypeATemp
