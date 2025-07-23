#
execute store result storage onespin:scores warp.ID int 1 run scoreboard players get @s warp
#
function onespin:teleport_stored_location with storage onespin:scores warp
#
scoreboard players reset @s warp

