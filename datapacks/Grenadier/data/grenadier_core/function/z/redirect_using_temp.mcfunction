
execute \
    store result storage grenadier:storage player.ID int 1 \
        run \
            scoreboard players get @s grenadier-playerID
execute \
    as @s \
        run \
            function #grenadier:runs_every_tick_as_player \
                with storage grenadier:storage player