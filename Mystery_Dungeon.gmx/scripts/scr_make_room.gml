///scr_make_room(x, y)
var cx = argument[0];
var cy = argument[1];


    
    grid[# cx, cy] = NODE;
    //instance_create(cx * CELL_WIDTH, cy * CELL_HEIGHT, obj_node); 
    
    grid[# cx + 1, cy] = FLOOR;
    grid[# cx, cy + 1] = FLOOR;
    grid[# cx - 1, cy] = FLOOR;
    grid[# cx, cy - 1] = FLOOR;
    grid[# cx + 1, cy + 1] = FLOOR;
    grid[# cx - 1, cy + 1] = FLOOR;
    grid[# cx + 1, cy - 1] = FLOOR;
    grid[# cx - 1, cy - 1] = FLOOR;    
   
    grid[# cx + 1, cy + 2] = FLOOR;
    grid[# cx + 2, cy + 1] = FLOOR;
    grid[# cx - 1, cy - 2] = FLOOR;
    grid[# cx - 2, cy - 1] = FLOOR;
    grid[# cx - 2, cy + 1] = FLOOR;
    grid[# cx - 1, cy + 2] = FLOOR;
    grid[# cx + 2, cy - 1] = FLOOR;
    grid[# cx + 1, cy - 2] = FLOOR; 
     
    grid[# cx + 2, cy] = FLOOR;
    grid[# cx, cy + 2] = FLOOR;
    grid[# cx - 2, cy] = FLOOR;
    grid[# cx, cy - 2] = FLOOR;
    grid[# cx + 2, cy + 2] = FLOOR;
    grid[# cx - 2, cy + 2] = FLOOR;
    grid[# cx + 2, cy - 2] = FLOOR;
    grid[# cx - 2, cy - 2] = FLOOR;    
    
   
