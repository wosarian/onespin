
# Uses teleport function with player save data.
$execute as @s[scores={OSID=$(ID)}] run function onespin:z/teleport with storage onespin:minigame_5 player.$(ID).save