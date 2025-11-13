execute unless score refresh_settings_menu ris.settings matches 1 run return 0
$execute if entity @s[tag=ris.refresh_settings_menu] run return run function ris:msgs/$(menu)

tag @s add ris.refresh_settings_menu
$function ris:msgs/$(menu)
tag @s remove ris.refresh_settings_menu

# so that sound isn't repeated when re-run
# can't store score/data ahead of time when menu opened bc ppl could scroll up and click and old button and it'd be wrong
# could just put tag add/remove around function in the settings themselves, yeah...