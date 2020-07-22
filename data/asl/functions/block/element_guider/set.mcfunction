function vdc:mod_base/starget_block
execute at @e[tag=sight_target] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {CustomName:"{\"translate\":\"asl.block.element_guider.name\"}",Small:1,Invisible:1,NoGravity:1,DisabledSlots:7637,Tags:["system","block","asl_element_guider"],Invulnerable:1}
execute at @e[tag=sight_target] align xyz positioned ~0.5 ~ ~0.5 run data merge block ~ ~ ~ {CustomName:'{"translate":"asl.block.element_guider.name"}'}
advancement revoke @s only asl:trigger/place_block/element_guider