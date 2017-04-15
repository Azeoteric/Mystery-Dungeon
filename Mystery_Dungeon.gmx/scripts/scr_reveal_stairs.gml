for (ypos  = 0;  ypos < height; ypos++) {
    for (xpos = 0; xpos < height; xpos++) {
    if (grid[# xpos, ypos] == STAIRS_MAPPED || STAIRS) {
            // Draw stairs
            tile_add(bg_stairs_sm, 0, 0, MAP_WIDTH, MAP_HEIGHT, (xpos * MAP_WIDTH) + (x - 130), (ypos * MAP_HEIGHT) + (y - 120), -9000);    
        }
        
     }
     
} 
