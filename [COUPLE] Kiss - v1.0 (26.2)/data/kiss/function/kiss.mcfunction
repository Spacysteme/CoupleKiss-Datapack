scoreboard players set @s kiss_cooldown 20

execute store result score @s kiss_chance run random value 1..10

# Kiss
execute if score @s kiss_chance matches 2..10 at @p[distance=0.1..2] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.5
execute if score @s kiss_chance matches 2..10 at @p[distance=0.1..2] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 10

execute if score @s kiss_chance matches 2..10 run title @p[distance=0.1..2] title {"text":"❤ Kiss ❤","color":"light_purple"}
execute if score @s kiss_chance matches 2..10 run title @p[distance=0.1..2] subtitle [{"text":"From ","color":"white"},{"selector":"@s"},{"text":" !"}]

# Slurp (10% chance)
execute if score @s kiss_chance matches 1 at @p[distance=0.1..2] run playsound minecraft:entity.dolphin.play player @a ~ ~ ~ 1 0.8
execute if score @s kiss_chance matches 1 at @p[distance=0.1..2] run particle minecraft:bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 30

execute if score @s kiss_chance matches 1 run title @p[distance=0.1..2] title {"text":"💦 Slurp 💦","color":"blue","bold":true}
execute if score @s kiss_chance matches 1 run title @p[distance=0.1..2] subtitle [{"text":"Things are getting spicy with ","color":"gold"},{"selector":"@s"},{"text":"... 😏","color":"gold"}]