import re,os

items = None
with open("alchemy_item_list.txt","r") as f :
    lines = f.read().split("\n")
    items = [x.split(",") for x in lines]
for i,x in enumerate(items) :
    with open(f"data/ris/loot_table/alchemy/{x[1]}.json","r") as f :
        txt = re.findall("\"lore\": (\[.*\])",f.read())
        txt = txt[0].replace("\\","").replace(",\"italic\":false","").replace('}","{','}","\\n","{').replace('"{','{').replace('}"','}')
        items[i].append(txt)
# [ [name,id,desc_json], [...], ... ]

print()
for x in items : print(x)
print()

print()
for x in items : print(x[1])
print()


msg_template = """execute if score XXXXX ris.alchemy_item_settings matches 0 run tellraw @s ["",{"text":"[❌]","color":"red","shadow_color":[1,0.6,0.6,0.8],"clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/disable/XXXXX"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable YYYYY","color":"red"}]}}}," ",{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/enable/XXXXX"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable YYYYY","color":"green"}]}}},{"text":" YYYYY","color":"gray","hoverEvent":{"action":"show_text","value":ZZZZZ}}]
execute if score XXXXX ris.alchemy_item_settings matches 1 run tellraw @s ["",{"text":"[❌]","color":"red","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/disable/XXXXX"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable YYYYY","color":"red"}]}}}," ",{"text":"[✔]","color":"green","shadow_color":[0.7,1,0.7,0.8],"clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/enable/XXXXX"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable YYYYY","color":"green"}]}}},{"text":" YYYYY","color":"gray","hoverEvent":{"action":"show_text","value":ZZZZZ}}]"""
disable_template = """playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set XXXXX ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled YYYYY","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_items/AAAAA"
function ris:msgs/_refresh_menu with storage ris:random"""
enable_template = """playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set XXXXX ris.special_item_settings 1

title @s actionbar {"text":"Enabled YYYYY","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_items/AAAAA"
function ris:msgs/_refresh_menu with storage ris:random"""

for x in items :

    name, id, desc = x
    sect = id.split("/")[0]
    path = f"data/ris/function/settings/general/alchemy_items"

    try : os.makedirs(f"{path}/msg/{sect}")
    except : pass
    with open(f"{path}/msg/{id}.mcfunction","w",encoding="utf-8") as f :
        f.write(msg_template.replace("XXXXX",id).replace("YYYYY",name).replace("ZZZZZ",desc))

    try : os.makedirs(f"{path}/disable/{sect}")
    except : pass
    with open(f"{path}/disable/{id}.mcfunction","w",encoding="utf-8") as f :
        f.write(disable_template.replace("XXXXX",id).replace("YYYYY",name).replace("AAAAA",sect))

    try : os.makedirs(f"{path}/enable/{sect}")
    except : pass
    with open(f"{path}/enable/{id}.mcfunction","w",encoding="utf-8") as f :
        f.write(enable_template.replace("XXXXX",id).replace("YYYYY",name).replace("AAAAA",sect))



input("DONE")