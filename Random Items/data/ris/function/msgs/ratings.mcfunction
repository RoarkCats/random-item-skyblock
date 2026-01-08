# run from ris:advancements/main_20 when players have reached the required playtime
tag @s add ris.ratings_msg

playsound block.note_block.bell master @s ~ ~ ~ 16 1.6
playsound block.note_block.snare master @s ~ ~ ~ 16 0.8


tellraw @s {"text":"                                \n","underlined":true,"color":"green"}

# Symbols: ❤♡♥⭐★💎♦🔖📕▪▫•·◦
tellraw @s [{"text":"   Enjoying ","color":"yellow"},{"text":"Random Item Skyblock","color":"gold","bold":true}," so far?","\n   Please give us a follow/favorite and comment!"]

tellraw @s ["     ",{"text":"[Modrinth]","color":"#22ff84","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Go to Modrinth","color":"#22ff84"}},"clickEvent":{"action":"open_url","value":"https://modrinth.com/modpack/random-item-skyblock"}}," ",{"text":"[CurseForge]","color":"#eb622b","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Go to CurseForge","color":"#eb622b"}},"clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/modpacks/random-item-skyblock"}}," ",{"text":"[GitHub]","color":"#888888","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Go to GitHub","color":"#888888"}},"clickEvent":{"action":"open_url","value":"https://github.com/RoarkCats/random-item-skyblock"}}," ",{"text":"[PMC]","color":"#44a5ff","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Go to Planet Minecraft","color":"#44a5ff"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/random-item-skyblock"}}]

tellraw @s [{"text":"   Check out our ","color":"yellow"},{"text":"[Wiki]","color":"light_purple","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Random Item Skyblock Wiki (spoilers)","color":"light_purple"}},"clickEvent":{"action":"open_url","value":"https://randomitemskyblock.wiki.gg"}},{"text":" and community ","color":"yellow"},{"text":"[Discord]","color":"#5865f2","shadow_color":[0,0,0,0.8],"hoverEvent":{"action":"show_text","contents":{"text":"Join Zipcode Discord","color":"#5865f2"}},"clickEvent":{"action":"open_url","value":"https://discord.gg/FfkrUPf"}}]

tellraw @s {"text":"                                \n","underlined":true,"color":"green"}