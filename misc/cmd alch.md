# instead of crappy ones some get destroyed maybe? unstable! blows up! would be kinda discouraging to player if too many tho
# concept?: bases and modifiers, if too many to make, some only need to be modifiers, 1+ base always required for a recipe though
# if go with modifiers, give items alchemic icons to indicate ⌘🔥 🜛🜚 (if explained, maybe on the paper?)

# do all cauldrons work? or do you perhaps throw in some trigger item to convert it?
# if all work, go from items in it, not when placed
# is there a cooldown? what's stopping ppl from say combining all their cmd & cmd 
# should cauldron req heat block below it?

"Secrets to Alchemy" Writable book sold by trader
# x Read advancement
# - Item description cauldron (enchanted?)
# - Item description paper (enchanted) maybe manually injected /give after X items gotten
# x Written book (weighted) or book & quill
# o Random item traders have % chance to get extra hint book trade (could have like 3 tiers or always same one) *Secrets to Alchemy* dont from dispensers
# these books could either be used in the alchemy themselves or could hint at a book being thrown in to create a compendium or something of your findings, tells info on what combos you've done, click to refresh pages item modf

# Each should have custom data either #0-35 used to identify and run cmds or string "debug/chain" that directly plugs in for the function to run

# Recipe Count: 6 (cmds), 10 (cmds+mc), 36 (no heads), 66 (all),  30 (modifiers no heads), 45 (modifiers all)

# 🜛 Command: Spawns a lot of 1 item / Worthless(?) riches
# 🜛 Chain: Multiplies / Duplicates / Increases
# 🜛 Repeat: Does it again / Generates / Produces

2 of the same :: Double-, Super-, -Max, -Double, -2.0

- Command & Command
Random item 1 item - 27 stack?  (1-1728)

- Command &> Chain :: Stack Gambler, Stack Multiplier, Command Multiplier
Gambling machine (random max stack multiplier 0-99) maybe can throw max stack and normal stack into cauldron to combine?

- Command &> Repeat :: Stack Generator, Command Generator
Generates 1 specific random item? (when broken: nothing drops / repeat drops / both?) might need to be faster

- Chain & Chain
Dupes to 64? (could maybe do with shulker as 32?)
Dupes a shulker 0-4? (50/50? 0-2? 0 or 2?)

- Chain <& Repeat :: Component Gambler, Component Multiplier, Component Randomizer, Component Tinkerer
Gambles existing components up/down? small % to gain or lose component?  -- augmentable bias with pottery sherds? maybe acts as protection only?

- Repeat & Repeat :: _, Component Generator, New Item Generator, Custom Item Generator
Generator that randomizes item components? spawns em with 2-4? random components -- augmentable bias with pottery sherds? maybe pot with 4 sides could bias rng when generating, place it atop generator?

# 🜚 Minecart: Spawns loot/chests / Treasure
# 🜛 Structure: Places structures/their parts / Builds structures
# 🜛 Jigsaw: Places features/nature/world gen misc / Flavors the world
# 🜚 Debug: Destroys / Breaks down / Undoes
# 🜚 Knowledge: Trades / Equivalent(?) exchange / True value / Linking things
# 🜚 Heads: Rarity, Quantity, Abundance / Augments / Enhances

- Minecart & Minecart
Spawns 4 chest loot tables and 8 loot loot tables
- Minecart <& Command :: Loot Dump, Command Minecart
Spawns 16 of the same chest loot table
- Minecart <& Chain :: Loot Dupe, Chain Minecart, Multiply Minecart, Multiplied Minecart
Sets the count of the items spawned to 16
- Minecart &> Repeat :: Loot Generator
Generates a random loot loot table (no blocks)

- Structure & Structure :: Giga Structure, Jigsaw Structure
Place structure (big, full)
- Structure <& Minecart :: Random Blocks, Cube Structure
Fill random blocks
- Structure <& Command :: Random Chunk, Chunk Structure
Fill random block
- Structure <& Chain :: Clone Paste
Paste (consumes schematic paper, clones, forceloads?)
- Structure &> Repeat :: Structure Generator
Places a single specific template repeatedly (low integrity %? only after first time?)

- Jigsaw & Jigsaw :: _, Biome Randomizer
Fill random biome
- Jigsaw <& Structure :: _, Block Shifter
Fill replace random (block id shift-like)
- Jigsaw <& Minecart :: Block Randomizer
Fill replace random (true random)
- Jigsaw <& Command :: Block Replacer
Fill replace random (all same random)
- Jigsaw <& Chain :: Clone Copy
Copy (two use, saves corners, can be reset, gives schematic paper non-dupable, can replicate dropped into cauldron with another clone copy)
- Jigsaw &> Repeat :: Jigsaw Generator
Places a single specific feature repeatedly

- Debug & Debug
Deletes 3x3x3 area (all blocks) and drops items
- Debug <& Jigsaw :: Vein Miner, Jigsaw Debugger
Vein mines
- Debug <& Structure :: Vein Miner Inverse, Inverse Vein Miner, Structure Debugger
Inverse vein mines (stopped by air/fluid)
Deletes structure placed (like a big undo button)
- Debug <& Minecart :: Debug Looter, Loot Debugger, Loot Breaker
Mines 3x3x3 area and drops random loot tables (maybe based on world pos?) 50% chance per block?
- Debug <& Command :: Debug Void, Debug Delete, Debug Clear, Void Debugger, Clear Debugger, Debug Breaker, Command Debugger
Mines 7x7x7 area and drops items (leave drops to settings alone?) doesnt break unbreakables!
- Debug <& Chain :: Debug Multiplier, Multiplied Debugger, Debug Duper, Dupe Debugger, Chain Debugger
Mines 3x3x3 area and drops items x16
- Debug &> Repeat :: Block Miner, Block Debugger, Debug Generator, Generator Debugger, Repeat Debugger
Silk touch Block Miner (should it be a beam? range? some way to rotate them so mine in all 6 dir? biggest motion when dropped? clicked with debug? interaction entity?)

- Knowledge & Knowledge
Spawns trader with 8 trades (8-12?)
- Knowledge &? Debug :: Trade Reroller, Trade Reroll, Knowledge Reroller, Knowledge Debugger, Trade Debugger
Rerolls existing trades (make sure works with others)  damages trader so needs healing?     (50/50 reroll each trade?)
- Knowledge <& Jigsaw :: Jigsaw Trader, Jigsaw Book
Spawns specific jigsaw block seller (1-3?)
- Knowledge <& Structure :: Structure Trader, Structure Book
Spawns specific structure block seller (1-3?)
- Knowledge <& Minecart :: Loot Trader, Loot Book
Spawns chest loot table seller (1-3?)
- Knowledge <& Command :: Stack Trader, Stack Book
Spawns trader with 1 trader for 64 items (1-3..?)
- Knowledge <& Chain :: Trade Multiplier, Trade Duper, Knowledge Multiplier
Randomly sets stack size input or output by 16 (1 time use?)
- Knowledge &> Repeat :: Trade Generator, Knowledge Giver, Knowledge Generator
Gives to new trades to trader above it (max 16 or deltes old trades)   maybe adds max +4 trades per trader, starts damaging when full instead of nothing?





# multiplier particles:
particle dragon_breath ~ ~0.4 ~ 0.15 0.15 0.15 0 3
particle sneeze ~ ~0.4 ~ 0.15 0.15 0.15 0 3
particle witch ~ ~0.2 ~ 0.15 0.15 0.15 0 4
particle scrape ~ ~0.4 ~ 0.15 0.15 0.15 1 3
particle glow ~ ~0.4 ~ 0.15 0.15 0.15 20 3
particle sculk_charge_pop ~ ~0.4 ~ 0.15 0.15 0.15 0.01 3
particle wax_off ~ ~0.4 ~ 0.15 0.15 0.15 0.7 2
particle end_rod ~ ~0.4 ~ 0.15 0.15 0.15 0.01 2