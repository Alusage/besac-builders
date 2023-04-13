scoreboard players reset @a[scores={placed_hopper=1..}] placed_hopper
execute if block ~ ~ ~ hopper{CustomName:'{"text":"Transfert vers Besançon"}'} positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Tags:["transfert_besancon"]}
execute if entity @p[distance=..7] unless block ~ ~ ~ hopper positioned ^ ^ ^0.05 run function besac_builders:monde_survie/raycast_hopper