scoreboard players reset @a[scores={placed_hopper=1..}] placed_hopper
execute if block ~ ~1.62 ~ hopper{CustomName:'{"text":"Transfert"}'} positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~1.62 ~ {Duration:10,Tags:["transfert_besancon"]}
execute unless block ~ ~1.62 ~ hopper positioned ^ ^ ^0.05 run function besac_builders:monde_survie/raycast_hopper