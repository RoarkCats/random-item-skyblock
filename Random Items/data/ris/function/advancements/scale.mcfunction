execute if entity @s[advancements={ris:alchemy/transmutation/true_random/attribute_alchemist/downsizing=true,ris:alchemy/transmutation/true_random/attribute_alchemist/go_big_or_go_home=true}] run return 1
execute unless predicate ris:scale_equipped run return 0

execute store result score #temp ris.timer run attribute @s scale get 10000

execute if score #temp ris.timer matches ..625 run advancement grant @s only ris:alchemy/transmutation/true_random/attribute_alchemist/downsizing
execute if score #temp ris.timer matches 160000.. run advancement grant @s only ris:alchemy/transmutation/true_random/attribute_alchemist/go_big_or_go_home