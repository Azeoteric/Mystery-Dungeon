///Draws the minimap to the screen
scr_grid();

// Draw the Level
for (ypos  = 0;  ypos < height; ypos++) {
    for (xpos = 0; xpos < height; xpos++) {
        if (grid[# xpos, ypos] == WALL_MAPPED || grid[# xpos, ypos] == WALL) {
            // Draw floor
            tile_add(bg_wall, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);
        }  
        
        if (grid[# xpos, ypos] == NODE_MAPPED || grid[# xpos, ypos] == NODE) {
            // Draw nodes mapped
            tile_add(bg_node, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);    
        }
        
        if (grid[# xpos, ypos] == PLAYER || grid[# xpos, ypos] == NODE_PLAYER ) {
            // Draw current location
            tile_add(bg_player, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);    
        }
        if (grid[# xpos, ypos] == PLAYER_PATH || grid[# xpos, ypos] == FLOOR) {
            // Draw Area player has been
            tile_add(bg_node, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);    
        }

        if (grid[# xpos, ypos] == STAIRS_MAPPED || STAIRS) {
            // Draw stairs
            tile_add(bg_stairs_sm, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);    
        }
        
     }
     
} 
