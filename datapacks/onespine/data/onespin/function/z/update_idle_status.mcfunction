
execute unless predicate grenadier:entity/player/has_no_input run scoreboard players set @s OS-playerIdleTime 0
execute if predicate grenadier:entity/player/has_no_input run scoreboard players add @s OS-playerIdleTime 1
execute if score @s OS-playerIdleTime matches ..5999 run tag @s remove OS-isAFK
execute if score @s OS-playerIdleTime matches 6000.. run tag @s add OS-isAFK
team join OS-AFK @s[tag=OS-isAFK,team=!OS-1-team]