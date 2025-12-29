# wrapper function run by /debug/repeat/ray to ensure not mining lazy loaded at location
execute align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/repeat/lazy_load_prot
execute if entity @s[tag=ris.gen_unloaded] run return 0

function ris:custom_items/debug/debug