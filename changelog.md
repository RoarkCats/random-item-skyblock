# Changelog
Visit the [releases](https://github.com/RoarkCats/random-item-skyblock/releases) page for more organized and formatted update changelogs

## 3.0.0
WIP [changelog](/misc/changelog.md)

## 2.7
1.19.3-1.21.3 update! Under-the-hood changes galore— performance, fixes, & rebalances!

- Fixed issue preventing world from loading (curated a new up-to-date world with the skyblock generation pack)
- Updated pack format from `10` to `48`
- Renamed all subfolders of the `ris` namespace removing plurality (`s`)
- Did not rename the `tags` subfolder, but did rename its subfolders for plurality
- Updated item list with items from 1.19.3 through 1.21.3
- Fixed loot tables changing *some* instances of `name` to `value`
- Updated potion loot tables with 4 new effects
- Organized chest loot tables into the folder `chests`
- Updated chest loot tables with the Trial Chamber chests
- Rebalanced Command Block Minecart chest loot tables: Village (16 chests) weight 8->10, Trial Chambers (13 chests) weight ->10
- Removed `"treasure": true` for enchanted books (update fix for all types to drop)
- Removed `custom_items/goat_horns` loot table in favor of `set_instrument` function with `#minecraft:goat_horns`
- Updated (loot table) item nbt to component style (pain)
- Changed creator heads' names to be `item_name`s rather than `custom_name`s, allowing you to rename them without losing the original
- Updated written book download count, `Over 57 downloads`!
- Changed creator head predicates to check the `item_name`
- Updated instances of `alternative` to `any_of` in predicates and advancements
- Renamed function `horse-fix` to `untamable_fix` and optimized it with a new entity tag `#ris:untamable`
- Removed function `player_head_name_fix` in favor of modifying vanilla `player_head` loot table to retain name, lore, and custom data when mined
- Optimized & updated custom item `tag_item` function
- Replaced versions of `Count:Xb` with `count:X`
- Optimized & fixed Random Item Traders, renamed `trade` function to `add_trade`
- Buffed Random Item Traders with 3-5 trades when `op_cmd` setting is enabled (normally 2-4 trades)
- Switched RNG to use new `/random` command and removed `ris:rng/...` functions as no longer necessary
- Fixed & improved `jigsaw_replaceable` block tag
- Updated dust particle command format for disabled Item Generators
- Added `trial_spawner` and `vault` to the list of blocks breakable by Debug Sticks
- Added 215 new structures to the Structure Block! (Trail Ruins & Trial Chambers)
- Added 4 new features to the Jigsaw block (mostly cherry tree stuff)
- Updated skywars item/firework nbt to component style
- Updated Debug Stick break item nbt to component style
- Fixed a spelling mistake in the description of the Jigsaw block, `Ths` -> `This`
- Renamed advancement `totem_trigger` to `void_totem_trigger`
- Changed `head_collector` advancement criteria to reference creator head predicates 
- Updated advancements to 1.21 formatting
- Placing a `trial_spawner` now triggers the `mob_spawner` advancement
- Renamed `debug_break` block tag to `debug_breakable`
- Added `placeable_unbreakable` and `not_quite_unbreakable` block tags, used in their respective advancements and the `debug_breakable` block tag
- Updated `spawn_eggs` item tag and spawn egg advancements with new spawn eggs
- Recreated `music_discs` item tag for `groovin` since Mojang removed it -,-
- Added `cherry_sapling` and `bamboo` to the `saplings` item tag, used by the `finally_wood` advancement
- Added using Bone Meal to grow an Azalea tree as a possible way to get the `finally_wood` advancement
- Added `cherry_sapling` and `azalea`/`flowering_azalea` to the `botanist` advancement
- Adjusted the reset cmd for `ris.mined_ender_chest` as `main`/`tick` functions runs before `tick` advancement triggers now
- Optimized `player_head_checks` function: no longer interacts with `customized` advancement, runs less
- Changed `skull_enthusiast` advancement icon to the `wither_skeleton_skull`
- Fixed & optimized Command Block item count merging for custom items
- Chest minecarts and boats now count towards the `container_chaos` advancement
- Reduced number of unique items needed to be dropped for the `item_vomit` advancement from 64 to 48
- Changed `cobblestone_generator` advancement to be granted upon mining 32 cobblestone/stone in one spot (within 4 blocks)
- Added `player_head`, `written_book`, and `enchanted_book` as possible "special item" triggers for the `expert_item_identifier` advancement
- Added `trial_spawner` and `vault` as possible mine triggers for the `patient_miner` advancement
- Rewrote some of the setting descriptions for clarity
- Added setting `dragon_spawn_egg_prot` disabling Ender Dragon Spawn Eggs in dimensions other than The End
- Advancements `hazardous`, `hopper_on_rails`, and `storage_on_rails` now require the minecarts to be placed on `#minecraft:rails`
- Optimized code replacing `@e[sort=nearest,limit=1]` with `@n`
- Changed skywars player spawns from `diamond_block` to `gold_block`
- Updated skywars structures with new functions `skywars/setup/...` to more cleanly handle structure setup stuff
- Moved skywars structures to the `ris` namespace
- Rebalanced Structure Block structure weights by grouping more structure sets with lower super-weights in a new sub-folder `group`; you should see less `bastion`, `ancient_city`, and `underwater_ruin` spawns
- Updated custom item advancement criteria grants to use `on origin` and `@s` instead of just `@p`
- Renamed `custom_items/items` to `custom_items/item`
- Restructured & optimized `custom_items/item` function to be run as/at all (special) items specifically
- Added `custom_items/main` and `/chain/multiplier` functions to run the non-item commands previously handled in `custom_items/item`
- Optimized Item Generator item spawns and fixed items "jumping" when first spawned due to desynced motion
- Item Multipliers increase the `max_stack_size` of unstackable items to 16
- Added/Updated item tag `unstackable` for the advancement `wait_thats_illegal`
- Changed advancement `wait_thats_illegal` to only require an unstackable stacked over 1 rather than to 64 (no longer possible yet ;)
- Further optimized Command Block item spawning and fixed "jumping" motion desync issue

## 2.6
Advancement fixes & loot table adjustments

- Added Ancient City loot to Command Block Minecart drops
- Fixed random item weights from when Goat Horns were moved to add their instruments
- Fixed `player_head` considered a custom item for `customized` advancement
- Increased number of blocks placed required for their respective advancements to 80, 400, 2000, 10000
- Reverted `pedro` advancement trigger back to a scoreboard check
- Improved `cute_and_cuddly` advancement checks
- Fixed `brown_mushroom` criteria detection for `mycologist` advancement
- Fixed `safe_keeping` advancement detection interference from `container_chaos` detection
- Fixed `dismantled` advancement detection by moving the score reset from `main20` to `main`
- Decreased Enchanted Book enchanting level to a range between 25-60 to allow for all enchants to appear 

## 2.5
1.17-1.19 update! New custom items, loads of advancements, menus, settings, fixes, and overall improvements!

- Updated pack format to `10`
- Altered pack description name order
- Fixed inconsistent indentation
- Added 1.19 items to item list
- Updated load message for clarity
- Decreased Item Multiplier particle count
- Removed `minecraft:` from playsound and particle commands
- Fixed empty mined shulker boxes unable to be multiplied
- Added Reinforced Deepslate to Debug Stick breakable block list
- Revamped custom advancement menu
- Updated old advancements to the latest version
- Renamed advancement files to match advancement names
- Altered some old advancements
- Added over 60 new advancements
- Combined and separated random item loot tables
- Changed all scoreboard objectives to start with `ris.`
- Changed all scoreboard scores to use underscores instead of camel case
- Merged timer scoreboards `rdtimer` and `item_timer` into `ris.timer`
- Cleaned up and improved timer code
- Fixed custom items activating after being removed from an item frame
- Cleaned up and improved custom item code
- Improved Item Generator same item setting code
- Random Item Traders can now buy/sell enchanted books and custom heads (no longer part of the trader custom items setting)
- Optimized mined player head fix code
- Improved Random Item Trader code
- Fixed Command Block custom item duplication bug
- Improved and optimized Command Block code
- Mined blocks/mob drops can no longer activate Item Multipliers
- Chain and Repeating Command Blocks drop blocks they destroy when they activate
- Reviewed Chain and Repeating Command Block code
- Finally fixed Item Multiplier and Generator stacking in the same block
- Fixed custom items unusable atop Item Multipliers and Generators
- Switched Item Multipliers and Generators from armor stands to area effect clouds (much less entity lag)
- Switched Structure Block structure placement to use the `/place template` command
- Fixed Structure and Jigsaw Block duplication bug when Structure Blocks are used near the top of the world
- Fixed `/playsound` commands all playing to the `master` channel
- Added other village structure variants to Structure Blocks as a chance when a normal village structure is chosen
- Added 1.19 structures to Structure Blocks
- Fixed command summoned Command Blocks don't properly set the count of the item they give unless extra `Age` nbt is present
- Changed all tags to start with `ris.`
- Increased load message delay to 50 ticks
- Changed load message delay to 0 ticks when running `/reload` (when players are present)
- Removed command feedback from message functions
- Added Chain and Repeating Command Block place sounds
- Altered Structure Block item description
- Added a new custom item effect to Jigsaw Blocks centered around `/place feature`
- Added random vanilla potion variants to the types of potions and arrows when one is received
- Capitalized "item multiplier" and "item generator" in their item descriptions
- Added a new functionality to Totems of Undying allowing them to save you from the void
- Updated y-level detection to be compatible with new dimensional world sizes
- Illegalized stacked Bundles due to an item duplication issue
- Settings now reset to default values on load if out of bounds
- Fixed custom items to allow for proper use in same tick via Bundles and well timed item drops
- Fixed Allay thrown custom items considered player thrown so they won't activate from Allays
- Fixed Item Multipliers multiplying all items present in the same tick before disappearing
- Added a redstone particle indicator when Item Generators fail to generate an item due to being powered
- Added custom creator head powers granted when worn
- Updated Command Block Minecart item description
- Changed load message green dashes to solid green lines
- Revamped settings menu visuals
- Added settings menu audio and visual button confirmations
- Added individual custom item toggles
- Added a setting to globally toggle Item Multiplier and Generator floating names
- Added a setting to toggle the item giver globally
- Removed `custom_item` item tag from Enchanted Books, now allowing them to drop a full stack from Command Blocks
- Added 55 original creator and community quotes/phrases/splash texts signed by their player name to Written Books as variants
- Fixed, cleaned up, updated, and improved the skywars gamemode as a whole and its menu
- Removed settings and scores saved in the Random Item Skyblock world download (fixes same items on by default and same seeded rng issue)
- Fixed pack rng to actually generate a unique rng seed when first loading
- Fixed The End not generating randomly
- Moved custom terrain generation from the world's `level.dat` to a custom world generation datapack packed in with the world download
- Cleaned up the Random Item Skyblock world download, further purging unnecessary files
- Moved the world's starting bedrock up to y 62 so that Phantoms spawn again normally
- Added Goat Horn instrument variants
- Added a setting preventing or allowing Written Books to be multiplied at an Item Multiplier
- Added a setting to toggle the Totem of Undying's custom void functionality
- Changed instances of `.1` to `0.1`

## 2.4
Stacking bug fixes and tweaks

- Switched the default settings back for the Debug Stick to always drop items
- Lowered the forced minimum item timer time from 10 ticks to 5
- Command Blocks, Chain Command Blocks, Repeating Command Blocks, and Structure Blocks obtained through the Debug Stick will now stack with their generated counterparts again
- Custom heads mined will now stack with their generated counterparts again

## 2.3
Updated to 1.16, overhauled item giver, new Knowledge Book special item, enchanted books, void Nether, and much more!

- Converted entire random item system to loot tables (much better performance wise)
- Updated random items with 1.16 items
- Switched out rng system where still applicable (better rng and slightly improved performance)
- Updated cases of Roark9 to RoarkCats
- Switched the values of same items and different items in the settings (manual reset required when updating from and old version)
- Moved the item receive trigger out of the settings
- Renamed the item receive trigger from `rdreceive` to `receive_items`
- Switched the Command Block Minecart loot to loot tables (slightly improved performance)
- Updated the Command Block Minecart loot with 1.16 loot
- Breaking one of the three creator heads will now drop it with the correct name (so it'll now stack with unplaced heads)
- Item generators and duplicators can no longer be destroyed, without breaking the block, with a piston
- Item generators and duplicators can no longer activate in the void producing a glitched generator
- Item generators, duplicators, and structure blocks can no longer be spawned from a dispenser/dropper
- Item generators receiving a redstone signal will now stop producing items
- You can now place blocks above the item generators and duplicators
- Adjusted item duplicator particles and name height
- Altered advancement names and descriptions
- Changed the advancement background from stone to blackstone
- Moved around some advancements
- Removed the "Summoner" advancement as it's already a vanilla advancement
- Added Pigstep to the "Broken Record" and "Groovin'" advancement
- Increased the amount of Cobblestone needed for the "Cobblestone Generator" advancement
- Changed the "Your First Block" advancement icon from a Diamond Block to a Stone Block
- Changed the "Pedro!" advancement icon from a Panda Spawn Egg to a panda head
- Added a new advancement, "Well, there's your problem"
- Added 1.16 structures to the Structure Block's random structures
- Shulker Boxes containing command blocks can no longer be duplicated without the op command block setting enabled
- Made the /reload message flow better
- Reworded item descriptions
- Moved the Debug Stick breakable block tag from `data/minecraft/tags/blocks` to `data/ris/tags/blocks`
- The Debug Stick now has a new setting, a 50% chance to drop the item when it breaks a block, this is the new default
- Added special functionality to the Knowledge Book, introducing the Random Item Trader
- Added a setting for the Random Item Trader over custom items included in its trades
- Enchanted Books now spawn enchanted with 50 levels
- The Nether will now generate void with the `nether_wastes` biome
- Added an icon to the Random Item Skyblock world
- Removed some unnecessary files from the Skyblock world
- Updated pack format from `3` to `4`
- Increased reload message delay from 10 to 40 ticks for players loading the world
- Increased the gamerule `maxCommandChainLength` to 1000000

## 2.2
Item generator improvements, new advancements, and fixes

- Item generators have been fixed and will work in large quantities now!
- When using the "same items" mode generators will now generate the same item
- We removed custom end portals due to the addition of item multipliers
- New setting to disable special items/command blocks
- "Hardcore Player" has been fixed and should work more reliably
- The "Finally Wood" advancement  will now work with all saplings
- Two new advancements, "Fancy Air" and "Sweaty Palms", have been added
- Removed extraneous `advancement_triggers` function forgotten from prior version
- Optimized item giver inventory full check
- Scheduled reload message to appear after the player loads in
- Hard limited item giver delay to 10 ticks minimum
- Fixed Debug Stick special block drops activating

## 2.1
New settings, fixes, and skywars! 

- The reload message has been reconfigured and contains two new fields, settings and skywars
- You can now toggle how powerful command blocks are when it comes it their interactions with other command blocks
- Another toggle was added to determine whether the Debug Stick should drop the blocks it breaks
- The last toggle added decides if multiplying Shulker Boxes that contain items is allowed
- A fix has been implemented as to prevent you from putting armor on the item generator and multiplier
- Special items generated via the item generator won't take their effect until picked up and dropped again to prevent farms from breaking or destroying themselves
- Lastly, our own skywars has been fabricated with our first map to go with it! Skywars will allow you to fight your friends up in the sky with randomly generated loot. If the attached map wasn't enough, we implicated an option to setup any map with Random Item Skywars!
- Modified pack description to include authors
- Organized functions into folders
- Renamed scores, scoreboards, tags
- Pedro advancement now finds nearest panda

## 2.0
Custom items, mini end portals, and item toggles galore!

- You can now make a mini end portal by throwing a Nether Star in the middle of four End Portal Frames complete with Eyes of Ender
- The reload message is no longer required to stop receiving items, just run `/trigger rdreceive` to toggle your individual item giver
- There is now a setting in the reload message that toggles whether everybody gets the same items or different items
- You can now obtain the three creators' heads as random items
- Command Blocks, Repeating Command Blocks, Chain Command Blocks, Debug Sticks, Structure Blocks, and placing Command Block Minecarts now have a use!
- Removed extraneous file (emerald ore?)
- Items are no longer given when inventory full
- Zombie and Skeleton Horses are now rideable
- The item giver can be disabled for all by setting the `delay` to 0

## 1.5
Near complete different item multiplayer support & item bar

- Added pack description
- Touched up advancements
- Added Next Item timer bossbar (toggleable in load message)
- Replaced limited multiplayer different item system with dynamic limitless system 

## 1.4
Expanded different item multiplayer

- Expanded multiplayer with different items for up to 32 players
- Added `load` function and messages
- Changed scoreboard names
- Removed extraneous files

## 1.3
Added custom advancements

## 1.2
Limited different item multiplayer

- Item timer hard set
- Added multiplayer with different items for up to 4 players

## 1.1
- Item timer no longer hard set

## 1.0
Initial release for 1.14.4

- Item timer set to 600 ticks
