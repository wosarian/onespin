
# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..3}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 4 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..3}] \ 
        run return fail

# Action

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s {"text":"                         Debug - Player Data"}
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
$tellraw @s ["Coords: ",{storage:"grenadier:players",nbt:"player.$(ID).x"}," ",{storage:"grenadier:players",nbt:"player.$(ID).y"}," ",{storage:"grenadier:players",nbt:"player.$(ID).z"}]
$tellraw @s ["Dimension: ",{storage:"grenadier:players",nbt:"player.$(ID).dimension"}]
$tellraw @s ["Spawnpoint: ",{storage:"grenadier:players",nbt:"player.$(ID).spawnpoint"}]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}