# run by alchemy/book/update_book, tallies unlocked alchemy items by section

scoreboard players set #double ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/command":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/chain":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/repeat":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/minecart":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/structure":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/jigsaw":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/debug":1b}}}}} run scoreboard players add #double ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"double/knowledge":1b}}}}} run scoreboard players add #double ris.timer 1

scoreboard players set #command ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/chain":1b}}}}} run scoreboard players add #command ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/repeat":1b}}}}} run scoreboard players add #command ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/chain_repeat":1b}}}}} run scoreboard players add #command ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/minecart":1b}}}}} run scoreboard players add #command ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/chain_minecart":1b}}}}} run scoreboard players add #command ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"command/repeat_minecart":1b}}}}} run scoreboard players add #command ris.timer 1

scoreboard players set #structure ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"structure/minecart":1b}}}}} run scoreboard players add #structure ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"structure/command":1b}}}}} run scoreboard players add #structure ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"structure/chain":1b}}}}} run scoreboard players add #structure ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"structure/repeat":1b}}}}} run scoreboard players add #structure ris.timer 1

scoreboard players set #jigsaw ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"jigsaw/structure":1b}}}}} run scoreboard players add #jigsaw ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"jigsaw/minecart":1b}}}}} run scoreboard players add #jigsaw ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"jigsaw/command":1b}}}}} run scoreboard players add #jigsaw ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"jigsaw/chain":1b}}}}} run scoreboard players add #jigsaw ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"jigsaw/repeat":1b}}}}} run scoreboard players add #jigsaw ris.timer 1

scoreboard players set #debug ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/jigsaw":1b}}}}} run scoreboard players add #debug ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/structure":1b}}}}} run scoreboard players add #debug ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/minecart":1b}}}}} run scoreboard players add #debug ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/command":1b}}}}} run scoreboard players add #debug ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/chain":1b}}}}} run scoreboard players add #debug ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"debug/repeat":1b}}}}} run scoreboard players add #debug ris.timer 1

scoreboard players set #knowledge ris.timer 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/debug":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/jigsaw":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/structure":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/minecart":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/command":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/chain":1b}}}}} run scoreboard players add #knowledge ris.timer 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"ris:alchemy/transmutation/true_alchemist":{"knowledge/repeat":1b}}}}} run scoreboard players add #knowledge ris.timer 1