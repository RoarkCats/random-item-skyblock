import re,os

items = None
with open("alchemy_item_list.txt","r") as f :
    lines = f.read().split("\n")
    items = [x.split(",") for x in lines]
# [ [name,id], [...], ... ]

print()
for x in items : print(x[1])
print()

input("WARNING!! DESTRUCTIVE TOWARDS DESCRIPTION CHANGES!!")
input("SERIOUSLY! THIS WILL BRICK ALL DESCRIPTIONS!")

template = """[\n    {\n        "function": "minecraft:set_written_book_pages",\n        "mode": "append",\n        "pages": [\n            [\n                {"text":"   ","font":"uniform"},\n                {"text":"YYYYY × ZZZZZ\\n\\n","underlined":true,"bold":true},\n                "   Some description text providing deeper knowledge of what's going on in an obscure way !!~TODO WIP~!!"\n            ]\n        ],\n        "conditions": [\n            {\n                "condition": "minecraft:value_check",\n                "value": {\n                    "type": "minecraft:score",\n                    "target": {"type": "minecraft:fixed","name": "XXXXX"},\n                    "score": "ris.alchemy_item_settings"\n                },\n                "range": 1\n            },\n            {\n                "condition": "minecraft:entity_properties",\n                "entity": "this",\n                "predicate": {\n                    "type_specific": {\n                        "type": "minecraft:player",\n                        "advancements": {\n                            "ris:alchemy/transmutation/true_alchemist": {\n                                "XXXXX": true\n                            }\n                        }\n                    }\n                }\n            }\n        ]\n    },\n    {\n        "function": "minecraft:set_written_book_pages",\n        "mode": "append",\n        "pages": [\n            [\n                {"text":"   ","font":"uniform"},\n                {"text":"YYYYY × ZZZZZ\\n\\n","underlined":true,"bold":true},\n                {"text":" <This feature is disabled>","italic":true}\n            ]\n        ],\n        "conditions": [\n            {\n                "condition": "minecraft:value_check",\n                "value": {\n                    "type": "minecraft:score",\n                    "target": {"type": "minecraft:fixed","name": "XXXXX"},\n                    "score": "ris.alchemy_item_settings"\n                },\n                "range": 0\n            }\n        ]\n    }\n]"""

for x in items :

    name, id = x
    id0, id1 = id.split("/")
    path = f"data/ris/item_modifier/alchemy_book/alchemy"

    try : os.makedirs(f"{path}/{id0}")
    except : pass
    
    if id0 == "command" and "_" in id1 :
        id0, id1 = id1.split("_")

    with open(f"{path}/{id}.json","w",encoding="utf-8") as f :
        f.write(template.replace("XXXXX",id).replace("YYYYY",id0.replace("double",id1).capitalize()).replace("ZZZZZ",id1.capitalize()))

input("DONE")