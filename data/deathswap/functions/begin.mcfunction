# for every player, add 1 to playerCount
scoreboard players reset playerCount playerCount
execute as @a run scoreboard players add playerCount playerCount 1
# resets teams
team leave @a
# join random teams based on player count
execute if score playerCount playerCount matches 1 run tellraw @a ["",{"text":"There must be at least two players on the server!","color":"red"}]
execute if score playerCount playerCount matches 2.. run execute unless entity @a[team=Green] run team join Green @r[team=!Orange,team=!Blue,team=!Red]
execute if score playerCount playerCount matches 2.. run execute unless entity @a[team=Orange] run team join Orange @r[team=!Green,team=!Blue,team=!Red]
execute if score playerCount playerCount matches 3.. run execute unless entity @a[team=Blue] run team join Blue @r[team=!Orange,team=!Green,team=!Red]
execute if score playerCount playerCount matches 4.. run execute unless entity @a[team=Red] run team join Red @r[team=!Orange,team=!Green,team=!Blue]
execute if score playerCount playerCount matches 5.. run execute unless entity @a[team=Purple] run team join Purple @r[team=!Orange,team=!Green,team=!Blue,team=!Red]
execute if score playerCount playerCount matches 6.. run execute unless entity @a[team=Aqua] run team join Aqua @r[team=!Orange,team=!Green,team=!Blue,team=!Red,team=!Purple]
execute if score playerCount playerCount matches 7.. run execute unless entity @a[team=Gray] run team join Gray @r[team=!Orange,team=!Green,team=!Blue,team=!Red,team=!Purple,team=!Aqua]

# can't start if player not in team (two players)
execute if score playerCount playerCount matches 2.. run execute unless entity @a[team=Orange] run tellraw @s ["",{"text":"There is no "},{"text":"Orange","color":"gold"},{"text":" player!","color":"none"}]
execute if score playerCount playerCount matches 2.. run execute unless entity @a[team=Green] run tellraw @s ["",{"text":"There is no "},{"text":"Green","color":"green"},{"text":" player!","color":"none"}]
# " " three players
execute if score playerCount playerCount matches 3.. run execute unless entity @a[team=Blue] run tellraw @s ["",{"text":"There is no "},{"text":"Blue","color":"blue"},{"text":" player!","color":"none"}]
# " " four players
execute if score playerCount playerCount matches 4.. run execute unless entity @a[team=Red] run tellraw @s ["",{"text":"There is no "},{"text":"Red","color":"red"},{"text":" player!","color":"none"}]
# actually start the game lol
execute if score playerCount playerCount matches 2 if entity @a[team=Orange] if entity @a[team=Green] run function deathswap:start
execute if score playerCount playerCount matches 3 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] run function deathswap:start
execute if score playerCount playerCount matches 4 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] if entity @a[team=Red] run function deathswap:start
execute if score playerCount playerCount matches 5 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] if entity @a[team=Red] if entity @a[team=Purple] run function deathswap:start
execute if score playerCount playerCount matches 6 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] if entity @a[team=Red] if entity @a[team=Purple] if entity @a[team=Aqua] run function deathswap:start
execute if score playerCount playerCount matches 7 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] if entity @a[team=Red] if entity @a[team=Purple] if entity @a[team=Aqua] if entity @a[team=Gray] run function deathswap:start
