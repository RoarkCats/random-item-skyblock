advancement revoke @s only ris:ris/storage_solution/bundling_up/unbundled_trigger
execute if score @s ris.drop_item matches 0.. run scoreboard players add @s ris.bundle_use 1


execute if score @s ris.bundle_use matches 1.. run advancement grant @s[advancements={ris:ris/storage_solution/bundling_up/unbundled=false}] only ris:ris/storage_solution/bundling_up/unbundled

# Takes 7 sec to empty full bundle holding right click down
#       12 sec to empty clicking (if you didnt know could hold)
# so you need to have emptied about 50 items to get Item Vomit
execute if score @s ris.bundle_use matches 40.. run advancement grant @s[advancements={ris:ris/storage_solution/bundling_up/item_vomit=false}] only ris:ris/storage_solution/bundling_up/item_vomit
# can technically cheese this by holding right click with empty bundle in off hand while spewing items from a stack in hand, but unlikely