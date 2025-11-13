blocks = None
try :
    with open("block_list.txt", "r") as f :
        blocks = f.read().splitlines()
except : pass
if blocks == None or len(blocks) < 1 :
    input("\n  No blocks found in block_list.txt")
    exit()


def compile_tag_list(ids) :
    out = "{\n\t\"values\": ["
    for id in ids :
        out += f"\n\t\t\"{id}\","
    out = out[:-1]+"\n\t]\n}"
    return out


lines = [f"execute if score rng ris.rng matches {i} run return run data modify storage ris:random block set value \"{b}\"\n" for i,b in enumerate(blocks)]
lines.insert(0,f"execute store result score rng ris.rng run random value 0..{len(lines)-1}\n\n")
path = "data/ris/function/alchemy/get_random_block.mcfunction"
with open(path, "w") as f :
    f.writelines(lines)
print(f"\n  File written to {path}")


blacklist = ["air","cave_air","void_air"]; blacklist = ["minecraft:"+b for b in blacklist]
path = "data/ris/tags/block/not_air.json"
with open(path, "w") as f :
    f.write(compile_tag_list([b for b in blocks if b not in blacklist]))
    # f.write(compile_tag_list(set(blocks)-set(blacklist)))    # this is cool and better but it randomizes the order
print(f"\n  File written to {path}")


blacklist = ["air","cave_air","void_air","moving_piston","command_block","chain_command_block","repeating_command_block","structure_block","jigsaw"]; blacklist = ["minecraft:"+b for b in blacklist]
path = "data/ris/tags/block/clonable.json"
with open(path, "w") as f :
    f.write(compile_tag_list([b for b in blocks if b not in blacklist]))
print(f"\n  File written to {path}")


input("")