# run by custom_items/tag_item as items with custom_data ris:components (also by item_modifier/_util/commit)
# could be 1 data merge cmd if it didnt override other tags...

tag @s add ris.components
execute if items entity @s contents *[custom_data~{ris:{components:[{locked:1b}]}}] run tag @s add ris.components_locked