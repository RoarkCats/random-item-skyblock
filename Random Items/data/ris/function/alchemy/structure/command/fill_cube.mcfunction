$execute store success score #success ris.rng run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 $(block) destroy
execute if score #success ris.rng matches 1 run return 1

$fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 $(block) destroy
$fill ~-3 ~-2 ~-3 ~3 ~-2 ~3 $(block) destroy
$fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 $(block) destroy
$fill ~-3 ~0 ~-3 ~3 ~0 ~3 $(block) destroy
$fill ~-3 ~1 ~-3 ~3 ~1 ~3 $(block) destroy
$fill ~-3 ~2 ~-3 ~3 ~2 ~3 $(block) destroy
$fill ~-3 ~3 ~-3 ~3 ~3 ~3 $(block) destroy