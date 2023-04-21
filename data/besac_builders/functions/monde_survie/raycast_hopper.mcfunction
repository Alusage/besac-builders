scoreboard players reset @s placed_hopper
execute if block ~ ~ ~ hopper{CustomName:'{"text":"Transfert vers Besançon"}'} align xyz unless entity @e[type=area_effect_cloud,tag=transfert_besancon,distance=..1] run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:10,Tags:["transfert_besancon"]}

execute if entity @e[type=area_effect_cloud,tag=transfert_besancon,predicate=besac_builders:dans_nether_ou_end] run tellraw @s [{"text":"Tu ne peux pas poser de transfert vers Besançon\ndans le ","color":"yellow"},{"text":"Nether","color":"dark_red"},{"text":" ou l'","color":"yellow"},{"text":"End","color":"dark_blue"}]

execute if entity @p[distance=..10] unless block ~ ~ ~ hopper positioned ^ ^ ^0.05 run function besac_builders:monde_survie/raycast_hopper
execute at @e[type=area_effect_cloud,tag=transfert_besancon] run setblock ~ ~ ~ air destroy