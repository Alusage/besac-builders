execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_besancon] run tag @e[type=area_effect_cloud,tag=spawn_besancon,predicate=besac_builders:dans_monde_besancon] remove portail
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_besancon] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:10,Tags:["portail","spawn_besancon"]}
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_besancon] run forceload remove all

execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_creatif] run tag @e[type=area_effect_cloud,tag=spawn_creative,predicate=besac_builders:dans_monde_creatif] remove portail
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_creatif] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:10,Tags:["portail","spawn_creative"]}
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_creatif] run forceload remove all

execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_survie] run tag @e[type=area_effect_cloud,tag=spawn_survival,predicate=besac_builders:dans_monde_survie] remove portail
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_survie] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:10,Tags:["portail","spawn_survival"]}
execute at @s[tag=besac_admin,predicate=besac_builders:dans_monde_survie] run forceload remove all

execute at @s run forceload add ~ ~ ~ ~