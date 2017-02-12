///scr_stairs(width, height)
is_player_set = false;
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
while(!is_player_set) {
  repeat ((width - 1) * (height - 1)) {
   if(is_player_set) {
     exit; 
    }
        // Chance of placing a stairs if it is surronded by floor tiles,
        if (grid[# xStr, yStr] == NODE) {
            if (irandom(10) < 1) {
               instance_create(((xStr * CELL_WIDTH) + CELL_WIDTH div 2), ((yStr * CELL_HEIGHT) + CELL_HEIGHT div 2), obj_player);
               is_player_set = true;  
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
