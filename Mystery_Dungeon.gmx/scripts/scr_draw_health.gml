///Initially draws player health
number_of_hearts = scr_get_variable('player_health');
odd_or_even = number_of_hearts % 2;
for (i = 0; i < number_of_hearts div 2; i++) {
    obj_player.health_array[i] = instance_create(obj_player.x - 290 + 36 * i,
        obj_player.y - 150, obj_health);
    obj_player.health_array[i].image_speed = 0;
    obj_player.health_array[i].image_index = 0;
    obj_player.health_array[i].heart_number = i;
}

if (odd_or_even == 1) {
    i++;
    obj_player.health_array[i] = instance_create(obj_player.x - 290 + 36 * i,
        obj_player.y - 150, obj_health);
    obj_player.health_array[i].image_speed = 0;
    obj_player.health_array[i].image_index = 1;
    obj_player.health_array[i].heart_number = i;
}

player_health = scr_get_player_variable('current_health');
scr_update_hearts();
