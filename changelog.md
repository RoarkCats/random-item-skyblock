# Changelog
Visit the [releases](https://github.com/RoarkCats/random-item-skyblock/releases) page for more organized and formatted update changelogs

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