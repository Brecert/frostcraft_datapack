# Start
#execute as @p at @s run summon armor_stand ^ ^1.5 ^7 {Tags:["hole"],Invisible:1}
#scoreboard objectives add timer dummy
#scoreboard players add @e[tag=hole] timer 1
#kill @e[scores={timer=2..}]
# Draw
#execute as @e[tag=hole] at @s run particle portal ~ ~ ~ 0.0 0.0 0.0 1.0 1000 force
# Position BH
scoreboard objectives add pos dummy
#execute store result score holeX pos run data get entity @e[tag=hole,limit=1] Pos[0] 1000000
#execute store result score holeY pos run data get entity @e[tag=hole,limit=1] Pos[1] 1000000
#execute store result score holeZ pos run data get entity @e[tag=hole,limit=1] Pos[2] 1000000
# Position Entities
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
execute as @e[type=!player,tag=!hole] store result score @s posX run data get entity @s Motion[0] 1000000
execute as @e[type=!player,tag=!hole] store result score @s posY run data get entity @s Motion[1] 1000000
execute as @e[type=!player,tag=!hole] store result score @s posZ run data get entity @s Motion[2] 1000000
# Find distance
#scoreboard players operation @e[type=!player,tag=!hole] posX -= holeX pos
#scoreboard players operation @e[type=!player,tag=!hole] posY -= holeY pos
#scoreboard players operation @e[type=!player,tag=!hole] posZ -= holeZ pos
# Correct for amplification
#scoreboard objectives add int dummy
#scoreboard players set negOne int 1
#scoreboard players operation @e[type=!player,tag=!hole] posX *= negOne int
#scoreboard players operation @e[type=!player,tag=!hole] posY *= negOne int
#scoreboard players operation @e[type=!player,tag=!hole] posZ *= negOne int
# Set motion
scoreboard players set motionMult int 0
scoreboard players operation @e[type=!player,tag=!hole] posX /= motionMult int
scoreboard players operation @e[type=!player,tag=!hole] posY /= motionMult int
scoreboard players operation @e[type=!player,tag=!hole] posZ /= motionMult int
execute as @e[type=!player,tag=!hole] store result entity @s Motion[0] double 0.000011 run scoreboard players get @s posX
execute as @e[type=!player,tag=!hole] store result entity @s Motion[1] double 0.000011 run scoreboard players get @s posY
execute as @e[type=!player,tag=!hole] store result entity @s Motion[2] double 0.000011 run scoreboard players get @s posZ