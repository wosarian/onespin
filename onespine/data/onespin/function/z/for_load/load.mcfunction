
# # Game Rules

gamerule announceAdvancements false
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doPatrolSpawning true
gamerule doMobSpawning true
gamerule doMobLoot true
gamerule doLimitedCrafting false
gamerule doTraderSpawning true
gamerule drowningDamage true
gamerule forgiveDeadPlayers true
gamerule showDeathMessages true
gamerule spawnChunkRadius 0
gamerule spawnRadius 0
# %HIGH%
gamerule maxCommandChainLength 1000000

gamerule playersSleepingPercentage 0
gamerule snowAccumulationHeight 1
gamerule tntExplodes true
# %HIGH%
gamerule tntExplosionDropDecay false

gamerule universalAnger false
gamerule waterSourceConversion true
gamerule sendCommandFeedback true
gamerule reducedDebugInfo false
gamerule projectilesCanBreakBlocks true
gamerule playersNetherPortalDefaultDelay 0
gamerule playersNetherPortalCreativeDelay 0
gamerule naturalRegeneration true
gamerule mobGriefing true
# %HIGH%
gamerule mobExplosionDropDecay false

gamerule minecartMaxSpeed 1000
gamerule maxEntityCramming 24
gamerule maxCommandForkCount 1000000
gamerule logAdminCommands true
gamerule lavaSourceConversion false
gamerule globalSoundEvents true
gamerule freezeDamage true
gamerule fireDamage true
gamerule fallDamage true
gamerule enderPearlsVanishOnDeath false
gamerule doWardenSpawning true
gamerule doWeatherCycle true
gamerule doVinesSpread true
gamerule doTileDrops true
gamerule doInsomnia true
gamerule doFireTick true
gamerule doEntityDrops true
gamerule disableRaids false
# %HIGH%
gamerule commandBlockOutput false

# %HIGH%
gamerule blockExplosionDropDecay false

gamerule allowFireTicksAwayFromPlayer false

# # Scores

# Main

scoreboard objectives add OSID dummy
scoreboard objectives modify OSID displayname {"text": "Player ID"}
scoreboard objectives add OS-permissionLevel dummy
scoreboard objectives modify OS-permissionLevel displayname {"text": "Permission Level"}
scoreboard objectives add OS-forID dummy
scoreboard objectives modify OS-forID displayname {"text": "For Every Player ID"}

# Other

scoreboard objectives add OS-debug dummy
scoreboard objectives add OS-nv-toggle dummy
scoreboard objectives add OS-limboLevel dummy
scoreboard objectives add OS-RTCResetDelay dummy
scoreboard objectives add OS-coordinatesUpdateDelay dummy

# Counters

scoreboard objectives add OS-storedLocations dummy
scoreboard objectives modify OS-storedLocations displayname {"text": "Amount of Stored Locations"}
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

# # Playtime

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
scoreboard objectives add OS-playerDead deathCount
scoreboard objectives modify OS-playerDead displayname {"text": "Is Player Dead?"}

# Counter Strike: Minecraft 3

scoreboard objectives add OS-1-players dummy
scoreboard objectives add OS-1-blueTeam dummy
scoreboard objectives add OS-1-redTeam dummy
scoreboard objectives add OS-1-blueWins dummy
scoreboard objectives add OS-1-redWins dummy
scoreboard objectives add OS-1-rounds dummy

# Tower Defense Endless

scoreboard objectives add OS-3-health dummy

# Triggers

scoreboard objectives add leaveSurvival trigger
scoreboard objectives add skygamesSave trigger
scoreboard objectives add warplist trigger
scoreboard objectives add warp trigger
scoreboard objectives add b trigger
scoreboard objectives add sptool trigger
scoreboard objectives add sword trigger
scoreboard objectives add nv trigger
scoreboard objectives add lobby trigger
scoreboard objectives add panel trigger

# Constants

scoreboard objectives add OS-const-20 dummy
scoreboard objectives modify OS-const-20 displayname {"text": "Constant 20"}
scoreboard objectives add OS-const-24 dummy
scoreboard objectives modify OS-const-24 displayname {"text": "Constant 24"}
scoreboard objectives add OS-const-60 dummy
scoreboard objectives modify OS-const-60 displayname {"text": "Constant 60"}
scoreboard objectives add OS-const-1 dummy
scoreboard objectives modify OS-const-1 displayname {"text": "Constant 1"}
scoreboard objectives add OS-const-0 dummy
scoreboard objectives modify OS-const-0 displayname {"text": "Constant 0"}
scoreboard objectives add OS-const-15 dummy
scoreboard objectives modify OS-const-15 displayname {"text": "Constant 15"}

# For warplist trigger

scoreboard objectives add OS-dynamic-15 dummy
scoreboard objectives modify OS-dynamic-15 displayname {"text": "Dynamic 15"}
scoreboard objectives add OS-forStoredLocation dummy
scoreboard objectives modify OS-forStoredLocation displayname {"text": "For Every Stored Location"}

# Sidebar

scoreboard objectives add OS-sidebarLine dummy

# For Randomized Scores

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

# Remove

scoreboard objectives remove OS-storeLocation
scoreboard objectives remove OS-lastPlayerID
scoreboard objectives remove OS-sidebarBreak
scoreboard objectives remove refreshSidebar
scoreboard objectives remove leavesurvival
scoreboard objectives remove OS-playerDying
scoreboard objectives remove OS-playerDyingDelay
scoreboard objectives remove OS-playerInput-sprint
scoreboard objectives remove OS-tickSpeed

# Survival

scoreboard objectives add OS-4-drownedMainhandRandom dummy

# #
# # Branches
# #

# This schedules a load function for detecting entities after they've loaded.

schedule function onespin:z/for_load/load_delayed 10s