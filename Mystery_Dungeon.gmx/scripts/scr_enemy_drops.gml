///scr_enemy_drops
random_number = irandom(999);

if (random_number % 50 == 0) {
    instance_create(x, y, obj_orb);
}

else if (random_rumber % 10 == 0) {
    instance_create(x, y, obj_health_pickup)
}
