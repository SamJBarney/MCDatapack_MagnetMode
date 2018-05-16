scoreboard players add @a magnet_mode 0
scoreboard players enable @a magnet_mode
execute as @a at @s if entity @s[scores={magnet_mode=1}] run tellraw @s ["",{"text":"Magnet Mode: "},{"text":"Enabled","color":"green"}]
execute as @a at @s if entity @s[scores={magnet_mode=1}] run scoreboard players set @s magnet_mode 2
execute as @a at @s if entity @s[scores={magnet_mode=2}] run teleport @e[type=item,distance=..8] @s
execute as @a at @s if entity @s[scores={magnet_mode=3}] run tellraw @s ["",{"text":"Magnet Mode: "},{"text":"Disabled","color":"red"}]
execute as @a at @s if entity @s[scores={magnet_mode=3}] run scoreboard players set @s magnet_mode 0