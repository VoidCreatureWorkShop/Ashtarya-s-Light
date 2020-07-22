function asl:magic_model/tmsearch
execute unless entity @e[tag=asl_tmm,tag=energizing] run scoreboard players reset @s asl_ene
scoreboard players add @s asl_ene 0
execute if entity @e[tag=asl_tmm,tag=energizing] if score @s asl_ene matches 0 as @e[tag=asl_tmm,tag=energizing] run function asl:magic_model/energizing/have_ele_0
execute if entity @e[tag=asl_tmm,tag=energizing] if score @s asl_ene matches 0 run scoreboard players add @s asl_ene 1


#阴
execute if score @s asl_ene matches 1 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_yin < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_yin run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 1 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_yin <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_yin if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_yin <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 1 run function asl:magic_model/energizing/yin
#阳
execute if score @s asl_ene matches 2 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_yang < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_yang run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 2 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_yang <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_yang if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_yang <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 2 run function asl:magic_model/energizing/yang
#炽
execute if score @s asl_ene matches 3 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_hot < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_hot run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 3 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_hot <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_hot if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_hot <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 3 run function asl:magic_model/energizing/hot
#寒
execute if score @s asl_ene matches 4 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_cold < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_cold run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 4 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_cold <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_cold if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_cold <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 4 run function asl:magic_model/energizing/cold
#光
execute if score @s asl_ene matches 5 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_light < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_light run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 5 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_light <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_light if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_light <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 5 run function asl:magic_model/energizing/light
#影
execute if score @s asl_ene matches 6 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_shade < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_shade run scoreboard players add @s asl_ene 1
execute if score @s asl_ene matches 6 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_shade <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_shade if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_shade <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 6 run function asl:magic_model/energizing/shade
#灵
execute if score @s asl_ene matches 7 unless score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_sq < @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_sq run scoreboard players reset @s asl_ene
execute if score @s asl_ene matches 7 if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_have_sq <= @e[limit=1,tag=asl_tmm,tag=energizing] ele_need_sq if score @e[limit=1,tag=asl_tmm,tag=energizing] ele_staff_sq <= @e[limit=1,tag=asl_tmm,tag=energizing] asl_opp run function asl:magic_model/reset_tm
execute if score @s asl_ene matches 7 run function asl:magic_model/energizing/sq

tag @e remove asl_tmm