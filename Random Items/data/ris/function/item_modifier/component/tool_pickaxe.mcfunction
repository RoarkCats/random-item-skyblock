function ris:item_modifier/component/durability

execute store result score rng ris.rng run random value 20..120
execute store result storage ris:generator components[{id:"tool_pickaxe",has_durability:1b}].speed float 0.1 run scoreboard players get rng ris.rng