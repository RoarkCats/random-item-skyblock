data remove storage ris:generator Item.seeds[0]
$random reset ris:sequence $(seed)


execute store result score rng ris.rng run random value 80..240 ris:sequence
execute store result storage ris:generator Item.components.minecraft:consumable.consume_seconds float 0.01 run scoreboard players get rng ris.rng

execute store result score rng ris.rng run random value 0..9 ris:sequence
execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "none"
execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "eat"
execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "drink"
execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "block"
execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "bow"
execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "spear"
execute if score rng ris.rng matches 6 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "crossbow"
execute if score rng ris.rng matches 7 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "spyglass"
execute if score rng ris.rng matches 8 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "toot_horn"
execute if score rng ris.rng matches 9 run data modify storage ris:generator Item.components.minecraft:consumable.animation set value "brush"

function ris:alchemy/get_random_sound
data modify storage ris:generator Item.components.minecraft:consumable.sound set from storage ris:random sound

tag @s add ris.done
$summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1},UUID:[I;$(seed),0,0,0]}
loot replace entity @n[type=item,tag=ris.blank_item,tag=!ris.done] contents loot ris:random_item_sequence
# seed used when summoning item so it can stack with itself when regenerated as UUID is set seed based

execute if score special_item_dupe ris.settings matches 0 if items entity @n[type=item,tag=ris.blank_item,tag=!ris.done] contents #ris:dupe_blacklist run data modify storage ris:generator Item.components.minecraft:custom_data.ris.converts_to_special set value 1b
execute if score special_item_dupe ris.settings matches 1 if items entity @n[type=item,tag=ris.blank_item,tag=!ris.done] contents chain_command_block run data modify storage ris:generator Item.components.minecraft:custom_data.ris.converts_to_special set value 1b

data modify entity @s Item merge from storage ris:generator Item

item modify entity @s contents {"function":"set_lore","entity":"this","mode":"append","lore":[[{"text":"Consumable → ","color":"gray","italic":false},{"selector":"@n[type=item,tag=ris.blank_item,tag=!ris.done]"}]]}


data modify storage ris:generator Item.components.minecraft:custom_data.ris.components[{id:"consumable_converts"}].seeds set from storage ris:generator Item.seeds
data modify storage ris:generator Item.seed set from storage ris:generator Item.seeds[0]
execute if data storage ris:generator Item.seeds[] as @n[type=item,tag=ris.blank_item,tag=!ris.done] run function ris:item_modifier/commit/consumable_converts_seed with storage ris:generator Item


data modify entity @s Item.components.minecraft:use_remainder set from entity @n[type=item,tag=ris.blank_item,tag=!ris.done] Item
kill @n[type=item,tag=ris.blank_item,tag=!ris.done]
tag @s remove ris.done