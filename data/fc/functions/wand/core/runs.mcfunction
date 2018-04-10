scoreboard players operation @s fc.wand.cooldown = fc.core.tick fc.stat.tick
scoreboard players set @s fc.wand.cooldown 5

execute if entity @s[tag=fc.wand.fire] run function fc:wand/type/fire