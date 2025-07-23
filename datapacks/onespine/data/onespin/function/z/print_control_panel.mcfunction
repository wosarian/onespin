
# Tests if the executor is a player entity and returns the function if false.
execute if entity @s[type=!player] run tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run return fail

execute if score @s panel matches 0 run tellraw @s ["",{"text":"Requires to be executed through /trigger panel","color":"red"}]
#
execute if score @s panel matches 0 run return fail

# Print the executor the Operator Panel.
tellraw @s ["------------------ ",{"text":"Control Panel","color":"aqua","bold":true}," --------------------"]
$tellraw @s ["Name color: ",{"text":"▉","color":"dark_red","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_red"}},{"text":"▉","color":"red","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color red"}},{"text":"▉","color":"gold","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color gold"}},{"text":"▉","color":"yellow","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color yellow"}},{"text":"▉","color":"dark_green","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_green"}},{"text":"▉","color":"green","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color green"}},{"text":"▉","color":"aqua","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color aqua"}},{"text":"▉","color":"dark_aqua","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_aqua"}},{"text":"▉","color":"dark_blue","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_blue"}},{"text":"▉","color":"blue","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color blue"}},{"text":"▉","color":"light_purple","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color light_purple"}},{"text":"▉","color":"dark_purple","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_purple"}},{"text":"▉","color":"white","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color white"}},{"text":"▉","color":"gray","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color gray"}},{"text":"▉","color":"dark_gray","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color dark_gray"}},{"text":"▉","color":"black","click_event": {"action": "run_command","command": "/team modify OS-player-$(ID) color black"}}]
tellraw @s "-----------------------------------------------------"

scoreboard players reset @s panel
