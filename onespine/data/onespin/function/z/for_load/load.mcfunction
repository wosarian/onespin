
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
gamerule forgiveDeadPlayers false
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

scoreboard objectives add OS-permissionLevel dummy
scoreboard objectives modify OS-permissionLevel displayname {"text": "Permission Level"}

# Other

scoreboard objectives add OS-debug dummy
scoreboard objectives add OS-nv-toggle dummy
scoreboard objectives add OS-limboLevel dummy
scoreboard objectives add OS-RTCResetDelay dummy
scoreboard objectives add OS-coordinatesUpdateDelay dummy

# Counters

scoreboard objectives add OS-storedLocations dummy
scoreboard objectives modify OS-storedLocations displayname {"text": "Amount of Stored Locations"}

# plyaers

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

# For warplist trigger

scoreboard objectives add OS-dynamic-15 dummy
scoreboard objectives modify OS-dynamic-15 displayname {"text": "Dynamic 15"}
scoreboard objectives add OS-forStoredLocation dummy
scoreboard objectives modify OS-forStoredLocation displayname {"text": "For Every Stored Location"}

# Sidebar

scoreboard objectives add OS-sidebarLine dummy

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
scoreboard objectives remove OS-forID
scoreboard objectives remove OSID

# Survival

scoreboard objectives add OS-4-drownedMainhandRandom dummy

# #
# # Branches
# #

# This schedules a load function for detecting entities after they've loaded.

schedule function onespin:z/for_load/load_delayed 10s