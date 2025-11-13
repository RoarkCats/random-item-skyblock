tag @s remove ris.blank_item

# Set item
loot replace entity @s contents loot ris:random_item

# Load weights
data merge storage ris:generator {weights:[armor,armor_toughness,attack_damage,attack_knockback,attack_speed,block_break_speed,block_interaction_range,burning_time,consumable_converts,consumable_effect,consumable_food,consumable_teleport,death_protection,entity_interaction_range,equippable,explosion_knockback_resistance,fall_damage_multiplier,glider,gravity,item_model,item_name,jump_strength,knockback_resistance,luck,max_health,movement_efficiency,movement_speed,oxygen_bonus,safe_fall_distance,scale,sneaking_speed,step_height,submerged_mining_speed,water_movement_efficiency,enchantment_glint_override,enchantments,damage_resistant,hide_additional_tooltip,hide_tooltip,jukebox_playable,tool_axe,tool_hoe,tool_pickaxe,tool_shears,tool_shovel,tool_sword,unbreakable]}
execute if score sherd_modifiers ris.settings matches 1 positioned ~ ~0.6 ~ if block ~ ~ ~ decorated_pot if data block ~ ~ ~ sherds run function ris:alchemy/double/repeat/sherds

# Add components
function ris:item_modifier/_util/get

# tellraw @a {"text":"Debug :","color":"dark_gray"}
# gonna use a binomial distribution instead of uniform, N=3 p=0.5 ofs=1, avg of 2.5 instead of 3
scoreboard players set count ris.rng 1
execute if predicate ris:component_binomial_chance run scoreboard players add count ris.rng 1
execute if predicate ris:component_binomial_chance run scoreboard players add count ris.rng 1
execute if predicate ris:component_binomial_chance run scoreboard players add count ris.rng 1
# execute store result score count ris.rng run random value 2..4
execute store result score weight ris.rng if data storage ris:generator weights[]
function ris:alchemy/double/repeat/add_components

function ris:item_modifier/_util/commit

# tp done later to not worry about item positional issues .,.
execute if block ~ ~0.6 ~ decorated_pot run tp @s ~ ~1 ~