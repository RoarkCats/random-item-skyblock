particle white_smoke
# - - Debug - -
# summon block_display ~-.5 ~ ~-.5 {block_state:{Name:"glass"}}
# execute if block ~ ~ ~ #ris:fluid run summon block_display ~-.25 ~.25 ~-.25 {block_state:{Name:"tinted_glass"},transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
# - - - - - - -

# ver1: spreads though all but fluid destroying or not
#   pros: good for skyblock
#   cons: bad when you have lots of same solid ground not being mined (the end)
# ver2: ver1 but cant spread through encased solid ground (unless it's being mined)
#   pros: spreads out more since doesnt go as deep
#   cons: slightly laggier, problems going up, spreads weirdly...
# ver3: ver2 but can also spread a bit into fluid
#   pros: more sensible spread
#   cons: slightly laggier, jumps 2 block gaps, dies faster, 
# ver4: v3 but locks onto mineable blocks by prepending to list
#   pros: prioritizes mineables
#   cons: doesnt vein mine, lines n shit, VERY BAD
# ver5: ver4 but with separate priority list
#   pros: prioritizes properly
#   cons: may miss some blocks/areas in favor of others
# ver6: ver5 but witout ver2-3
#   pros: more sensible mine
#   cons: less sensible spread

# execute if block ~ ~ ~ #ris:fluid if block ~1 ~ ~ #ris:fluid if block ~-1 ~ ~ #ris:fluid if block ~ ~1 ~ #ris:fluid if block ~ ~-1 ~ #ris:fluid if block ~ ~ ~1 #ris:fluid if block ~ ~ ~-1 #ris:fluid run return run scoreboard players set #temp ris.timer -1
# $execute if block ~ ~ ~ $(block) unless block ~1 ~ ~ #ris:fluid unless block ~-1 ~ ~ #ris:fluid unless block ~ ~1 ~ #ris:fluid unless block ~ ~-1 ~ #ris:fluid unless block ~ ~ ~1 #ris:fluid unless block ~ ~ ~-1 #ris:fluid run return run scoreboard players set #temp ris.timer -1
execute if block ~ ~ ~ #ris:fluid run return run scoreboard players set #temp ris.timer -1