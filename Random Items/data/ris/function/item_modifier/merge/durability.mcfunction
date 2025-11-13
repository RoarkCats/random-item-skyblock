execute store result score in ris.rng run data get storage ris:generator components[-1].nbt.minecraft:max_damage 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"durability"}].nbt.minecraft:max_damage 1
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[-1].nbt.minecraft:max_damage int 1 run scoreboard players get rng ris.rng
scoreboard players operation #temp ris.timer = rng ris.rng

execute store result score in ris.rng run data get storage ris:generator components[-1].nbt.minecraft:damage 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"durability"}].nbt.minecraft:damage 1
function ris:item_modifier/merge/rng_range_add
scoreboard players operation #temp ris.timer /= #8 ris.timer
scoreboard players operation rng ris.rng -= #temp ris.timer
execute if score rng ris.rng matches ..-1 run scoreboard players set rng ris.rng 0
execute store result storage ris:generator components[-1].nbt.minecraft:damage int 0.8 run scoreboard players get rng ris.rng

execute store result score in ris.rng run data get storage ris:generator components[-1].nbt.minecraft:enchantable.value 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"durability"}].nbt.minecraft:enchantable.value 1
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[-1].nbt.minecraft:enchantable.value int 1 run scoreboard players get rng ris.rng