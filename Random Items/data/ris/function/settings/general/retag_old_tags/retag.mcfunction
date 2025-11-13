execute unless entity @s[type=!player] run return run execute as @e[tag=!ris.retagged] run function ris:settings/general/retag_old_tags/retag
tag @s add ris.retagged


tag @s[tag=RISmulti] add ris.multiplier
tag @s[tag=RISgen] add ris.generator
tag @s[tag=ris-m1] add ris.m1
tag @s[tag=ris-p1] add ris.p1

tag @s[tag=RISmulti] remove RISmulti
tag @s[tag=RISgen] remove RISgen
tag @s[tag=ris-m1] remove ris-m1
tag @s[tag=ris-p1] remove ris-p1