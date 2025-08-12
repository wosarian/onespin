
execute if score #grenadier-main grenadier-tickDelay matches 2.. run function #grenadier:runs_every_tick
execute if score #grenadier-main grenadier-tickDelay matches 2.. run scoreboard players reset #grenadier-main grenadier-tickDelay
scoreboard players add #grenadier-main grenadier-tickDelay 1