execute unless score @s ris.update_compendium matches 0 if score compendium_auto_revise ris.settings matches 1 run tellraw @s[advancements={ris:alchemy/transmuted_knowledge=true}] [{"text":"Note: ","color":"yellow"},{"text":"Manual revision generally not necessary with Compendium Auto Revise enabled (updates compendium contents)","italic":true,"color":"gray"}]
scoreboard players set @s ris.update_compendium 0

execute if items entity @s weapon.* written_book[custom_data~{ris:{compendium:1b}}] run function ris:alchemy/book/update_book