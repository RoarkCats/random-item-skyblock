# Changelog
Visit the [releases](https://github.com/RoarkCats/random-item-skyblock/releases) page for more organized and formatted update changelogs

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