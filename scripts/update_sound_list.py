sounds = None
try :
    with open("sound_list.txt", "r") as f :
        sounds = f.read().splitlines()
except : pass
if sounds == None or len(sounds) < 1 :
    input("\n  No sounds found in sound_list.txt")
    exit()

lines = []
for s in sounds :
    if (":ambient." in s) or (":music." in s) or (":music_disc." in s) or (":weather." in s) : continue
    lines.append(f"execute if score rng ris.rng matches {len(lines)} run return run data modify storage ris:random sound set value \"{s}\"\n")
    print(lines[-1],end="")

path = "data/ris/function/alchemy/get_random_sound.mcfunction"
with open(path, "w") as f :
    f.write("# all sounds minus ambient, music, music_disc, weather\n")
    f.write(f"execute store result score rng ris.rng run random value 0..{len(lines)-1}\n\n")
    f.writelines(lines)

input(f"\n  File written to {path}")