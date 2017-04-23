///scr_update_hearts()
    if (player_health % 2 == 0) {
        health_array[player_health div 2 - 1].image_index = 0;
        i = player_health div 2;
    }
    else {
        health_array[player_health div 2].image_index = 1;
        i = player_health div 2 + 1;
    }
        
    for (i = i; i < array_length_1d(health_array); i++) {
        health_array[i].image_index = 2;
    }
