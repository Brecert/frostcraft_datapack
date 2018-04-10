# Give ID ( Not UUID Just yet )
scoreboard players operation @s fc.stat.id = #fc.nextid fc.stat.id
scoreboard players add #fc.nextid fc.stat.id 1

# Init Stats
# Make Add Stats Dynamic Later.
scoreboard players add @s fc.stat.money 500
scoreboard players add @s fc.stat.mana 500

scoreboard players add 0 fc.carrotstick
scoreboard players add 0 fc.wand.cooldown

# Welcome Player.
tellraw @a ["",{"text":"Welcome ","color":"green"},{"selector":"@s","color":"none"},{"text":"#","color":"none"},{"score":{"name":"@s","objective":"fc.stat.id"},"color":"none"},{"text":"!","color":"none"}]

# Use _fc.opt.money va;ue
tellraw @p ["",{"text":"You have been given 500 mana and $500 for joining the server for the first time!","color":"white"}]
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1000000000000000000000000 1