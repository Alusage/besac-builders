# Réinitialisation de la durée de vie des area_effect_cloud servant de portails
execute as @e[type=area_effect_cloud,tag=portail] run data modify entity @s Age set value 0

# Affichage de particules autour des portails
# (inutilisé pour le moment)

# Téléportation des joueurs qui s'approchent d'un portail
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_survie,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_survie/travel_to_survival
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_creatif,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_creatif/travel_to_creative
execute as @a[tag=!anti_portail] at @s if entity @e[type=area_effect_cloud,tag=vers_besancon,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_besancon/travel_to_besancon

#Suite des commandes en fonction de la dimension dans laquelle sont les joueurs
execute as @a[predicate=besac_builders:dans_monde_survie] run function besac_builders:monde_survie/tick_survival
execute as @a[predicate=besac_builders:dans_monde_creatif] run function besac_builders:monde_creatif/tick_creative
execute as @a[predicate=besac_builders:dans_monde_besancon] run function besac_builders:monde_besancon/tick_besancon