items = None
try :
    with open("item_list.txt", "r") as f :
        items = f.read().splitlines()
except : pass
if items == None or len(items) < 1 :
    input("\n  No items found in item_list.txt")
    exit()


def compile_tag_list(ids) :
    out = "{\n\t\"values\": ["
    for id in ids :
        out += f"\n\t\t\"{id}\","
    out = out[:-1]+"\n\t]\n}"
    return out


blacklist = ["command_block","chain_command_block","repeating_command_block","structure_block","jigsaw","command_block_minecart","debug_stick","knowledge_book","written_book","enchanted_book","goat_horn","potion","splash_potion","lingering_potion","tipped_arrow","suspicious_stew","ominous_bottle","suspicious_sand","suspicious_gravel"]; blacklist = ["minecraft:"+b for b in blacklist]
path = "data/ris/tags/item/all_items.json"
with open(path, "w") as f :
    f.write(compile_tag_list([i for i in items if i not in blacklist]))
print(f"\n  File written to {path}")


input("\n\n Do not forget to update [unstackable, spawn_egg, sapling, boat] lists/advancements ")