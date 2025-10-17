summon area_effect_cloud ~ ~ ~ {Tags:["get_uuid"]}
execute store result score #lcg risRNG run data get entity @e[tag=get_uuid,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=get_uuid]