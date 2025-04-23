
# Every Tick | Player | Debug | Print Player Data | Permission

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..3}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 4 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..3}] \ 
        run return fail

# Every Tick | Player | Debug | Print Player Data | Action

tellraw @s ["----------------------------"]
$tellraw @s ["Coords: ",{storage:"grenadier:players",nbt:"player.$(ID).x"}," ",{storage:"grenadier:players",nbt:"player.$(ID).y"}," ",{storage:"grenadier:players",nbt:"player.$(ID).z"}]
$tellraw @s ["Dimension: ",{storage:"grenadier:players",nbt:"player.$(ID).dimension"}]
$tellraw @s ["Spawnpoint: ",{storage:"grenadier:players",nbt:"player.$(ID).spawnpoint"}]
tellraw @s ["----------------------------"]