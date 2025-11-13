# run from main if compendium_auto_revise enabled
scoreboard players remove @a[scores={ris.auto_revise_cooldown=1..}] ris.auto_revise_cooldown 1

execute as @a unless score @s ris.auto_revise_cooldown matches 1.. if items entity @s weapon.* written_book[custom_data~{ris:{compendium:1b}}] at @s run function ris:alchemy/book/update_book