///scr_enemy_drops
random_number = irandom(99);

if (random_number % 50 == 1) {
    instance_create(x, y, obj_orb);
}

else if (random_number % 10  == 0) {
    instance_create(x, y, obj_health_pickup)
}
