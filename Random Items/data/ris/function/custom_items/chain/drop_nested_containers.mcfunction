# run as/at a container item being duped with filled bundles/containers inside
advancement grant @p[distance=..8,gamemode=!spectator,advancements={ris:special/customized/commander/nice_try=false}] only ris:special/customized/commander/nice_try


# copy container
summon item ~ ~0.1 ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
item replace entity @n[type=item,distance=..0.11,tag=ris.blank_item] contents from entity @s contents

# remove bundles/containers from original
item modify entity @s contents ris:remove_nested_containers
playsound item.bundle.drop_contents block @a ~ ~ ~ 1 1.6

# filter to just filled bundles/containers (not super possible..?)
# item modify entity @n[type=item,distance=..0.11,tag=ris.blank_item] contents ris:filled_bundles_filter

# damage kill container copy
damage @n[type=item,distance=..0.11,tag=ris.blank_item] 100 generic_kill

# kill duped items (not needed if filter worked)
execute as @e[type=item,distance=..0.11,tag=!ris.tagged_item,nbt={Age:0s,PickupDelay:0s}] unless items entity @s contents #bundles[!bundle_contents=[]] unless items entity @s contents *[container~{items:{contains:[{}]}}] run kill @s