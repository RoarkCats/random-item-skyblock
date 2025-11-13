data remove storage ris:generator Item

execute store result score rng ris.rng run random value 80..240
execute store result storage ris:generator components[{id:"consumable_effect"}].time float 0.01 run scoreboard players get rng ris.rng

execute store result score rng ris.rng run random value 0..40
execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.effect.id set value "absorption"
execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.effect.id set value "bad_omen"
execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.effect.id set value "blindness"
execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.effect.id set value "conduit_power"
execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.effect.id set value "darkness"
execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.effect.id set value "dolphins_grace"
execute if score rng ris.rng matches 6 run data modify storage ris:generator Item.effect.id set value "fire_resistance"
execute if score rng ris.rng matches 7 run data modify storage ris:generator Item.effect.id set value "glowing"
execute if score rng ris.rng matches 8 run data modify storage ris:generator Item.effect.id set value "haste"
execute if score rng ris.rng matches 9 run data modify storage ris:generator Item.effect.id set value "health_boost"
execute if score rng ris.rng matches 10 run data modify storage ris:generator Item.effect.id set value "hero_of_the_village"
execute if score rng ris.rng matches 11 run data modify storage ris:generator Item.effect.id set value "hunger"
execute if score rng ris.rng matches 12 run data modify storage ris:generator Item.effect.id set value "infested"
execute if score rng ris.rng matches 13 run data modify storage ris:generator Item.effect.id set value "invisibility"
execute if score rng ris.rng matches 14 run data modify storage ris:generator Item.effect.id set value "jump_boost"
execute if score rng ris.rng matches 15 run data modify storage ris:generator Item.effect.id set value "levitation"
execute if score rng ris.rng matches 16 run data modify storage ris:generator Item.effect.id set value "luck"
execute if score rng ris.rng matches 17 run data modify storage ris:generator Item.effect.id set value "mining_fatigue"
execute if score rng ris.rng matches 18 run data modify storage ris:generator Item.effect.id set value "nausea"
execute if score rng ris.rng matches 19 run data modify storage ris:generator Item.effect.id set value "night_vision"
execute if score rng ris.rng matches 20 run data modify storage ris:generator Item.effect.id set value "oozing"
execute if score rng ris.rng matches 21 run data modify storage ris:generator Item.effect.id set value "poison"
execute if score rng ris.rng matches 22 run data modify storage ris:generator Item.effect.id set value "raid_omen"
execute if score rng ris.rng matches 23 run data modify storage ris:generator Item.effect.id set value "regeneration"
execute if score rng ris.rng matches 24 run data modify storage ris:generator Item.effect.id set value "resistance"
execute if score rng ris.rng matches 25 run data modify storage ris:generator Item.effect.id set value "saturation"
execute if score rng ris.rng matches 26 run data modify storage ris:generator Item.effect.id set value "slow_falling"
execute if score rng ris.rng matches 27 run data modify storage ris:generator Item.effect.id set value "slowness"
execute if score rng ris.rng matches 28 run data modify storage ris:generator Item.effect.id set value "speed"
execute if score rng ris.rng matches 29 run data modify storage ris:generator Item.effect.id set value "strength"
execute if score rng ris.rng matches 30 run data modify storage ris:generator Item.effect.id set value "trial_omen"
execute if score rng ris.rng matches 31 run data modify storage ris:generator Item.effect.id set value "unluck"
execute if score rng ris.rng matches 32 run data modify storage ris:generator Item.effect.id set value "water_breathing"
execute if score rng ris.rng matches 33 run data modify storage ris:generator Item.effect.id set value "weakness"
execute if score rng ris.rng matches 34 run data modify storage ris:generator Item.effect.id set value "weaving"
execute if score rng ris.rng matches 35 run data modify storage ris:generator Item.effect.id set value "wind_charged"
execute if score rng ris.rng matches 36 run data modify storage ris:generator Item.effect.id set value "wither"

execute if score rng ris.rng matches 37 run data modify storage ris:generator Item.effect.id set value "instant_damage"
execute if score rng ris.rng matches 38 run data modify storage ris:generator Item.effect.id set value "instant_health"
execute if score rng ris.rng matches 37..38 run data modify storage ris:generator Item.effect.duration set value 1

execute if score rng ris.rng matches 39..40 run data modify storage ris:generator Item.effect.id set value "milk"

function ris:item_modifier/component/consumable_effect_append with storage ris:generator Item.effect