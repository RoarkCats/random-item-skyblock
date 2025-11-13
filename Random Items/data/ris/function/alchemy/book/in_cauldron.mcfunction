# run by alchemy/_recipe/transmuted as/at item dropped into cauldron

# Note: Still runs when compendium itself is dropped in (can fix detecting {ris:{compendium:1b} custom_data if wanted, currently intended)

execute align xyz run summon ominous_item_spawner ~0.5 ~0.75 ~0.5 {Tags:["ris.alchemy_craft","ris.new"],spawn_item_after_ticks:37,item:{id:"minecraft:stone",count:1}}
loot replace entity @s contents loot ris:alchemy/compendium
data modify entity @n[type=ominous_item_spawner,tag=ris.new] item set from entity @s Item
tag @n[type=ominous_item_spawner,tag=ris.new] remove ris.new
kill @s[type=item]

execute align xyz run particle enchant ~0.5 ~0.75 ~0.5 .1 .1 .1 0.6 25

function ris:alchemy/empty_cauldron