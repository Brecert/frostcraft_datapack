say @s
execute offset ~ ~1.65 ~ run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 force @a
#execute offset ^ ^ ^3 as @e[distance=..1] run data merge entity @s {Fire:10}

summon armor_stand ~ ~ ~ {Particle:"flame",Duration:100,Tags:["fc.view","fc.wand.fire","fc.tick.first"]}
scoreboard players operation @e[tag=fc.tick.first,distance=..0.25] fc.stat.id = @s fc.stat.id
tp @e[tag=fc.tick.first,tag=fc.wand.fire] @s
tag @e[tag=fc.tick.first,tag=fc.wand.fire] remove fc.tick.first
tp @e[tag=fc.wand.fire,tag=fc.view] ^ ^ ^0.5