///scr_enemy_drops
random_number = irandom(999);

if (random_number % 3 == 1) {
    instance_create(x, y, obj_orb);
}

else if (random_rumber % 3 == 0) {
    instance_create(x, y, obj_health_pickup)
}
