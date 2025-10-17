#Welcome Message
schedule function ris:msgs/reload 40t

#Imports
gamerule maxCommandChainLength 1000000

scoreboard objectives add item_timer dummy
scoreboard objectives add rdtimer dummy
scoreboard objectives add risSettings dummy
scoreboard objectives add risSkywars dummy
scoreboard objectives add receive_items trigger
scoreboard objectives add rdbar trigger
scoreboard objectives add risYPos dummy
execute unless score run rdtimer matches 1.. run scoreboard players set delay rdtimer 600
scoreboard players set run rdtimer 1
execute unless score sameItems risSettings matches -1.. run scoreboard players set sameItems risSettings 0
execute unless score debugItems risSettings matches -1.. run scoreboard players set debugItems risSettings 2
execute unless score opCmd risSettings matches -1.. run scoreboard players set opCmd risSettings 0
execute unless score shulkerDup risSettings matches -1.. run scoreboard players set shulkerDup risSettings 0
execute unless score specialItems risSettings matches -1.. run scoreboard players set specialItems risSettings 1
execute unless score traderSpecialItems risSettings matches -1.. run scoreboard players set traderSpecialItems risSettings 0

bossbar add rdtimer "Next Item"
bossbar set minecraft:rdtimer color green

function ris:advance/scores

function ris:rng/setup