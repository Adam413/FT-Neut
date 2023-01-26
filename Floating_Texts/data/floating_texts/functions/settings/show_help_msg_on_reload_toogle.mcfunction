##
 # Description:	Enable option to make players glow constantly
 # Called by:	#floating_texts:settings (via chat links)
##

execute store success score #ft_success ft_settings run data modify storage floating_texts:settings ft_settings.show_help_msg_on_reload set value "OFF"
execute unless score #ft_success ft_settings matches 1 run data modify storage floating_texts:settings ft_settings.show_help_msg_on_reload set value "ON"

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{show_help_msg_on_reload: "ON"} run tellraw @s [{"text":"✎ Show help message on reload is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{show_help_msg_on_reload: "OFF"} run tellraw @s [{"text":"✎ Show help message on reload is now ","color":"gold"},{"text": "OFF","color": "red"}]

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{show_help_msg_on_reload: "ON"} run title @s actionbar [{"text":"✎ Show help message on reload is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{show_help_msg_on_reload: "OFF"} run title @s actionbar [{"text":"✎ Show help message on reload is now ","color":"gold"},{"text": "OFF","color": "red"}]

# Shows the settings again with the option modified
function floating_texts:settings/settings
