# run if any special item to disable their use by default until allowed (dispenser confirmed)
advancement grant @p[distance=..16,gamemode=!spectator,advancements={ris:special/customized/redstone_activated=false}] only ris:special/customized/redstone_activated

execute if score dispensable_special_items ris.settings matches 1 run return run scoreboard players set #mode ris.timer 2
execute if score dispensable_special_items ris.settings matches 2 if items entity @s contents #ris:custom_items_no_placing run return run scoreboard players set #mode ris.timer 2
execute if score dispensable_special_items ris.settings matches 3 if items entity @s contents #ris:custom_items_no_world_gen run return run scoreboard players set #mode ris.timer 2