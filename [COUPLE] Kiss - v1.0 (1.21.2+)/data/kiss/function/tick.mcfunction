execute as @a[scores={kiss_cooldown=1..}] run scoreboard players remove @s kiss_cooldown 1
execute as @a[scores={sneak=1..}] unless score @s kiss_cooldown matches 1.. at @s if entity @p[distance=0.1..2] run function kiss:kiss

scoreboard players set @a sneak 0