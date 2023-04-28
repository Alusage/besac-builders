scoreboard players reset @s transfer_timer
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run summon hopper_minecart 97 97 97 {NoGravity:true,Invulnerable:true,Tags:[arrivee_transfert]}
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run data modify entity @e[type=hopper_minecart,tag=arrivee_transfert,limit=1] Items set from block ~ ~ ~ Items
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run kill @e[type=hopper_minecart,tag=arrivee_transfert]
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run particle reverse_portal ~0.5 ~0.5 ~0.5 0 0 0 0.1 25 normal
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run playsound minecraft:item.chorus_fruit.teleport block @a ~0.5 ~0.5 ~0.5 0.1 0.5
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run playsound minecraft:item.chorus_fruit.teleport block @a ~0.5 ~0.5 ~0.5 0.1 1.5
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run data remove block ~ ~ ~ Items