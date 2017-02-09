///scr_make_room(x, y)
var cx = argument[0];
var cy = argument[1];
    

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
    
   
