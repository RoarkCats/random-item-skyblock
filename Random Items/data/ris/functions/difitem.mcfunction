execute if score give item_timer >= give_item item_timer run forceload add 0 0
execute if score give item_timer >= give_item item_timer run setblock 0 255 0 chest


execute if score give item_timer >= give_item item_timer run execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute if score give item_timer >= give_item item_timer run execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute if score give item_timer >= give_item item_timer run execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute if score give item_timer >= give_item item_timer run execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute if score give item_timer >= give_item item_timer run execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give


execute if score give item_timer >= give_item item_timer run setblock 0 255 0 air
execute if score give item_timer >= give_item item_timer run forceload remove 0 0