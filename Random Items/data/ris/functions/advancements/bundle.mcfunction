scoreboard players reset @s ris.use_bundle

execute unless entity @s[advancements={ris:unbundled=true}] run advancement grant @s only ris:unbundled

execute unless entity @s[advancements={ris:item_vomit=true}] store result score #temp ris.use_bundle if entity @e[type=item,distance=..2,nbt={Age:0s}]
execute unless entity @s[advancements={ris:item_vomit=true}] if score #temp ris.use_bundle matches 64.. run advancement grant @s only ris:item_vomit