# run by advancement when RIS knowledge book used (right clicked) by player
recipe take @s ris:knowledge_book/default
recipe take @s ris:knowledge_book/double
recipe take @s ris:knowledge_book/command
recipe take @s ris:knowledge_book/minecart
recipe take @s ris:knowledge_book/jigsaw
recipe take @s ris:knowledge_book/structure

# loot give problematic new book gets used, loot spawn meh pickup delay
summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute if entity @s[advancements={ris:return_knowledge_book={default=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:custom_items/special/knowledge_book
execute if entity @s[advancements={ris:return_knowledge_book={double=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/double/knowledge
execute if entity @s[advancements={ris:return_knowledge_book={command=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/knowledge/command
execute if entity @s[advancements={ris:return_knowledge_book={minecart=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/knowledge/minecart
execute if entity @s[advancements={ris:return_knowledge_book={jigsaw=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/knowledge/jigsaw
execute if entity @s[advancements={ris:return_knowledge_book={structure=true}}] run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/knowledge/structure
tag @n[type=item,tag=ris.blank_item] remove ris.blank_item

advancement revoke @s only ris:return_knowledge_book