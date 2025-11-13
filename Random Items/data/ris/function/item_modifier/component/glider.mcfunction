# Originally gave the equippable component "free" with all Gliders, removed to increase its difficulty :)

# data modify storage ris:generator component set value "equippable"
# execute unless data storage ris:generator components[{id:"equippable"}] run function ris:alchemy/double/repeat/component

execute unless data storage ris:generator components[{id:"glider"}] run data modify storage ris:generator components append value {id:"glider"}