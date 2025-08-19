
execute \
    if entity @s[team=OS-1-team,tag=OS-isAFK] \
        run \
            return fail

$execute \
    if entity @s[team=OS-player-$(ID)] \
        run \
            return fail

$team add OS-player-$(ID)
$team join OS-player-$(ID) @s