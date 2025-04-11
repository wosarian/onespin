
# Main

scoreboard objectives add OS-playerID dummy
scoreboard objectives modify OS-forPlayerID displayname {"text": "Player ID"}
scoreboard objectives add OS-forPlayerID dummy
scoreboard objectives modify OS-forPlayerID displayname {"text": "For Every Player ID"}

# Constants

scoreboard objectives add OS-const-20 dummy
scoreboard objectives modify OS-const-20 displayname {"text": "Constant 20"}
scoreboard players set #OS-holder OS-const-20 20
scoreboard objectives add OS-const-24 dummy
scoreboard objectives modify OS-const-24 displayname {"text": "Constant 24"}
scoreboard players set #OS-holder OS-const-24 24
scoreboard objectives add OS-const-60 dummy
scoreboard objectives modify OS-const-60 displayname {"text": "Constant 60"}
scoreboard players set #OS-holder OS-const-60 60
scoreboard objectives add OS-const-1 dummy
scoreboard objectives modify OS-const-1 displayname {"text": "Constant 1"}
scoreboard players set #OS-holder OS-const-1 1
scoreboard objectives add OS-const-0 dummy
scoreboard objectives modify OS-const-0 displayname {"text": "Constant 0"}
scoreboard players set #OS-holder OS-const-0 0
scoreboard objectives add OS-const-15 dummy
scoreboard objectives modify OS-const-15 displayname {"text": "Constant 15"}
scoreboard players set #OS-holder OS-const-15 15

# Counters

scoreboard objectives add OS-loadedMobs dummy
scoreboard objectives modify OS-loadedMobs displayname {"text": "Amount of Loaded Mobs"}
scoreboard objectives add OS-loadedZombies dummy
scoreboard objectives modify OS-loadedZombies displayname {"text": "Amount of Loaded Zombies"}
scoreboard objectives add OS-loadedCreepers dummy
scoreboard objectives modify OS-loadedCreepers displayname {"text": "Amount of Loaded Creepers"}
scoreboard objectives add OS-loadedPigs dummy
scoreboard objectives modify OS-loadedPigs displayname {"text": "Amount of Loaded Pigs"}
scoreboard objectives add OS-loadedTNTs dummy
scoreboard objectives modify OS-loadedTNTs displayname {"text": "Amount of Loaded TNTs"}
scoreboard objectives add OS-loadedSquids dummy
scoreboard objectives modify OS-loadedSquids displayname {"text": "Amount of Loaded Squids"}
scoreboard objectives add OS-onlinePlayers dummy
scoreboard objectives modify OS-onlinePlayers displayname {"text": "Amount of Online Players"}

# Players

scoreboard objectives add OS-playerDamage dummy
scoreboard objectives modify OS-playerDamage displayname {"text": "Player Damage"}
scoreboard objectives add OS-playerPitch dummy
scoreboard objectives modify OS-playerPitch displayname {"text": "Player X Rotation"}
scoreboard objectives add OS-playerYaw dummy
scoreboard objectives modify OS-playerYaw displayname {"text": "Player Y Rotation"}
scoreboard objectives add OS-playerHealth health
scoreboard objectives modify OS-playerHealth displayname {"text": "HP","color":"red"}
scoreboard objectives add OS-playerMaxHealth dummy
scoreboard objectives modify OS-playerMaxHealth displayname {"text": "Player Maximum Health"}
scoreboard objectives add OS-playerHunger food
scoreboard objectives modify OS-playerHunger displayname {"text": "Player Hunger"}
scoreboard objectives add OS-playerX dummy
scoreboard objectives modify OS-playerX displayname {"text": "Player X Coordinate"}
scoreboard objectives add OS-playerY dummy
scoreboard objectives modify OS-playerY displayname {"text": "Player Y Coordinate"}
scoreboard objectives add OS-playerZ dummy
scoreboard objectives modify OS-playerZ displayname {"text": "Player Z Coordinate"}

# Playtime

scoreboard objectives add OS-playTime minecraft.custom:minecraft.play_time
scoreboard objectives modify OS-playTime displayname {"text": "Total Playtime (In Ticks)"}
scoreboard objectives add OS-playTimeSeconds dummy
scoreboard objectives modify OS-playTimeSeconds displayname {"text": "Total Playtime (In Seconds)"}
scoreboard objectives add OS-playTimeMinutes dummy
scoreboard objectives modify OS-playTimeMinutes displayname {"text": "Total Playtime (In Minutes)"}
scoreboard objectives add OS-playTimeHours dummy
scoreboard objectives modify OS-playTimeHours displayname {"text": "Total Playtime (In Hours)"}
scoreboard objectives add OS-playTimeDays dummy
scoreboard objectives modify OS-playTimeDays displayname {"text": "Total Playtime (In Days)"}

# Randoms

scoreboard objectives add OS-random-6 dummy
scoreboard objectives modify OS-random-6 displayname {"text": "Random Number From 6"}
scoreboard objectives add OS-random-2 dummy
scoreboard objectives modify OS-random-2 displayname {"text": "Random Number From 2"}
scoreboard objectives add OS-random-3 dummy
scoreboard objectives modify OS-random-3 displayname {"text": "Random Number From 3"}
scoreboard objectives add OS-random-20 dummy
scoreboard objectives modify OS-random-20 displayname {"text": "Random Number From 20"}
scoreboard objectives add OS-random-5 dummy
scoreboard objectives modify OS-random-5 displayname {"text": "Random Number From 5"}
scoreboard objectives add OS-random-100 dummy
scoreboard objectives modify OS-random-100 displayname {"text": "Random Number From 100"}
scoreboard objectives add OS-random-1000 dummy
scoreboard objectives modify OS-random-1000 displayname {"text": "Random Number From 1000"}