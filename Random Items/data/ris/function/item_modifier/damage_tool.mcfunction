advancement revoke @s only ris:damage_tool_trigger

execute unless data entity @s SelectedItem.components.minecraft:custom_data.ris.components[{has_durability:1b}] run return 0
# manually damage custom component tools used to attack mobs (technically also works on held armor)
execute store result score #temp ris.timer run data get entity @s SelectedItem.components.minecraft:max_damage

scoreboard players operation #temp1 ris.timer = #1000000 ris.timer
scoreboard players operation #temp1 ris.timer /= #temp ris.timer
scoreboard players add #temp1 ris.timer 1

item modify entity @s weapon.mainhand {"function":"set_damage","damage":{"type":"score","target":{"type":"fixed","name":"#temp1"},"score":"ris.timer","scale":-0.000001},"add":true}

execute unless predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"weapon.mainhand":{"predicates":{"minecraft:damage":{"durability":0}}}}}} run return 1
# break item if at 0 durability
execute positioned ~ ~1.2 ~ run function ris:alchemy/break_particle with entity @s SelectedItem
item modify entity @s weapon.mainhand {"function":"set_count","count":-1,"add":true}
playsound entity.item.break player @a ~ ~ ~ 1 0.9