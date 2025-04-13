
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


$tellraw @s [ '$(ID): ', { storage: 'grenadier:locations', nbt: 'stored_location.$(ID).name', color: 'green', click_event: { action: 'run_command', command: 'trigger warp set $(ID)' }, hover_event: { action: 'show_text', value: { text: 'Click to teleport to this location!', color: 'white' } } }, ' | ', { text: 'OP', color: 'light_purple', hover_event: { action: 'show_text', value: { text: 'If OP is 1, then this stored location can only be\naccessed by players with minimum permission level of 2 or more.' } } }, ': ', { score: { objective: 'OS-storedLocation-$(ID)-operator', name: '#OS-bob' } } ]
