execute if entity @n[type=area_effect_cloud,distance=..0.5,tag=ris.clone_paste_fx] run return 0
summon area_effect_cloud ~ ~ ~ {Duration:50,Tags:["ris.clone_paste_fx"]}
# only do fx once per X ticks

playsound block.fire.extinguish block @a ~ ~ ~ 0.2 1
playsound entity.armor_stand.hit block @a ~ ~ ~ 0.8 0.6

particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0 10
particle dust{color:[1,0,0],scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0 10