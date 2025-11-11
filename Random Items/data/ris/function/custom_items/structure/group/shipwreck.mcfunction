#20 included, outer weight of 16
execute store result score rng1 ris.rng run random value 0..19

execute if score rng1 ris.rng matches 0 run place template shipwreck/rightsideup_backhalf
execute if score rng1 ris.rng matches 1 run place template shipwreck/rightsideup_backhalf_degraded
execute if score rng1 ris.rng matches 2 run place template shipwreck/rightsideup_fronthalf
execute if score rng1 ris.rng matches 3 run place template shipwreck/rightsideup_fronthalf_degraded
execute if score rng1 ris.rng matches 4 run place template shipwreck/rightsideup_full
execute if score rng1 ris.rng matches 5 run place template shipwreck/rightsideup_full_degraded
execute if score rng1 ris.rng matches 6 run place template shipwreck/sideways_backhalf
execute if score rng1 ris.rng matches 7 run place template shipwreck/sideways_backhalf_degraded
execute if score rng1 ris.rng matches 8 run place template shipwreck/sideways_fronthalf
execute if score rng1 ris.rng matches 9 run place template shipwreck/sideways_fronthalf_degraded
execute if score rng1 ris.rng matches 10 run place template shipwreck/sideways_full
execute if score rng1 ris.rng matches 11 run place template shipwreck/sideways_full_degraded
execute if score rng1 ris.rng matches 12 run place template shipwreck/upsidedown_backhalf
execute if score rng1 ris.rng matches 13 run place template shipwreck/upsidedown_backhalf_degraded
execute if score rng1 ris.rng matches 14 run place template shipwreck/upsidedown_fronthalf
execute if score rng1 ris.rng matches 15 run place template shipwreck/upsidedown_fronthalf_degraded
execute if score rng1 ris.rng matches 16 run place template shipwreck/upsidedown_full
execute if score rng1 ris.rng matches 17 run place template shipwreck/upsidedown_full_degraded
execute if score rng1 ris.rng matches 18 run place template shipwreck/with_mast
execute if score rng1 ris.rng matches 19 run place template shipwreck/with_mast_degraded