#Affichage des particules ambiantes des transferts d'objets
execute as @e[type=area_effect_cloud,tag=transfert_besancon] at @s align xyz run particle minecraft:portal ~0.5 ~0.8 ~0.5 0.1 0 0.1 0.2 1 normal

#Affichage des particules ambiantes des coffres personnels
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=!redondant] at @s align xyz run execute if block ~ ~ ~ ironchests:copper_chest unless block ~ ~ ~ ironchests:copper_chest{Items:[]} run particle minecraft:glow ~0.5 ~0.4 ~0.5 0.4 0.4 0.4 0 1 normal
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=!redondant] at @s align xyz run execute if block ~ ~ ~ ironchests:copper_chest{Items:[]} run particle minecraft:electric_spark ~0.5 ~0.4 ~0.5 0.3 0.3 0.3 0.02 1 normal

#Forcer le gamemode dans ce monde
gamemode survival @a[gamemode=!survival,tag=!besac_admin]

#Détecter la pose d'un entonnoir ou d'un coffre en cuivre
execute as @a[scores={placed_hopper=1..},limit=1,sort=random] anchored eyes at @s run function besac_builders:monde_survie/raycast_hopper
execute unless entity @a[tag=place_un_coffre] as @a[scores={placed_copper_chest=1..},limit=1,sort=random] anchored eyes at @s run function besac_builders:monde_survie/raycast_copper_chest

#Détection d'une tentative de forge
execute as @a[scores={forge_attempt=1..},limit=1] run function besac_builders:monde_survie/forge_attempt