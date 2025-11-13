execute if items entity @s weapon.mainhand written_book[custom_data~{ris:{compendium:1b}}] run item modify entity @s weapon.mainhand ris:alchemy_book/book
execute if items entity @s weapon.offhand written_book[custom_data~{ris:{compendium:1b}}] run item modify entity @s weapon.offhand ris:alchemy_book/book

execute unless score compendium_auto_revise ris.settings matches 1 run playsound entity.villager.work_cartographer player @a ~ ~ ~ 1 1.1
execute unless score compendium_auto_revise ris.settings matches 1 run playsound item.book.page_turn player @a ~ ~ ~ 1 0.9

execute if score compendium_auto_revise ris.settings matches 1 run scoreboard players set @s ris.auto_revise_cooldown 11
# updating is currently about 1.6ms lag (incomplete, lacking alchemy item pages)