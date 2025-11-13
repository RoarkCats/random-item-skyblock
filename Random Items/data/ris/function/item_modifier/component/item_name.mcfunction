data modify storage ris:generator words set value []
execute store result score rng ris.rng run random value 0..27
# scoreboard players set rng ris.rng 27


execute if score rng ris.rng matches 0 if predicate {condition:random_chance,chance:0.5} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 0 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 0 run data modify storage ris:generator words append value "of"
execute if score rng ris.rng matches 0 run function ris:item_modifier/component/words/verb3

execute if score rng ris.rng matches 1 run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 1 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 2 run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 2 if predicate {condition:random_chance,chance:0.4} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 2 if predicate {condition:random_chance,chance:0.4} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 2 if predicate {condition:random_chance,chance:0.4} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 2 if predicate {condition:random_chance,chance:0.4} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 2 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 3 run data modify storage ris:generator words append value "The"
execute if score rng ris.rng matches 3 if predicate {condition:random_chance,chance:0.5} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 3 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 4 run function ris:item_modifier/component/words/preposition
execute if score rng ris.rng matches 4 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 5 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 5 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 6 run function ris:item_modifier/component/words/verb0
execute if score rng ris.rng matches 6 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 7 run function ris:item_modifier/component/words/verb2
execute if score rng ris.rng matches 7 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 8 run function ris:item_modifier/component/words/verb3
execute if score rng ris.rng matches 8 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 9 run function ris:item_modifier/component/words/verb1
execute if score rng ris.rng matches 9 run function ris:item_modifier/component/words/preposition
execute if score rng ris.rng matches 9 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 10 run function ris:item_modifier/component/words/verb0
execute if score rng ris.rng matches 10 if predicate {condition:random_chance,chance:0.8} run function ris:item_modifier/component/words/adverb

execute if score rng ris.rng matches 11 if predicate {condition:random_chance,chance:0.7} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 11 run function ris:item_modifier/component/words/verb0

execute if score rng ris.rng matches 12 run function ris:item_modifier/component/words/verb0
execute if score rng ris.rng matches 12 if predicate {condition:random_chance,chance:0.5} run function ris:item_modifier/component/words/preposition

execute if score rng ris.rng matches 13 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 14 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 14 run data modify storage ris:generator words append value "the"
execute if score rng ris.rng matches 14 run function ris:item_modifier/component/words/adjective

execute if score rng ris.rng matches 15 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 15 run data modify storage ris:generator words append value "and"
execute if score rng ris.rng matches 15 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 16 run data modify storage ris:generator words append value "Block of"
execute if score rng ris.rng matches 16 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 17 run data modify storage ris:generator words append value "Waxed Lightly Weathered Cut Copper"
execute if score rng ris.rng matches 17 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/verb2
execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/adverb
execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/verb2
execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/verb2
execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 18 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 19 if predicate {condition:random_chance,chance:0.3} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 19 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 19 run data modify storage ris:generator words append value "that"
execute if score rng ris.rng matches 19 run function ris:item_modifier/component/words/verb1

execute if score rng ris.rng matches 20 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 20 if predicate {condition:random_chance,chance:0.5} run data modify storage ris:generator words append value "of"
execute if score rng ris.rng matches 20 run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 20 run function ris:item_modifier/component/words/verb0

execute if score rng ris.rng matches 21 if predicate {condition:random_chance,chance:0.2} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 21 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 21 run function ris:item_modifier/component/words/preposition
execute if score rng ris.rng matches 21 if predicate {condition:random_chance,chance:0.2} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 21 run function ris:item_modifier/component/words/verb0
execute if score rng ris.rng matches 21 run function ris:item_modifier/component/words/preposition
execute if score rng ris.rng matches 21 if predicate {condition:random_chance,chance:0.2} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 21 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 22 run function ris:item_modifier/component/words/adverb
execute if score rng ris.rng matches 22 run function ris:item_modifier/component/words/verb3

execute if score rng ris.rng matches 23 run function ris:item_modifier/component/words/adjective

execute if score rng ris.rng matches 24 run function ris:item_modifier/component/words/preposition
execute if score rng ris.rng matches 24 run function ris:item_modifier/component/words/adjective

execute if score rng ris.rng matches 25 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 25 run data modify storage ris:generator words append value "Chan"
# tried to make this "XXX-chan" but the space is added by the commit automatically and we can't concat strings

execute if score rng ris.rng matches 26 if predicate {condition:random_chance,chance:0.3} run function ris:item_modifier/component/words/adjective
execute if score rng ris.rng matches 26 run function ris:item_modifier/component/words/noun
execute if score rng ris.rng matches 26 run data modify storage ris:generator words append value "of"
execute if score rng ris.rng matches 26 run function ris:item_modifier/component/words/noun

execute if score rng ris.rng matches 27 run data modify storage ris:generator words append value ""


data modify storage ris:generator components[{id:"item_name"}].words set from storage ris:generator words

# Notes:
# `words` folder generated from `proccess_tagged.py`
# actual words all pulled from `en_us.json` lang file with `proccess_lang.py`
#     noun: singilar & plural
#     adjective: all
#     adverb: -
#     verb0: base
#     verb1: ongoing (-s)
#     verb2: past (-ed)
#     verb3: present (-ing)
#     preposition: -