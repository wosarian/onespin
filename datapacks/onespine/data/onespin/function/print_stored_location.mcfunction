
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


$tellraw @s [{text:'$(ID)',color:light_purple},{text:": ",color:gray},{ storage: 'onespin:locations', nbt: 'stored_location.$(ID).name', color: 'green', click_event: { action: 'run_command', command: 'trigger warp set $(ID)' }, hover_event: { action: 'show_text', value: { text: 'Click to teleport to this location!', color: 'white' } } }]
