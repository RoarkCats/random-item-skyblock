# for Clean Slate advancement
# run by ../debug/structure/update after breaking each block at block

$data modify storage ris:vein miners[{id:$(id)}].items[{id:'$(item)'}] merge value {}
# will only ever be one instance per type