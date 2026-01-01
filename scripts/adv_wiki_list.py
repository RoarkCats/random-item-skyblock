from os import walk, path, mkdir, remove
from json import load
import urllib.request

# Reset files
try : remove(f"output{path.sep}unretrieved.txt")
except : pass
try : remove(f"output{path.sep}wiki.txt")
except : pass

# Get texture ref (func)
try : mkdir("output")
except : pass
def download_item_tex(x):
    x = x.replace("minecraft:","")
    url = f"https://raw.githubusercontent.com/PixiGeko/Minecraft-default-assets/refs/heads/1.21.4/assets/minecraft/textures/item/{x}.png"
    try : urllib.request.urlretrieve(url, f"output{path.sep}{x}.png")
    except Exception as e :
        try :
            with open(f"output{path.sep}unretrieved.txt", "a") as f :
                f.write(x+"\n")
        except: pass

advancements = []

# Get most relevant RIS dir
if path.isdir("data") :
    dir = "data"
if path.isdir(f"..{path.sep}Random Items") :
    dir = f"..{path.sep}Random Items"
if path.isdir("Random Items") :
    dir = "Random Items"

for (root,dirs,files) in walk(dir) :
    if f"{path.sep}advancement{path.sep}" in root :
        for file in files :
            if file.endswith(".json"):
                with open(root+path.sep+file, "r") as f :
                    adv = load(f)
                    # filter out triggers
                    if "display" in adv :
                        adv["path"] = root+path.sep+file
                        advancements.append(adv)

def get_parent(adv) :
    parent = adv["parent"].split("/")[-1]
    if parent == "root" : return "ROOT"
    try :
        for adv in advancements :
            if adv["path"].endswith(parent+".json") :
                name = adv["display"]["title"]
                return name if type(name) == type("") else name["text"]
    except : pass
    return ""

# Output
for adv in advancements :
    try :
        disp = adv["display"]
        icon = disp["icon"]
        enchanted = "|class=enchanted" if ("components" in icon and "enchantment_glint_override" in icon["components"] and icon["components"]["enchantment_glint_override"]) else ""

        line = f"""
|- class="{disp["frame"]}{" adv-hidden" if ("hidden" in disp and disp["hidden"]) else ""}"
| [[File:{icon["id"].replace("minecraft:","")}.png|32px{enchanted}]] || {disp["title"]} || {disp["description"].replace("\n","<br>")} || {get_parent(adv)} || """
    
        print(line,end="")
        try :
            with open(f"output{path.sep}wiki.txt", "a") as f :
                f.write(line)
        except : print("ERROR APPEND wiki.txt",end="")
        
        download_item_tex(icon["id"])

    except Exception as e:
        print(f"ERROR ({e}): {adv}")
        try :
            with open(f"output{path.sep}wiki.txt", "a") as f :
                f.write(str(adv))
        except : pass

#|- class="challenge"
#| [[File:Command block.gif|32px]] || Customized || Obtain a Special Item with a custom use | Special Items | 

input()