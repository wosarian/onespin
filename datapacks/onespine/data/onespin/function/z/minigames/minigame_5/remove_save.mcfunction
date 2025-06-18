
$execute as @s[tag=OS-5-inGame] if score @s OS-5-lives matches ..0 run data remove storage onespin:minigame_5 player.$(ID).save
execute if score @s OS-5-lives matches ..0 run title @s title {text:"You lost your save!",color:red}
execute if score @s OS-5-lives matches ..0 run scoreboard players set @s OS-5-lives 3