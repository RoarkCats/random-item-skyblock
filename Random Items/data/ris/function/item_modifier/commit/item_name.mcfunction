data modify storage ris:generator words set from storage ris:generator components[{id:"item_name"}].words

execute unless items entity @s contents player_head[item_name] run item modify entity @s contents {function:"set_name",entity:"this",target:"item_name",name:[{nbt:"words[]",separator:" ",storage:"ris:generator"}]}
item modify entity @s contents {function:"set_name",entity:"this",target:"custom_name",name:[{nbt:"words[]",separator:" ",storage:"ris:generator","italic":false}]}
# item_name set so it persists through renames (unless creator head), custom_name set so it shows up in kill messages