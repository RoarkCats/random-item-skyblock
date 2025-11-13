songs = [
    "minecraft:music.creative",
    "minecraft:music.credits",
    "minecraft:music.dragon",
    "minecraft:music.end",
    "minecraft:music.game",
    "minecraft:music.menu",
    "minecraft:music.nether.basalt_deltas",
    "minecraft:music.nether.crimson_forest",
    "minecraft:music.nether.nether_wastes",
    "minecraft:music.nether.soul_sand_valley",
    "minecraft:music.nether.warped_forest",
    "minecraft:music.overworld.badlands",
    "minecraft:music.overworld.bamboo_jungle",
    "minecraft:music.overworld.cherry_grove",
    "minecraft:music.overworld.deep_dark",
    "minecraft:music.overworld.desert",
    "minecraft:music.overworld.dripstone_caves",
    "minecraft:music.overworld.flower_forest",
    "minecraft:music.overworld.forest",
    "minecraft:music.overworld.frozen_peaks",
    "minecraft:music.overworld.grove",
    "minecraft:music.overworld.jagged_peaks",
    "minecraft:music.overworld.jungle",
    "minecraft:music.overworld.lush_caves",
    "minecraft:music.overworld.meadow",
    "minecraft:music.overworld.old_growth_taiga",
    "minecraft:music.overworld.snowy_slopes",
    "minecraft:music.overworld.sparse_jungle",
    "minecraft:music.overworld.stony_peaks",
    "minecraft:music.overworld.swamp",
    "minecraft:music.under_water"
]

songs_not_used = [
    "minecraft:music.nether.warped_forest",
]

def file_contents(song, name):
    return f"""{{
    "sound_event": "{song}",
    "description": "{name}",
    "length_in_seconds": 900,
    "comparator_output": 1
}}"""

for song in songs :
    if song in songs_not_used : continue

    song_id = song.replace("minecraft:","")
    file = song_id+".json"
    name = song_id.replace("."," - ",1).replace(".",": ",1).replace("_"," ").title()
    with open(file, "w") as f :
        f.write(file_contents(song, name))

input("\n  Done!")