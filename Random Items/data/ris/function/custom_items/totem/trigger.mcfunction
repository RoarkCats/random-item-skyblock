advancement revoke @s only ris:void_totem_trigger

advancement grant @s[advancements={ris:void_totem=false},gamemode=!spectator] only ris:void_totem


execute if score void_totems ris.settings matches 1 if entity @s[gamemode=!spectator] run function ris:custom_items/totem/totem