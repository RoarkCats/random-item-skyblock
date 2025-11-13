$execute if data storage ris:vein {miners:[{id:$(id),done:[{x:$(x),y:$(y),z:$(z)}]}]} run return 0

$data modify storage ris:vein update append value {x:$(x),y:$(y),z:$(z)}