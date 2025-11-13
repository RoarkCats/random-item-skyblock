execute unless entity @s[advancements={ris:ris/lets_get_crafting/maximal_thrust_trigger=true}] run advancement grant @s only ris:ris/lets_get_crafting/maximal_thrust
advancement revoke @s only ris:ris/lets_get_crafting/maximal_thrust_trigger

scoreboard players reset @s ris.firework_use