# Réinitialisation de la durée de vie des area_effect_cloud servant de portails
execute as @e[type=area_effect_cloud,tag=portail] run data modify entity @s Age set value 0

# Affichage de particules autour des portails
# (inutilisé pour le moment)

# Téléportation des joueurs qui s'approchent d'un portail
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_survie,distance=..0.6,limit=1,sort=nearest] run function besac_builders:travel_to_survival
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_creatif,distance=..0.6,limit=1,sort=nearest] run function besac_builders:travel_to_creative
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_besancon,distance=..0.6,limit=1,sort=nearest] run function besac_builders:travel_to_besancon

# Tests pour savoir quel casque de chantier est porté ou non par les joueurs
execute as @a if predicate besac_builders:dans_monde_besancon run function besac_builders:helmet_check

# Forcer le gamemode en fonction du monde
execute as @a[gamemode=!adventure,tag=!anti_gamemode] if predicate besac_builders:dans_monde_besancon run gamemode adventure @s
execute as @a[gamemode=!survival,tag=!anti_gamemode] if predicate besac_builders:dans_monde_survie run gamemode survival @s
execute as @a[gamemode=!creative,tag=!anti_gamemode] if predicate besac_builders:dans_monde_creatif run gamemode creative @s