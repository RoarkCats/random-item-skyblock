# Changelog
Visit the [releases](https://github.com/RoarkCats/random-item-skyblock/releases) page for more organized and formatted update changelogs

## 3.0.0
Alchemy 1.21.4 update: 40 new custom items with near-infinite variation! [Official RIS Wiki](https://randomitemskyblock.wiki.gg)!<br>
111 new advancements and 2 new pets! Complete settings revamp with 26 new settings!

- Added **Alchemy** (36 new Alchemy Items)
- Added *~~Compendium Alchimiae~~*
- Added ~~Secrets to Alchemy~~ to the first few Item Traders spawned per player and the Written Book variation pool
- Added 17 new Alchemy Item settings as well as individual toggles for each Alchemy Item
- Added 8 new Written Book quotes from ThatOtherAndrew, Vr_North, elixirs_, HellsMinimum, Equ1vocate, SaltyDucKling
- <details><summary>Added 17 new advancements to the Random Item Skyblock tab [click for details]</summary><blockquote>Bundle-ception, Crammed, Overflowing, Spot!, Moro!, Undead Horseman, Infested, Mob Slaughter House, Air Lift, Rocket Flight, Maximal Thrust, Star of the Show, Rocket Launcher, Loot Box!, Shifty Loot, Notch Apple, Snow Generator</blockquote></details>
- <details><summary>Added 9 new advancements to the new Special Items tab [click for details]</summary><blockquote>Stonks, Block Street Buyer, Special Sale, Redstone Activated, Nice Try, Powered Off, Item Farm, Item Factory, Stack Overflow</blockquote></details>
- <details><summary>Added 85 new advancements to the new Alchemy Items tab [click for details]</summary><blockquote>Mysterious Chapters, Secrets of Old, Transmuted Knowledge, Transmutation!, It's a Science, Alchemical Enthusiast, True Alchemist, Auto-Refill, Redstone Alchemy, Nicolas Flamel The Legendary Alchemist, True Random, Worthless, Abysmal, Improvements, Perfection, Masterpiece, Locked, Component Connoisseur, Attribute Alchemist, That'll Last, Sus, Hmmmm, Keep Your Secrets Then, That's Not a Totem!, Low Budget, Paxel, Multitool, Honey Where Are My Leggings?, Cover Me With Junk, I Can't See!, Hat Fashion, Plated Elytra, Enchanted? Oh-, Over-Enchanted, Mendfinity, Cross-Bow, Tasty, All Powerful…?, Houdini, Surprise Gift, Oops..., Zero Calories!, Finally Some Good Creaking Food, Forgiving Cocktail, Fine Wine, Full Gallon, Second Life, Boss Bar, Downsizing, Go Big or Go Home, Decimated, One Hit Man, Vaporized, I am Speed, Ka-Chow!, Supersonic, Bouncy Castle, To the Moon!, Double Down, Generational, Componential, Loot Loot!, Buying in Bulk, Super-Duper, Ancient Architecture, Exterior Designer, Ctrl+C Ctrl+V, Controlled Demolition, Refined Knowledge, Sherd Augmentation, Full Focus, Standardized Blueprints, Average Coal Vein, Clean Slate, Unlucky, Inflation, $ Profit $, Overeducated, 1 Shulker 2 Shulker No Shulker Filled for You!, Especially Special, Stack Size Transmutation, Bigger Stacks, Max Stack, Moving Day, Divide By Zero</blockquote></details>
- Added 2 new named pets! 🐾
- Replaced instances of `nbt={Item:{id:""}` with `if items entity @s contents`
- Item Multipliers can only dupe items with the `ris.tagged_item` tag
- Restructured and optimized the `custom_items/chain/dup_item` function checks with `return` and a new item tag `dupe_blacklist` (applicable when `op_cmds` setting off)
- Renamed instances of `dup` with `dupe` in settings and function names
- Optimized and standardized name visibility checks for generators/multipliers with the new function `custom_items/name_visibility`
- Renamed `custom_items/toggle_name` to `name_toggle`
- Optimized generator/multiplier spawn functions with `return` and removed name visibility tags/nbt (auto-set by visibility function)
- Combined `custom_items/chain/dupe_item` into `custom_items/chain/dupe` (feasible post restructuring)
- Switched instances of data storage `minecraft:ris XXX.YYY` to `ris:XXX YYY`
- Custom items dropped from breaking containers and spawned from vaults/trial spawners/ominous item spawners are tagged with ris.spawned_item (will no longer activate custom stuff)
- Command blocks can now spawn stacks of bundles (since they don't stay stacked without `max_stack_size` component)
- Moved loot tables `ris:chests/...` into `ris:loot/chests/...` 
- Disabling the Item Timer (setting) now immediately fills up the `Next Item` bar
- Added a new destroy range particle preview to destructive special items with a setting to toggle it
- Switched the generator delay to modulo the `ris.generator` `generator` score with its speed in cycles per generation (2 for Item Generators, dynamic score for alchemy generators)
- Split `custom_items/structure/spawn` into `/get_structure` and `/place` storing the template name in data for ease of access elsewhere
- Optimized `custom_items/structure/clear_spawned_blocks` combining the two fill commands with a new tag `ris:structure_jigsaw`
- Added snowflake particles for when jigsaws spawn icebergs at the bottom of the world
- Renamed `void_range` predicate to `y_range_void` to match other conventions
- Updated `y_range_` predicates to work in non-vanilla (custom) dimensions (assumed to have overworld height)
- Bundles can now be duped excluding their `max_stack_size` (so they don't stay stacked when picked up)
- Removed redundant block checks in `custom_items/debug/debug` and moved positioning `~ ~-0.1 ~` out to `custom_items/item`
- Renamed `custom_items/debug/...` replacing `block-break`/`block-mine` with `block_break`/`block_mine`
- Replaced repeated break effects in `block_mine` with a call to `block_break`
- Added function `mine_other` and `mine_other_container` run by `block_mine` when run at a position without a `#ris:debug_breakable` block, mines block with touch (drops items if container)
- Aligned debug stick block drops to the center of the block
- Added `custom_items/trader/knowledge` function that handles `knowledge_book` specific special item effects (moved out from `../trader` as a wrapper function)
- Halved the amount of `warped_spore` particles released by Random Item Traders when spawned
- Optimized and secured `custom_items/trader/add_trade` with `loot replace` and blank items instead of `loot spawn` (was possible to give traders specific item trades with perfect positioning)
- Random Item Traders now keep their `ris.trader` tag and are instead temporarily initiated with `ris.new`; old Traders will not work with certain new Knowledge items
- Removed `custom_items/trader/spawn` (moved into `../knowledge`) and added `../trade_items` function to slightly optimize adding new trades
- Switched special item description color from `red` to `gray`
- Removed jigsaw/structure block destruction warning from item description (in favor of destroy range particle display)
- Added loot tables for each individual special item under `custom_items/special/..`, `custom_items/op` & `../special` and the function `custom_items/debug/block_mine` now reference these
- Upgraded the drop checks in the function `custom_items/debug/block_mine` to use a loot table `custom_items/debug_block_mine` and `loot replace`
- Renamed loot table `custom_items/special` to `other`
- Added loot table and wrapper function `custom_items/give_all` for creative use
- Renamed `Random Item Trader` to `Item Trader` when spawned in (similar to (Random) Item Generator)
- Added `#ris:chest_boat` entity tag replacing `chest_boat` references *because we now need to have unique entities for each wood type despite their just being variants I guess*
- Updated checks for the `bundle` to use `#bundles` with the addition of colored bundles
- Changed objective `ris.bundle_use` to type `dummy` incremented by advancement `unbundled_trigger` and new objective `ris.drop_item`
- Renamed function `advancements/bundle` to `bundle_use` and objective `ris.bundle_use` to `ris.bundle_use`
- Revised bundle related advancements
- Updated `tp` commands used to rotate with `rotate` command
- Replaced void totem damage effect with `damage` command
- Removed `void_totem_trigger` advancement and function `custom_items/totem/trigger`, now run from `main`, improved checks look for `death_protection` component instead of the item
- Fixed `player_head_checks` function detection from `custom_data=` to `custom_data~` (works if more custom data is present)
- Moved all instances of item `custom_data` into the `ris` namespace (`{custom_item:1b}` -> `{ris:{custom_item:1b}}`)
- Shortened Repeating Command Block description 'a Random Item Generator' -> 'an Item Generator'
- Renamed special item setting `jigsaw_block` to `jigsaw` to match item id 
- Updated pack format from `48` to `61`
- Updated item, block, and jigsaw lists to 1.21.4 (5 new jigsaws!)
- Removed `untamable` entity_type and `untamable_fix` function
- Added Zombie/Skeleton Horse Spawn Eggs to the loot table `custom_items/other` with the baked in `Tame:1b` component (also removed from item tag list `all_items`)
- Improved `gotta_spawn_em_all`/`cute_and_cuddly` advancement trigger function with new entity tag `ris:spawnable` and `ris.spawnable_old` tag replacing reliance on `ris.retagged`, also now used to help name `pedro`
- Removed constant support for old tags, `retag_old_tags` function remains but must be run manually or from settings (only required once on loaded generators/dupers for *really* old RIS worlds)
- Removed `msgs/reset_feedback` previously run by all chat buttons with a `gamerule sendCommandFeedback` toggle (no longer works like it did before :\ )
- Added wrapper function `settings/_settings` -> `msgs/settings`
- Revamped settings menu into 3 sub-sections: General, Special Item, Alchemy Item
- Highlighted certain clickable text with a darker `shadow_color`
- Added [] around the clickable commands in the reload message
- Reorganized the `settings` folder so that each setting has its own sub-folder with `enable`, `disable`, `msg`, and anything else related (`msg` pulled from the old `msgs/settings` which now references these)
- Moved default settings from load to function `settings/_load_defaults`
- Added Reset Defaults option to settings menu with confirmation and function `settings/_reset_defaults` that resets settings and calls `../_load_settings`
- Highlighted selected settings with a lighter `shadow_color`
- Added setting Refresh Settings Menu
- Added setting Retag Old Tags, moved and renamed function `retag_old_tags` to `settings/general/retag_old_tags/retag`
- Added `ris.destroy_range_preview` trigger to individually toggle its visibility
- Inverted `ris.receive_items` trigger sounds, disabling now plays the lower pitch ding
- Switched trigger text to actionbar
- Applied title case to settings list
- Rewrote some settings: Same Random Items, Void Totems, Special Item Effects, Multipliable Shulker Boxes, Multipliable Written Books, Overpowered Command Blocks, and other small tweaks
- Changed Overpowered Command Blocks setting (`op_cmd`) to no longer buff the amount of loot dropped by Command Block Minecarts and trades given to Item Traders by the Knowledge Book
- Split Overpowered Command Blocks into 2 settings: Multipliable Special Items (`special_item_dupe`), Command Block Special Item Count (`cmd_special_items`)
- Changed setting Command Block Special Item Count to accept any number 0-64 dynamically
- Capitalized instances of "Special Item"
- Depluralized the individual Special Items settings menu
- Expanded setting Traders Sell Special Items with a 'Limited' option that allows the trades but limits its stock referencing the Command Block Special Item Count setting (new default)
- Changed setting Multipliable Shulker Boxes to multiply filled shulkers by x2 instead of x16 with the Item Multiplier
- Added tag `ris.contains_items` to function `custom_items/tag_item` to optimize usage in dupe functions (also checks for `container_loot`)
- Command Block Minecarts can now also be dropped as well as placed to activate their function
- Fixed all Command Block Minecarts turning into loot, now only those placed by players and dispensers will drop loot by observing the `Fire` initial data value and `Command`
- Changed `container_chaos` advancement to be hidden and after `loot_box`
- Updated the `pedro` advancement, it can now properly be re-achieved after removing it with commands
- Added setting Dispensable Special Items which now controls if they can be activated by dispensers (not droppers) and which ones
- Removed tag `ris.hand_dropped`, replaced by Dispensable Special Items setting and inverse `ris.ejected_item` tag
- Added setting Dispensed Special Item Delay which sets the `PickupDelay` of dispensed Special Items
- Revised the reload message item giver delay message for clarity and brevity
- Moved trigger functions into new `trigger` folder, renamed to match their triggers, and optimized structure with scores
- Moved `potions/all` loot table references into `custom_items/other`
- Added `potions/suspicious_stew` with all its variants
- Added `potions/ominous_bottle` with all its variants
- Reworked Command Block Minecarts to now drop loot generally (1-3+ chests + other loot)
- Modified `custom_items/tag_item` function run from `../item` to return differently for custom items allowing them to activate 1 tick sooner as soon as they're registered
- Added Loot Box Shulkers setting enabled by default adding a few extra items to Shulker Boxes given to players
- Reorganized advancement file structure for my sanity (there wasn't any before)
- Renamed `custom_items/totem/` folder to `../void_totem/`
- Fixed Star Gazer advancement from triggering with void totems and improved trigger with predicate flag `is_on_ground` over an nbt check
- Changed advancement tab/root name visuals, removing `bold` in favor of `shadow_color`
- Moved the `customized` advancements to new Special Items tab
- Moved Expert Item Identifier advancement to Special Items tab
- Switched some `ris.failed_dupe` tag additions to call `advancements/nice_try` instead (same functionality)
- Switched generator disabled particles to call `custom_items/repeat/off` instead (same functionality)
- Added multiplier fail sounds/particles when `ris.failed_dupe` tag is added with function `custom_items/chain/fail`
- Optimized `custom_items/repeat/same_item` and `../dif_item` for to use `item replace` instead of `data modify` for Same Items setting
- Moved position alignment from `custom_items/item` to `../chain/chain` and `../repeat/repeat` for consistent usage
- Staggered scheduled `advancements/main_<n>` functions so they don't converge on the same tick at times
- Fixed spectators able to receive items from the item giver
- Clarified PhoenixSC head description from "items received" to "item rate"
- Set `customized` advancement to hidden to hide category contents until unlocked
- Added right click protection to custom `knowledge_book` items, returning them
- Added random item drops to brushing Suspicious Sand/Gravel
- Filled Bundles now pop out of Shulker Boxes being duped so as not to be included
- Added a link to report bugs to the reload message and Compendium
- Swapped reload message player names around for accuracy
- Trimmed reload message (skywars line) to better fit in chat
- Added another button to set the item giver delay in the General Settings tab
- Added sub block tag `special_blocks` now referenced by `debug_breakable`
- Removed Command Block Minecart from the `dupe_blacklist` item tag
- Nerfed unstackable multiplication count from 16 to 4 (max stack size still 16)
- Added setting Multiplier Unstackable Count (set to 4 by default)
- Added `pack.png` pack icon!
- Added value checks so `maxCommandChainLength`, `commandModificationBlockLimit` don't override larger values when increased
- Fixed lazy loaded generators from spawning more than 5 items while unloaded/not entity processing
- Fixed some advancements being granted to nearby spectators
- Added generator delay particles shown every cycle when enabled and not generating
- Fixed dead players receiving items
- Fixed Same Item random player selection for heads could pick spectators/non-receivers 
- Replaced setting Debug Stick Removed Block Drops with a percentage based setting Debug Stick Block Drop Chance
- Added valid input ranges to button hover text in numeric settings
- Changed Jigsaw `monster_room` feature, tries to face entrance towards player  
- Renamed references of `Jigsaw` to `Jigsaw Block` to match the item name (item id lacks "block" unlike other blocks) 
- Added [Random Item Skyblock Wiki](https://randomitemskyblock.wiki.gg) link to reload message
- Switched `true_void_walker` trigger from `tick` to `location` (slower)
- Added a ratings notification sent out in chat after 3h active playtime
- Changed `customized` advancement to require Special Items to be enabled to unlock
- Fixed RoarkCats and Ziplaw creator heads still functioning when Special Items disabled with new predicate `creator_heads/enabled`
- Tweaked Item Vomit advancement description adding "around"

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
