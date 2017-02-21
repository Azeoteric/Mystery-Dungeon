///scr_delete_walls(grid)
// Get tile sizes 
grid = argument[0];
var tw = CELL_WIDTH / 2;
var th = CELL_HEIGHT / 2;
var tile;

// Add the tiles
for (var ypos = 0; ypos < height * 2; ypos++) {
    for (var xpos = 0; xpos < width * 2; xpos++) {
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
                    tile = tile_layer_find(-ty, tx + tw, ty);
                         if (tile_exists(tile)) { 
                            tile_delete(tile); 
                    }
                } else if (is_top) {
                    if (is_top_right) {
                         tile = tile_layer_find(-ty, tx + tw, ty - th);
                         if (tile_exists(tile)) { 
                            tile_delete(tile); 
                    }
                    } else {
                        tile = tile_layer_find(-ty, tx, ty - th);
                        if (tile_exists(tile)) { 
                           tile_delete(tile); 
                        }
                    }
                    tile = tile_layer_find(-ty, tx + tw, ty);
                    if (tile_exists(tile)) { 
                       tile_delete(tile); 
                    }
                    } else {
                    tile = tile_layer_find(-ty, tx + tw, ty);
                    if (tile_exists(tile)) { 
                       tile_delete(tile); 
                    }
                }
            }
            
            if (is_left) {
                if (is_bottom) {
                    tile = tile_layer_find(-ty, tx - tw, ty);
                    if (tile_exists(tile)) { 
                       tile_delete(tile); 
                    }
                } else if (is_top) {
                    if (is_top_left) {
                        tile = tile_layer_find(-ty, tx - tw, ty - th);
                        if (tile_exists(tile)) { 
                           tile_delete(tile); 
                        }
                    } else {
                        tile = tile_layer_find(-ty, tx, ty - th);
                        if (tile_exists(tile)) { 
                           tile_delete(tile); 
                        }
                    }
                     
                     tile = tile_layer_find(-ty, tx - tw, ty);
                     if (tile_exists(tile)) { 
                        tile_delete(tile); 
                     } 
                } else {
                     
                     tile = tile_layer_find(-ty, tx - tw, ty);
                     if (tile_exists(tile)) { 
                        tile_delete(tile); 
                     } 
                }
            }
        
            if (is_top) {
              tile = tile_layer_find(-ty, tx, ty - th);
              if (tile_exists(tile)) { 
                tile_delete(tile); 
                 }  
            }
           
            if (is_bottom) {     
            tile = tile_layer_find(-ty - tw, tx, ty);
              if (tile_exists(tile)) { 
                 tile_delete(tile); 
             }  
            }
        }
    }
}
