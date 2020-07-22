#
#\u00a77阴yin
#\u00a7f阳yang
#\u00a7c炽hot
#\u00a7b寒cold
#\u00a7e光light
#\u00a78影shade
#\u00a73灵sq


function vdc:module/id/load
function vdc:module/common_trigger/load
function vdc:module/mod_base/load

scoreboard objectives add asl_temp dummy
scoreboard objectives add asl dummy

scoreboard objectives add mces_parm dummy
scoreboard objectives add mces_parm1 dummy
scoreboard objectives add mces_parm2 dummy
scoreboard objectives add mces_parm3 dummy
scoreboard objectives add asl_mm_mode dummy
scoreboard objectives add asl_staff_inject trigger "注入灵方开关"
scoreboard objectives add asl_staff_react trigger "灵方反应开关"
#scoreboard objectives add asl_reactline trigger "灵方反应下限"
scoreboard objectives add asl_ir trigger "注能速率"
scoreboard objectives add asl_ir_i1 trigger "注能速率 1"
scoreboard objectives add asl_ir_i2 trigger "注能速率 2"
scoreboard objectives add asl_ir_i3 trigger "注能速率 3"
scoreboard objectives add asl_cifc trigger "容器接口数量"

scoreboard players set num3 asl 3
scoreboard players set num2 asl 2


#当所有

#
scoreboard objectives add asl_magic trigger " 法术模型选择"
scoreboard objectives add asl_tm dummy " 目标法术模型"
scoreboard objectives add asl_owner dummy " 法术模型主人"
scoreboard objectives add asl_mm_age dummy " 法术模型自动消失时间"
scoreboard objectives add asl_opp dummy "asl_outputPower"
scoreboard objectives add asl_opp_i1 dummy "asl_outputPower 1"
scoreboard objectives add asl_opp_i2 dummy "asl_outputPower 2"
scoreboard objectives add asl_opp_i3 dummy "asl_outputPower 3"
scoreboard objectives add asl_rp dummy "asl_reactionPower"
scoreboard objectives add asl_object dummy "法术模型的操作对象"
scoreboard objectives add asl_ene dummy "正在充能的元素"
scoreboard objectives add asl_sc dummy "容器储存位的数量"
scoreboard objectives add asl_us dummy "已使用的容器储存位的数量"


#
scoreboard objectives add ele_staff_yin dummy "法杖中的阴元素储量"
scoreboard objectives add ele_staff_yang dummy "法杖中的阳元素储量"
scoreboard objectives add ele_staff_hot dummy "法杖中的炽元素储量"
scoreboard objectives add ele_staff_cold dummy "法杖中的寒元素储量"
scoreboard objectives add ele_staff_light dummy "法杖中的光元素储量"
scoreboard objectives add ele_staff_shade dummy "法杖中的影元素储量"
scoreboard objectives add ele_staff_sq dummy "法杖中的灵方储量"


#
scoreboard objectives add el_vacancy_yin dummy "法杖中的阴元素储量"
scoreboard objectives add el_vacancy_yang dummy "法杖中的阳元素储量"
scoreboard objectives add el_vacancy_hot dummy "法杖中的炽元素储量"
scoreboard objectives add el_vacancy_cold dummy "法杖中的寒元素储量"
scoreboard objectives add el_vacancy_light dummy "法杖中的光元素储量"
scoreboard objectives add el_vacancy_shade dummy "法杖中的影元素储量"
scoreboard objectives add el_vacancy_sq dummy "法杖中的灵方储量"

scoreboard objectives add ele_volume_yin dummy "阴元素容量"
scoreboard objectives add ele_volume_yang dummy "阳元素容量"
scoreboard objectives add ele_volume_hot dummy "炽元素容量"
scoreboard objectives add ele_volume_cold dummy "寒元素容量"
scoreboard objectives add ele_volume_light dummy "光元素容量"
scoreboard objectives add ele_volume_shade dummy "影元素容量"
scoreboard objectives add ele_volume_sq dummy "灵方容量"



#
scoreboard objectives add ele_need_yin dummy "需要的阴元素"
scoreboard objectives add ele_need_yang dummy "需要的阳元素"
scoreboard objectives add ele_need_hot dummy "需要的炽元素"
scoreboard objectives add ele_need_cold dummy "需要的寒元素"
scoreboard objectives add ele_need_light dummy "需要的光元素"
scoreboard objectives add ele_need_shade dummy "需要的影元素"
scoreboard objectives add ele_need_sq dummy "需要的灵方"


#
scoreboard objectives add ele_have_yin dummy "拥有的阴元素"
scoreboard objectives add ele_have_yang dummy "拥有的阳元素"
scoreboard objectives add ele_have_hot dummy "拥有的炽元素"
scoreboard objectives add ele_have_cold dummy "拥有的寒元素"
scoreboard objectives add ele_have_light dummy "拥有的光元素"
scoreboard objectives add ele_have_shade dummy "拥有的影元素"
scoreboard objectives add ele_have_sq dummy "拥有的灵方"

#
scoreboard objectives add mces_c1 dummy "<数量"
scoreboard objectives add mces_c2 dummy "[数量"
scoreboard objectives add mces_c3 dummy "]数量"