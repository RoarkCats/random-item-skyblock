execute align xyz unless block ~ ~ ~ #air summon marker run function ris:alchemy/jigsaw/structure/marker

scoreboard players remove #temp2 ris.timer 1
execute if score #temp2 ris.timer matches 1.. positioned ~ ~1 ~ run function ris:alchemy/jigsaw/structure/row_y