///scr_stairs(width, height)
is_stairs_set = false;
//Create the controller at the top of the grid
var xStr = 0;
var yStr = 0;
var width = argument[0];
var height = argument[1];

// Give the controller a random direction
var sdir = irandom(3);

// The odds variable for changing direction
var odds = 1;

// scans the level
while(!is_stairs_set) {
  repeat ((width - 1) * (height - 1)) {
   if(is_stairs_set) {
     exit; 
    }
        // Chance of placing a stairs if it is surronded by floor tiles,
        if (ds_grid_get_max(grid, xStr - 1, yStr - 1, xStr + 1, yStr + 1) == FLOOR) && 
           (ds_grid_get_min(grid, xStr - 1, yStr - 1, xStr + 1, yStr + 1) == NODE ) &&
           (grid[# xStr, yStr] == FLOOR) {
            if (irandom(10) < 1) {
               grid[# xStr, yStr] = STAIRS;
               tile_add(bg_stairs, 0, 0, CELL_WIDTH, CELL_HEIGHT, xStr * CELL_WIDTH, yStr * CELL_HEIGHT, -11);
               instance_create(xStr * CELL_WIDTH, yStr * CELL_HEIGHT, obj_stairs);
               is_stairs_set = true;
            }
        }
        // Randomize the controller direction 
        if (irandom(odds) == odds) {
            sdir = irandom(3);
        }
    
        // Move the controller 
        var xdir = lengthdir_x(1, sdir * 90);
        var ydir = lengthdir_y(1, sdir * 90);
        xStr += xdir;
        yStr += ydir;
        
        // Grid Boundries
        xStr = clamp(xStr, 1, width - 2);
        yStr = clamp(yStr, 1, height - 2);      
    }  
}
