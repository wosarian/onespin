
$execute as @s[scores={OS-playerDead=1..},tag=OS-5-inGame] if data storage onespin:minigame_5 player.$(ID).save run scoreboard players remove @s OS-5-lives 1
$execute as @s[scores={OS-playerDead=1..},tag=OS-5-inGame] if data storage onespin:minigame_5 player.$(ID).save run title @s title [{text:"You have ",color:red},{score:{name:"@s",objective:"OS-5-lives"}}," lives left!"]