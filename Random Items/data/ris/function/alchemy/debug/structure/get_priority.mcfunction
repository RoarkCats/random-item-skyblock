$data modify storage ris:vein miners[{id:$(id)}].todo prepend from storage ris:vein miners[{id:$(id)}].priority[0]
$data remove storage ris:vein miners[{id:$(id)}].priority[0]