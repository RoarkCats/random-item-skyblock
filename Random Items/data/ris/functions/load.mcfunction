#Welcome Messages
tellraw @a ["",{"text":"Welcome to Random Item Skyblock!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by Ziplaw, RoarkCats, and PhoenixSC","color":"aqua"}]}}}]

tellraw @a ["",{"text":"<Ziplaw> The item delay is currently set to 600 ticks","color":"white"}]

tellraw @a ["",{"text":"<RoarkCats> You can change the delay by executing this command:","color":"white"},{"text":"   /scoreboard players set delay rdtimer <<delay in ticks>>","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer "}}]

tellraw @a ["",{"text":"<PhoenixSC> Have fun!","color":"white"}]

#Imports
forceload add 0 0
scoreboard objectives add item_timer dummy
scoreboard objectives add rdtimer dummy "Timer"
execute unless score run rdtimer matches 1.. run scoreboard players set delay rdtimer 600
scoreboard players set run rdtimer 1

#Tag Resets
tag @a remove p1
scoreboard players reset p1 item_timer

tag @a remove p2
scoreboard players reset p2 item_timer

tag @a remove p3
scoreboard players reset p3 item_timer

tag @a remove p4
scoreboard players reset p4 item_timer

tag @a remove p5
scoreboard players reset p5 item_timer

tag @a remove p6
scoreboard players reset p6 item_timer

tag @a remove p7
scoreboard players reset p7 item_timer

tag @a remove p8
scoreboard players reset p8 item_timer

tag @a remove p9
scoreboard players reset p9 item_timer

tag @a remove p10
scoreboard players reset p10 item_timer

tag @a remove p11
scoreboard players reset p11 item_timer

tag @a remove p12
scoreboard players reset p12 item_timer

tag @a remove p13
scoreboard players reset p13 item_timer

tag @a remove p14
scoreboard players reset p14 item_timer

tag @a remove p15
scoreboard players reset p15 item_timer

tag @a remove p16
scoreboard players reset p16 item_timer

tag @a remove p17
scoreboard players reset p17 item_timer

tag @a remove p18
scoreboard players reset p18 item_timer

tag @a remove p19
scoreboard players reset p19 item_timer

tag @a remove p20
scoreboard players reset p20 item_timer

tag @a remove p21
scoreboard players reset p21 item_timer

tag @a remove p22
scoreboard players reset p22 item_timer

tag @a remove p23
scoreboard players reset p23 item_timer

tag @a remove p24
scoreboard players reset p24 item_timer

tag @a remove p25
scoreboard players reset p25 item_timer

tag @a remove p26
scoreboard players reset p26 item_timer

tag @a remove p27
scoreboard players reset p27 item_timer

tag @a remove p28
scoreboard players reset p28 item_timer

tag @a remove p29
scoreboard players reset p29 item_timer

tag @a remove p30
scoreboard players reset p30 item_timer

tag @a remove p31
scoreboard players reset p31 item_timer

tag @a remove p32
scoreboard players reset p32 item_timer

advancement grant @a only ris:root
function ris:advancement_scores