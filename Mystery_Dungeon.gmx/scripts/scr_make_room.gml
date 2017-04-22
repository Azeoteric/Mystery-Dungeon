///scr_make_room(x, y, is_double_room, width, height)
var cx = argument[0];
var cy = argument[1];
var is_double_room = argument[2];

    ds_grid_set_region(grid, cx - 2, cy - 2, cx + 2, cy + 2, FLOOR);
    grid[# cx, cy] = NODE;
    
    
        //30% chance of making a connecting room in a random direction
    if((irandom(100) > 70) && (!is_double_room))  {
         var width = argument[3];
         var height = argument[4];
         cx = clamp(cx, 10, width - 10);   
         cy = clamp(cy, 10, height - 10);
    
         var odds = 1;
         var cdir = irandom(3);
         if (irandom(odds) == odds) {
            cdir = irandom(3);
         }
         var xdir = lengthdir_x(3, cdir * 90);
         var ydir = lengthdir_y(3, cdir * 90);
         
         cx += xdir;
         cy += ydir;        
     
         // Grid Boundries
         cx = clamp(cx, 4, width - 4);   
         cy = clamp(cy, 4, height - 4);
     
         scr_make_room(cx, cy, true);
    }
   
