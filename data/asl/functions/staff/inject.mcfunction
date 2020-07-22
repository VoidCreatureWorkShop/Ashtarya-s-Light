execute unless score @s ele_staff_sq >= @s ele_volume_sq unless score @s soulquantum <= @s asl_rp run tag @s add asl_inject_pass
scoreboard players operation @s[tag=asl_inject_pass] soulquantum -= @s asl_rp
scoreboard players operation @s[tag=asl_inject_pass] ele_staff_sq += @s asl_rp
tag @s remove asl_inject_pass