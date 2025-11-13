function ris:item_modifier/component/enchantments_append with storage ris:generator components_merge[{id:"enchantments"}].enchants[0]

data remove storage ris:generator components_merge[{id:"enchantments"}].enchants[0]
execute if data storage ris:generator components_merge[{id:"enchantments"}].enchants[0] run function ris:item_modifier/merge/enchantments