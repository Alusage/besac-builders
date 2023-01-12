#Forcer le gamemode dans ce monde
gamemode adventure @s[gamemode=!adventure,tag=!anti_gamemode]

# Tests pour savoir quel casque de chantier est porté ou non par le joueur
execute as @s[tag=!anti_casque] run function besac_builders:monde_besancon/helmet_check