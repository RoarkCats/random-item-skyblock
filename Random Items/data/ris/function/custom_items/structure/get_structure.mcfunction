execute store result score rng ris.rng run random value 0..456


execute if score rng ris.rng matches 0..15 run function ris:custom_items/structure/group/end_city

execute if score rng ris.rng matches 16..27 run function ris:custom_items/structure/group/fossil

execute if score rng ris.rng matches 28 run data modify storage ris:random structure set value "igloo/bottom"
execute if score rng ris.rng matches 29 run data modify storage ris:random structure set value "igloo/middle"
execute if score rng ris.rng matches 30 run data modify storage ris:random structure set value "igloo/top"

execute if score rng ris.rng matches 31 run data modify storage ris:random structure set value "pillager_outpost/feature_cage1"
execute if score rng ris.rng matches 32 run data modify storage ris:random structure set value "pillager_outpost/feature_cage2"
execute if score rng ris.rng matches 33 run data modify storage ris:random structure set value "pillager_outpost/feature_cage_with_allays"
execute if score rng ris.rng matches 34 run data modify storage ris:random structure set value "pillager_outpost/feature_logs"
execute if score rng ris.rng matches 35 run data modify storage ris:random structure set value "pillager_outpost/feature_targets"
execute if score rng ris.rng matches 36 run data modify storage ris:random structure set value "pillager_outpost/feature_tent1"
execute if score rng ris.rng matches 37 run data modify storage ris:random structure set value "pillager_outpost/feature_tent2"
execute if score rng ris.rng matches 38 run data modify storage ris:random structure set value "pillager_outpost/watchtower"
execute if score rng ris.rng matches 39 run data modify storage ris:random structure set value "pillager_outpost/watchtower_overgrown"

execute if score rng ris.rng matches 40..55 run function ris:custom_items/structure/group/shipwreck

execute if score rng ris.rng matches 56..87 run function ris:custom_items/structure/group/underwater_ruin

execute if score rng ris.rng matches 88..152 run function ris:custom_items/structure/group/village

execute if score rng ris.rng matches 153..217 run function ris:custom_items/structure/group/woodland_mansion

execute if score rng ris.rng matches 218 run data modify storage ris:random structure set value "ruined_portal/giant_portal_1"
execute if score rng ris.rng matches 219 run data modify storage ris:random structure set value "ruined_portal/giant_portal_2"
execute if score rng ris.rng matches 220 run data modify storage ris:random structure set value "ruined_portal/giant_portal_3"
execute if score rng ris.rng matches 221 run data modify storage ris:random structure set value "ruined_portal/portal_1"
execute if score rng ris.rng matches 222 run data modify storage ris:random structure set value "ruined_portal/portal_2"
execute if score rng ris.rng matches 223 run data modify storage ris:random structure set value "ruined_portal/portal_3"
execute if score rng ris.rng matches 224 run data modify storage ris:random structure set value "ruined_portal/portal_4"
execute if score rng ris.rng matches 225 run data modify storage ris:random structure set value "ruined_portal/portal_5"
execute if score rng ris.rng matches 226 run data modify storage ris:random structure set value "ruined_portal/portal_6"
execute if score rng ris.rng matches 227 run data modify storage ris:random structure set value "ruined_portal/portal_7"
execute if score rng ris.rng matches 228 run data modify storage ris:random structure set value "ruined_portal/portal_8"
execute if score rng ris.rng matches 229 run data modify storage ris:random structure set value "ruined_portal/portal_9"
execute if score rng ris.rng matches 230 run data modify storage ris:random structure set value "ruined_portal/portal_10"

execute if score rng ris.rng matches 231..240 run function ris:custom_items/structure/group/nether_fossils

execute if score rng ris.rng matches 241..327 run function ris:custom_items/structure/group/bastion

execute if score rng ris.rng matches 328..368 run function ris:custom_items/structure/group/ancient_city

execute if score rng ris.rng matches 369..389 run function ris:custom_items/structure/group/trail_ruins

execute if score rng ris.rng matches 390..456 run function ris:custom_items/structure/group/trial_chambers