gamerule doDaylightCycle true
time set day
tag @a remove victor
execute if score playerCount playerCount matches 4.. run bossbar set minecraft:red visible true
execute if score playerCount playerCount matches 3.. run bossbar set minecraft:blue visible true
execute if score playerCount playerCount matches 2.. run bossbar set minecraft:green visible true
execute if score playerCount playerCount matches 2.. run bossbar set minecraft:gold visible true
execute if score difficulty settings matches 0 run difficulty peaceful
execute if score difficulty settings matches 1 run difficulty easy
execute if score difficulty settings matches 2 run difficulty normal
execute if score difficulty settings matches 3 run difficulty hard
execute if score monsters settings matches 0 run gamerule doMobSpawning false
execute if score monsters settings matches 1 run gamerule doMobSpawning true
execute if score regen settings matches 0 run gamerule naturalRegeneration false
execute if score regen settings matches 1 run gamerule naturalRegeneration true
tag @a[team=Aqua] add player
tag @a[team=Gray] add player
tag @a[team=Purple] add player
tag @a[team=Red] add player
tag @a[team=Blue] add player
tag @a[team=Orange] add player
tag @a[team=Green] add player
function deathswap:timer
scoreboard players set game_state game_state 1
execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~
spreadplayers ~ ~ 2000 100000 false @a[tag=player]
clear @a
xp set @a 0 levels
xp set @a 0 points
effect give Maximus_6283 minecraft:instant_health 2 4
gamemode survival @a[team=Red]
gamemode survival @a[team=Blue]
gamemode survival @a[team=Orange]
gamemode survival @a[team=Green]
gamemode survival @a[team=Aqua]
gamemode survival @a[team=Gray]
gamemode survival @a[team=Purple]
gamemode spectator @a[team=!Green,team=!Orange,team=!Blue,team=!Red,team=!Aqua,team=!Gray,team=!Purple]
tellraw @a[gamemode=spectator] ["",{"text":"You are now spectating! "},{"text":"Teleport to ","color":"green","clickEvent":{"action":"run_command","value":"/tp @s @a[team=Green,limit=1]"}},{"selector":"@a[team=Green]","color":"green","clickEvent":{"action":"run_command","value":"/tp @s @a[team=Green,limit=1]"}},{"text":" or ","color":"none"},{"text":"Teleport to ","color":"gold","clickEvent":{"action":"run_command","value":"/tp @s @a[team=Orange,limit=1]"}},{"selector":"@a[team=Orange]","color":"gold","clickEvent":{"action":"run_command","value":"/tp @s @a[team=Orange,limit=1]"}}]
