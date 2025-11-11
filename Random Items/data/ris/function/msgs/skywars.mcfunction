# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound item.book.page_turn master @s ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"blue"},{"text":"        ","underlined":true},{"text":" ","strikethrough":true}," Skywars ",{"text":" ","strikethrough":true},{"text":"        \n","underlined":true}]

tellraw @s [{"text":" - Maps - \n","color":"gray"},{"text":"[Ruins]","color":"aqua","clickEvent":{"action":"run_command","value":"/function ris:skywars/maps/ruins"},"hoverEvent":{"action":"show_text","value":{"text":"Generate Ruins","color":"aqua"}}},"\n"]

tellraw @s [{"text":" - Game Controls - \n","color":"gray"},{"text":"[Start]","color":"green","clickEvent":{"action":"run_command","value":"/function ris:skywars/start"},"hoverEvent":{"action":"show_text","value":{"text":"Start Game","color":"green"}}}," ",{"text":"[Stop]","color":"red","clickEvent":{"action":"run_command","value":"/function ris:skywars/stop"},"hoverEvent":{"action":"show_text","value":{"text":"Stop Game","color":"red"}}}," ",{"text":"[Reset All]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function ris:skywars/reset"},"hoverEvent":{"action":"show_text","value":{"text":"Reset All Games","color":"dark_red"}}},"\n"]

tellraw @s [{"text":" - Custom Setup Items - \n","color":"gray"},{"text":"[Player Spawns]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Give Player Spawns","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/give @s bat_spawn_egg[custom_name='{\"text\":\"Player Spawn\",\"color\":\"aqua\",\"bold\":true,\"italic\":false}',lore=['{\"text\":\"Places a skywars player spawn and item generator\",\"color\":\"blue\",\"italic\":false}'],entity_data={id:\"minecraft:marker\",Tags:[\"ris.p1\"]}]"}}," ",{"text":"[Generators]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Give Generators","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/give @s bat_spawn_egg[custom_name='{\"text\":\"Generator\",\"color\":\"aqua\",\"bold\":true,\"italic\":false}',lore=['{\"text\":\"Places a skywars extra item generator\",\"color\":\"blue\",\"italic\":false}'],entity_data={id:\"minecraft:marker\",Tags:[\"ris.m1\"]}]"}}]

tellraw @s {"text":"                              \n","underlined":true,"color":"blue"}