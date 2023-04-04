#Affichage des particules ambiantes des transferts d'objets
execute as @e[type=area_effect_cloud,tag=transfert_besancon] at @s align xyz run particle minecraft:portal ~0.5 ~0.8 ~0.5 0.10 0 0.10 0.2 1 normal

#Forcer le gamemode dans ce monde
gamemode survival @s[gamemode=!survival,tag=!besac_admin]

#Détecter la pose d'un entonnoir
execute as @a[scores={placed_hopper=1..},limit=1] at @s run function besac_builders:monde_survie/raycast_hopper