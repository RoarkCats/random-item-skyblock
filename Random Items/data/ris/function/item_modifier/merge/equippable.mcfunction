execute if data storage ris:generator components[{id:"equippable"}].nbt.camera_overlay run return 0

execute store success score #success ris.rng run data modify storage ris:generator components[{id:"equippable"}].nbt.camera_overlay set from storage ris:generator components_merge[{id:"equippable"}].nbt.camera_overlay
execute if score #success ris.rng matches 1 run data modify storage ris:generator components[{id:"equippable"}] merge value {overlay:1b}