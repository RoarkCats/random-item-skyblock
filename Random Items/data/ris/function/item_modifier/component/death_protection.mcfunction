data remove storage ris:generator Item
# https://minecraft.wiki/w/Effect_colors    #2552A5 #1DC2D1 #88A3BE #FF9900 #D9C043 #F87D23 #F6F6F6 #FDFF84 #CEFFFF #CD5CAB #9146F0 #F82423 #F3CFB9 #33EBFF #FFC700 #98DAC0 #F82423 (modern)
#                                           #2552A5 #1DC2D1 #88A3BE #E49A3A #D9C043 #F87D23 #7F8392 #22FF4C #CEFFFF #CD5CAB #99453A #F82423 #FFEFDI #7CAFC6 #932423 #2E5299 #F82423 (classic)
#                                           gold blue dark_aqua gold yellow dark_red light_gray green dark_gray light_purple blue yellow white aqua red dark_aqua dark_red          (custom)
execute store result score rng ris.rng run random value 0..16
execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.effect merge value {id:"absorption",txt:'{"text":"🧪","color":"#2552A5"}'}
execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.effect merge value {id:"conduit_power",txt:'{"text":"🧪","color":"#1DC2D1"}'}
execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.effect merge value {id:"dolphins_grace",txt:'{"text":"🧪","color":"#88A3BE"}'}
execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.effect merge value {id:"fire_resistance",txt:'{"text":"🧪","color":"#FF9900"}'}
execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.effect merge value {id:"haste",txt:'{"text":"🧪","color":"#D9C043"}'}
execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.effect merge value {id:"health_boost",txt:'{"text":"🧪","color":"#F87D23"}'}
execute if score rng ris.rng matches 6 run data modify storage ris:generator Item.effect merge value {id:"invisibility",txt:'{"text":"🧪","color":"#F6F6F6"}'}
execute if score rng ris.rng matches 7 run data modify storage ris:generator Item.effect merge value {id:"jump_boost",txt:'{"text":"🧪","color":"#FDFF84"}'}
execute if score rng ris.rng matches 8 run data modify storage ris:generator Item.effect merge value {id:"levitation",txt:'{"text":"🧪","color":"#CEFFFF"}'}
execute if score rng ris.rng matches 9 run data modify storage ris:generator Item.effect merge value {id:"regeneration",txt:'{"text":"🧪","color":"#CD5CAB"}'}
execute if score rng ris.rng matches 10 run data modify storage ris:generator Item.effect merge value {id:"resistance",txt:'{"text":"🧪","color":"#9146F0"}'}
execute if score rng ris.rng matches 11 run data modify storage ris:generator Item.effect merge value {id:"saturation",txt:'{"text":"🧪","color":"#F82423"}'}
execute if score rng ris.rng matches 12 run data modify storage ris:generator Item.effect merge value {id:"slow_falling",txt:'{"text":"🧪","color":"#F3CFB9"}'}
execute if score rng ris.rng matches 13 run data modify storage ris:generator Item.effect merge value {id:"speed",txt:'{"text":"🧪","color":"#33EBFF"}'}
execute if score rng ris.rng matches 14 run data modify storage ris:generator Item.effect merge value {id:"strength",txt:'{"text":"🧪","color":"#FFC700"}'}
execute if score rng ris.rng matches 15 run data modify storage ris:generator Item.effect merge value {id:"water_breathing",txt:'{"text":"🧪","color":"#98DAC0"}'}
execute if score rng ris.rng matches 16 run data modify storage ris:generator Item.effect merge value {id:"instant_health",txt:'{"text":"🧪","color":"#F82423"}'}

function ris:item_modifier/component/death_protection_append with storage ris:generator Item.effect


execute if predicate {"condition":"random_chance", "chance":0.33} unless data storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport"}] run data modify storage ris:generator components[{id:"death_protection"}].effects prepend value {id:"teleport",txt:"↔"}
execute store result score rng ris.rng run random value 1..32
execute if data storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport"}] store result storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport"}].diameter int 1 run scoreboard players get rng ris.rng

execute if predicate {"condition":"random_chance", "chance":0.33} unless data storage ris:generator components[{id:"death_protection"}].effects[{id:"milk"}] run data modify storage ris:generator components[{id:"death_protection"}].effects prepend value {id:"milk",txt:"🪣"}