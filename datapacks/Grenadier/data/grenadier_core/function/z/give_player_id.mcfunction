
execute \ 
    unless score @s grenadier-playerID = @s grenadier-playerID \ 
        store result score @s grenadier-playerID \ 
            run \
                scoreboard players add #grenadier-lastID grenadier-playerID 1