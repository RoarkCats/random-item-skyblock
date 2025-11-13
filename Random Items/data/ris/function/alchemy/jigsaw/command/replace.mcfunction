$execute store success score #success ris.rng run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 $(block) replace #ris:not_air
execute if score #success ris.rng matches 1 run return 1

$fill ~-4 ~-4 ~-4 ~4 ~-4 ~4 $(block) replace #ris:not_air
$fill ~-4 ~-3 ~-4 ~4 ~-3 ~4 $(block) replace #ris:not_air
$fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 $(block) replace #ris:not_air
$fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 $(block) replace #ris:not_air
$fill ~-4 ~0 ~-4 ~4 ~0 ~4 $(block) replace #ris:not_air
$fill ~-4 ~1 ~-4 ~4 ~1 ~4 $(block) replace #ris:not_air
$fill ~-4 ~2 ~-4 ~4 ~2 ~4 $(block) replace #ris:not_air
$fill ~-4 ~3 ~-4 ~4 ~3 ~4 $(block) replace #ris:not_air
$fill ~-4 ~4 ~-4 ~4 ~4 ~4 $(block) replace #ris:not_air