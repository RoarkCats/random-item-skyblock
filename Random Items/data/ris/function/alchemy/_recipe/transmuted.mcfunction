execute if entity @s[tag=ris.transmuted_ignore] run return 0

execute if items entity @s contents written_book run function ris:alchemy/book/in_cauldron
execute if items entity @s contents jigsaw[custom_data~{ris:{function:"jigsaw/chain"}}] run function ris:alchemy/jigsaw/chain/in_cauldron

tag @s add ris.transmuted_ignore