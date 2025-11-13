data remove storage ris:generator Item

data modify storage ris:generator Item.seeds set from storage ris:generator components[{id:"consumable_converts"}].seeds

data modify storage ris:generator Item.seed set from storage ris:generator Item.seeds[0]
function ris:item_modifier/commit/consumable_converts_seed with storage ris:generator Item