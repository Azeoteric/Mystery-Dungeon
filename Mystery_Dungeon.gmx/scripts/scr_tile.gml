///scr_tile(width, height, grid, level)
var width = argument[0];
var height = argument[1];
grid = argument[2];
var level = global.level;
switch(level){
case 0:
     level = bg_hub;
     break;

case 1:
     level = bg_level1;
     break;

case 2:
     level = bg_memes;
     break;     

case 3:
     level = bg_cave;
     break;
     
case 4:
     level = bg_ruins;
     break;
     
case 5:
     level = bg_tower;
     break;     
}

// Making Walls
for (var ypos = 1; ypos < height - 1; ypos++) {
    for (var xpos = 1; xpos < width - 1; xpos++) {
        if (grid[# xpos, ypos] == FLOOR) {
        //Check for Walls
            if(grid[# xpos + 1, ypos] > FLOOR) {
                grid[# xpos + 1, ypos] = WALL;
            }
            if(grid[# xpos - 1, ypos] > FLOOR) {
                grid[# xpos - 1, ypos] = WALL;
            }
            if(grid[# xpos, ypos + 1] > FLOOR) {
                grid[# xpos, ypos + 1] = WALL;
            }  
            if(grid[# xpos, ypos - 1] > FLOOR) {
                grid[# xpos, ypos - 1] = WALL;
            }
            if(grid[# xpos + 1, ypos - 1] > FLOOR) {
                grid[# xpos + 1, ypos- 1] = WALL;
            }
            if(grid[# xpos - 1, ypos - 1 ] > FLOOR) {
                grid[# xpos - 1, ypos - 1] = WALL;
            }
            if(grid[# xpos - 1, ypos + 1] > FLOOR) {
                grid[# xpos - 1, ypos + 1] = WALL;
            }  
            if(grid[# xpos + 1, ypos + 1] > FLOOR) {
                grid[# xpos + 1, ypos + 1] = WALL;
            }
        }
        
    }    
}

// Draw the Level
for (ypos  = 0;  ypos < height - 1; ypos++) {
    for (xpos = 0; xpos < width - 1; xpos++) {
        if (grid[# xpos, ypos] == FLOOR) {
            // Draw floor
            tile_add(level, 180, 0, CELL_WIDTH, CELL_HEIGHT, xpos * CELL_WIDTH, ypos * CELL_HEIGHT, 0);       
        }  
        if (grid[# xpos, ypos] == NODE) {
            // Draw nodes
            tile_add(bg_node, 0, 0, CELL_WIDTH, CELL_HEIGHT, xpos * CELL_WIDTH, ypos * CELL_HEIGHT, 0);
        }
            if (grid[# xpos, ypos] == PLAYER) {
            // Draw nodes
            tile_add(bg_player, 0, 0, CELL_WIDTH, CELL_HEIGHT, (xpos * CELL_WIDTH), (ypos * CELL_HEIGHT), 0);    
        }

            if (grid[# xpos, ypos] == VOID) {
            // Draw void
            tile_add(level, 108, 72, CELL_WIDTH, CELL_HEIGHT, xpos * CELL_WIDTH, ypos * CELL_HEIGHT, 0);    
            }
 }   
}

// Get tile sizes 
var tw = CELL_WIDTH / 2;
var th = CELL_HEIGHT / 2;

// Add the tiles
for (var ypos = 1; ypos < (height * 2); ypos++) {
    for (var xpos = 1; xpos < (width * 2); xpos++) {
        if (grid[# xpos div 2, ypos div 2] == FLOOR) {
            // Get the tile's x and y
            var tx = xpos * tw;
            var ty = ypos * th;
            
            var is_right = grid[# (xpos + 1) div 2, ypos div 2] > FLOOR;
            var is_left = grid[# (xpos - 1) div 2, ypos div 2] > FLOOR;
            var is_top = grid[# xpos div 2, (ypos - 1) div 2] > FLOOR;
            var is_bottom = grid[# xpos div 2, (ypos + 1) div 2] > FLOOR;
            
            var is_top_right = grid[# (xpos + 1) div 2, (ypos - 1) div 2] > FLOOR;
            var is_top_left = grid[# (xpos - 1) div 2, (ypos - 1) div 2] > FLOOR;
            var is_bottom_right = grid[# (xpos + 1) div 2, (ypos + 1) div 2] > FLOOR;
            var is_bottom_left = grid[# (xpos - 1) div 2, (ypos + 1) div 2] > FLOOR;
                    
            if (is_right) {
                if (is_bottom) {
                    tile_add(level, tw * 4, th * 1, tw, th, tx + tw, ty, -ty);
                } else if (is_top) {
                    if (is_top_right) {
                        tile_add(level, tw * 4, th * 0, tw, th, tx + tw, ty - th, -ty);
                    } else {
                        tile_add(level, tw * 3, th * 0, tw, th, tx, ty - th, -ty);
                    }
                    tile_add(level, tw * 0, th * 1, tw, th, tx + tw, ty, -ty);
                } else {
                    tile_add(level, tw * 0, th * 1, tw, th, tx + tw, ty, -ty);
                }
            }
            
            if (is_left) {
                if (is_bottom) {
                    tile_add(level, tw * 3, th * 1, tw, th, tx - tw, ty, -ty);
                } else if (is_top) {
                    if (is_top_left) {
                        tile_add(level, tw * 3, th * 0, tw, th, tx - tw, ty - th, -ty);
                    } else {
                        tile_add(level, tw * 4, th * 0, tw, th, tx, ty - th, -ty);
                    }
                    tile_add(level, tw * 2, th * 1, tw, th, tx - tw, ty, -ty);
                } else {
                    tile_add(level, tw * 2, th * 1, tw, th, tx - tw, ty, -ty);
                }
            }
            
            if (is_top) {
                if (!is_top_right) {
                    tile_add(level, tw * 2, th * 2, tw, th, tx, ty - th, -ty);
                } else if (!is_top_left) {
                    tile_add(level, tw * 0, th * 2, tw, th, tx, ty - th, -ty);
                } else {
                    tile_add(level, tw * 1, th * 2, tw, th, tx, ty - th, -ty);
                }
            }
            
            if (is_bottom) {
                if (!is_bottom_right) {
                    tile_add(level, tw * 2, th * 0, tw, th, tx, ty, -ty - tw);
                } else if (!is_bottom_left) {
                    tile_add(level, tw * 0, th * 0, tw, th, tx, ty, -ty - tw);
                } else {
                    tile_add(level, tw * 1, th * 0, tw, th, tx, ty, -ty - tw);
                }
            }
          }
    }
}

scr_wall();

