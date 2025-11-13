execute if score knowledge_damage ris.settings matches 0 run particle smoke ~ ~1.5 ~ 0.2 0.2 0.2 0.01 10
execute if score knowledge_damage ris.settings matches 0 run return run playsound entity.player.attack.nodamage neutral @a ~ ~ ~ 1 1.1

particle damage_indicator ~ ~1.5 ~ 0.2 0.2 0.2 0 1

execute if entity @s[tag=!ris.loot_trader,tag=!ris.stack_trader,tag=!ris.feature_trader,tag=!ris.structure_trader] run return run damage @s 1 ris:knowledge by @n[tag=ris.knowledge_generator] from @p[distance=..48]
# damage 1 if normal/super trader, damage 3 if special trader
damage @s 3 ris:knowledge by @n[tag=ris.knowledge_generator] from @p[distance=..48]