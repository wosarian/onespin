
# Main

scoreboard objectives add grenadier-playerID dummy
scoreboard objectives modify grenadier-playerID displayname {"text": "Player ID"}
scoreboard objectives add grenadier-playerPermissionLevel dummy
scoreboard objectives modify grenadier-playerPermissionLevel displayname {"text": "Player Permission Level"}

# Constant Scores in #grenadier-main

scoreboard objectives add grenadier-const-20 dummy
scoreboard objectives modify grenadier-const-20 displayname {"text": "Constant 20"}
scoreboard players set #grenadier-main grenadier-const-20 20
scoreboard objectives add grenadier-const-24 dummy
scoreboard objectives modify grenadier-const-24 displayname {"text": "Constant 24"}
scoreboard players set #grenadier-main grenadier-const-24 24
scoreboard objectives add grenadier-const-100 dummy
scoreboard objectives modify grenadier-const-100 displayname {"text": "Constant 100"}
scoreboard players set #grenadier-main grenadier-const-100 100
scoreboard objectives add grenadier-const-60 dummy
scoreboard objectives modify grenadier-const-60 displayname {"text": "Constant 60"}
scoreboard players set #grenadier-main grenadier-const-60 60
scoreboard objectives add grenadier-const-1 dummy
scoreboard objectives modify grenadier-const-1 displayname {"text": "Constant 1"}
scoreboard players set #grenadier-main grenadier-const-1 1
scoreboard objectives add grenadier-const-0 dummy
scoreboard objectives modify grenadier-const-0 displayname {"text": "Constant 0"}
scoreboard players set #grenadier-main grenadier-const-0 0
scoreboard objectives add grenadier-const-15 dummy
scoreboard objectives modify grenadier-const-15 displayname {"text": "Constant 15"}
scoreboard players set #grenadier-main grenadier-const-15 15
scoreboard objectives add grenadier-const-10 dummy
scoreboard objectives modify grenadier-const-10 displayname {"text": "Constant 10"}
scoreboard players set #grenadier-main grenadier-const-10 10
scoreboard objectives add grenadier-const-5 dummy
scoreboard objectives modify grenadier-const-5 displayname {"text": "Constant 5"}
scoreboard players set #grenadier-main grenadier-const-5 5

# Counter Scores in #grenadier-main

scoreboard objectives add grenadier-loadedEntities dummy
scoreboard objectives modify grenadier-loadedEntities displayname {"text": "Amount of Loaded Entities"}
scoreboard objectives add grenadier-loadedMobs dummy
scoreboard objectives modify grenadier-loadedMobs displayname {"text": "Amount of Loaded Mobs"}
scoreboard objectives add grenadier-loadedZombies dummy
scoreboard objectives modify grenadier-loadedZombies displayname {"text": "Amount of Loaded Zombies"}
scoreboard objectives add grenadier-loadedCreepers dummy
scoreboard objectives modify grenadier-loadedCreepers displayname {"text": "Amount of Loaded Creepers"}
scoreboard objectives add grenadier-loadedPigs dummy
scoreboard objectives modify grenadier-loadedPigs displayname {"text": "Amount of Loaded Pigs"}
scoreboard objectives add grenadier-loadedTNTs dummy
scoreboard objectives modify grenadier-loadedTNTs displayname {"text": "Amount of Loaded TNTs"}
scoreboard objectives add grenadier-loadedSquids dummy
scoreboard objectives modify grenadier-loadedSquids displayname {"text": "Amount of Loaded Squids"}
scoreboard objectives add grenadier-onlinePlayers dummy
scoreboard objectives modify grenadier-onlinePlayers displayname {"text": "Amount of Online Players"}

# Player Data Scores

scoreboard objectives add grenadier-playerPercentHealth dummy
scoreboard objectives modify grenadier-playerPercentHealth displayname {"text": "Player Health Percent"}
scoreboard objectives add grenadier-playerDamage dummy
scoreboard objectives modify grenadier-playerDamage displayname {"text": "Player Damage"}
scoreboard objectives add grenadier-playerPitch dummy
scoreboard objectives modify grenadier-playerPitch displayname {"text": "Player X Rotation"}
scoreboard objectives add grenadier-playerYaw dummy
scoreboard objectives modify grenadier-playerYaw displayname {"text": "Player Y Rotation"}
scoreboard objectives add grenadier-playerHealth dummy
scoreboard objectives modify grenadier-playerHealth displayname {"text": "Player Health","color":"red"}
scoreboard objectives add grenadier-playerHealth-100 dummy
scoreboard objectives modify grenadier-playerHealth-100 displayname {"text": "Player Health 100","color":"red"}
scoreboard objectives add grenadier-playerMaxHealth dummy
scoreboard objectives modify grenadier-playerMaxHealth displayname {"text": "Player Maximum Health"}
scoreboard objectives add grenadier-playerHunger food
scoreboard objectives modify grenadier-playerHunger displayname {"text": "Player Hunger"}
scoreboard objectives add grenadier-playerX dummy
scoreboard objectives modify grenadier-playerX displayname {"text": "Player X Coordinate"}
scoreboard objectives add grenadier-playerY dummy
scoreboard objectives modify grenadier-playerY displayname {"text": "Player Y Coordinate"}
scoreboard objectives add grenadier-playerZ dummy
scoreboard objectives modify grenadier-playerZ displayname {"text": "Player Z Coordinate"}
scoreboard objectives add grenadier-playerXPLevels dummy
scoreboard objectives modify grenadier-playerXPLevels displayname {"text": "Player XP Levels"}
scoreboard objectives add grenadier-playerXPPoints dummy
scoreboard objectives modify grenadier-playerXPPoints displayname {"text": "Player XP Points"}
scoreboard objectives add grenadier-playerSpawnpointX dummy
scoreboard objectives modify grenadier-playerSpawnpointX displayname {"text": "Player Spawnpoint X Coordinate"}
scoreboard objectives add grenadier-playerSpawnpointY dummy
scoreboard objectives modify grenadier-playerSpawnpointY displayname {"text": "Player Spawnpoint Y Coordinate"}
scoreboard objectives add grenadier-playerSpawnpointZ dummy
scoreboard objectives modify grenadier-playerSpawnpointZ displayname {"text": "Player Spawnpoint Z Coordinate"}
scoreboard objectives add grenadier-playTime minecraft.custom:minecraft.play_time
scoreboard objectives modify grenadier-playTime displayname {"text": "Total Playtime (In Ticks)"}
scoreboard objectives add grenadier-playTimeSeconds dummy
scoreboard objectives modify grenadier-playTimeSeconds displayname {"text": "Total Playtime (In Seconds)"}
scoreboard objectives add grenadier-playTimeMinutes dummy
scoreboard objectives modify grenadier-playTimeMinutes displayname {"text": "Total Playtime (In Minutes)"}
scoreboard objectives add grenadier-playTimeHours dummy
scoreboard objectives modify grenadier-playTimeHours displayname {"text": "Total Playtime (In Hours)"}
scoreboard objectives add grenadier-playTimeDays dummy
scoreboard objectives modify grenadier-playTimeDays displayname {"text": "Total Playtime (In Days)"}

# Debug Scores

scoreboard objectives add grenadier-printPlayerData trigger
scoreboard objectives modify grenadier-printPlayerData displayname {"text": "Debug - Print Player Data"}

# Random Scores

scoreboard objectives add grenadier-random-6 dummy
scoreboard objectives modify grenadier-random-6 displayname {"text": "Random Number From 6"}
scoreboard objectives add grenadier-random-2 dummy
scoreboard objectives modify grenadier-random-2 displayname {"text": "Random Number From 2"}
scoreboard objectives add grenadier-random-3 dummy
scoreboard objectives modify grenadier-random-3 displayname {"text": "Random Number From 3"}
scoreboard objectives add grenadier-random-20 dummy
scoreboard objectives modify grenadier-random-20 displayname {"text": "Random Number From 20"}
scoreboard objectives add grenadier-random-5 dummy
scoreboard objectives modify grenadier-random-5 displayname {"text": "Random Number From 5"}
scoreboard objectives add grenadier-random-100 dummy
scoreboard objectives modify grenadier-random-100 displayname {"text": "Random Number From 100"}
scoreboard objectives add grenadier-random-1000 dummy
scoreboard objectives modify grenadier-random-1000 displayname {"text": "Random Number From 1000"}

# Custom Data Item Use Scores

scoreboard objectives add grenadier-removeCustomDataItemTag-delay dummy