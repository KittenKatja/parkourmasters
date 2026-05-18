# setblock ~ ~ ~ emerald_block


execute positioned ~-1000 -100 ~-1000 if entity @a[dx=2000, dy=500, dz=2000] run return run forceload add ~1000 ~1000
forceload remove ~ ~