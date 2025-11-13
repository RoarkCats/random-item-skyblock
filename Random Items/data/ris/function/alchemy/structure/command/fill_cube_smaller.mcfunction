# used when a special block is selected, radius -= 1
$execute store success score #success ris.rng run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 $(block) destroy
execute if score #success ris.rng matches 1 run return 1

$fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 $(block) destroy
$fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 $(block) destroy
$fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 $(block) destroy
$fill ~-2 ~0 ~-2 ~2 ~0 ~2 $(block) destroy
$fill ~-2 ~1 ~-2 ~2 ~1 ~2 $(block) destroy
$fill ~-2 ~2 ~-2 ~2 ~2 ~2 $(block) destroy
$fill ~-2 ~2 ~-2 ~2 ~2 ~2 $(block) destroy