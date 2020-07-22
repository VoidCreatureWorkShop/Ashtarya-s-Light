function asl:block/element_guider/destroy
function asl:block/element_guider/get_rate
function asl:block/element_guider/get_vacancies
function asl:block/element_guider/get_used_storages


function asl:block/element_guider/flow/yin

function asl:block/element_guider/storeback/main


#GUI Image
#Rejection
#
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag{id:"asl:ui_image"} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.isForeignItem set value 1b
execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b}].tag{id:"asl:ui_image"} run function asl:block/element_guider/reject
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag{id:"asl:ui_image"} run replaceitem block ~ ~ ~ container.0 minecraft:structure_void{id:"asl:ui_image",CustomModelData:12010008}
#
execute unless data block ~ ~ ~ Items[{Slot:3b}].tag{id:"asl:ui_image"} run data modify block ~ ~ ~ Items[{Slot:3b}].tag.isForeignItem set value 1b
execute if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}].tag{id:"asl:ui_image"} run function asl:block/element_guider/reject
execute unless data block ~ ~ ~ Items[{Slot:3b}].tag{id:"asl:ui_image"} run replaceitem block ~ ~ ~ container.3 minecraft:structure_void{id:"asl:ui_image",CustomModelData:12010000}
#
execute unless data block ~ ~ ~ Items[{Slot:5b}].tag{id:"asl:ui_image"} run data modify block ~ ~ ~ Items[{Slot:5b}].tag.isForeignItem set value 1b
execute if data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b}].tag{id:"asl:ui_image"} run function asl:block/element_guider/reject
execute unless data block ~ ~ ~ Items[{Slot:5b}].tag{id:"asl:ui_image"} run replaceitem block ~ ~ ~ container.5 minecraft:structure_void{id:"asl:ui_image",CustomModelData:12010000}

#
execute unless data block ~ ~ ~ Items[{Slot:7b}].tag{id:"asl:ui_image"} run data modify block ~ ~ ~ Items[{Slot:7b}].tag.isForeignItem set value 1b
execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b}].tag{id:"asl:ui_image"} run function asl:block/element_guider/reject
execute unless data block ~ ~ ~ Items[{Slot:7b}].tag{id:"asl:ui_image"} run replaceitem block ~ ~ ~ container.7 minecraft:structure_void{id:"asl:ui_image",CustomModelData:12010000}

#interface1
data modify block ~ ~ ~ Items[{Slot:7b}].tag.CustomModelData set value 12010000
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/get_storages_i1
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/flow/i1/yin
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/storeback/i1/main
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/get_vacancies

#interface2
data modify block ~ ~ ~ Items[{Slot:3b}].tag.CustomModelData set value 12010000
execute if score @s asl_cifc matches 2.. run function asl:block/element_guider/get_storages_i2
execute if score @s asl_cifc matches 2.. run function asl:block/element_guider/flow/i2/yin
execute if score @s asl_cifc matches 2.. run function asl:block/element_guider/storeback/i2/main
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/get_vacancies

#interface3
data modify block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData set value 12010000
execute if score @s asl_cifc matches 3.. run function asl:block/element_guider/get_storages_i3
execute if score @s asl_cifc matches 3.. run function asl:block/element_guider/flow/i3/yin
execute if score @s asl_cifc matches 3.. run function asl:block/element_guider/storeback/i3/main
execute if score @s asl_cifc matches 1.. run function asl:block/element_guider/get_vacancies
