data modify storage ris:sherds sherds.list set from block ~ ~ ~ sherds

data modify storage ris:sherds sherds.0 set from storage ris:sherds sherds.list[0]
data modify storage ris:sherds sherds.1 set from storage ris:sherds sherds.list[1]
data modify storage ris:sherds sherds.2 set from storage ris:sherds sherds.list[2]
data modify storage ris:sherds sherds.3 set from storage ris:sherds sherds.list[3]
function ris:alchemy/double/repeat/append_sherds with storage ris:sherds sherds