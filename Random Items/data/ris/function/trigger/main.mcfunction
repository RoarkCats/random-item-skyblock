# run as @a from main
scoreboard players enable @s ris.receive_items
scoreboard players enable @s ris.destroy_range_preview
scoreboard players enable @s[advancements={ris:alchemy/transmuted_knowledge=true}] ris.update_compendium

execute unless score @s ris.receive_items matches 0 at @s run function ris:trigger/receive_items
execute unless score @s ris.destroy_range_preview matches 0 at @s run function ris:trigger/destroy_range_preview
execute unless score @s ris.update_compendium matches 0 at @s run function ris:trigger/update_compendium