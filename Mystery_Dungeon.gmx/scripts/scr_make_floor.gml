///scr_make_floor(grid, width, height)
grid = argument[0];
var width = argument[1];
var height = argument[2]

//Fill the grid with the void
ds_grid_set_region(grid, 0, 0, width - 1, height - 1, VOID);
scr_tile(width, height, grid);

//Randomized the world
randomize();

//Create the controller in random parts of the grid
var cx = irandom(width - 8) + 4;//width div 2;
var cy = irandom(height - 8) + 4;//height div 2;



// Give the controller a random direction
var cdir = irandom(3);

// The odds variable for changing direction
var odds = 1;

scr_make_room(cx, cy, true);
// Counts the number of rooms on the floor.
rooms = 1;
// Create the level using between 100 - 200 steps;
repeat (irandom(100) + 100) {

    if((irandom(100) > 75) && (!ds_grid_value_exists(grid, cx - 8, cy - 8, cx + 8, cy + 8, NODE) && (rooms < 12))) {
          scr_make_room(cx, cy, false, width, height); 
              rooms++;
    }
       
    movement = (irandom(3) + 6);
    
    
    // Randomize the controller direction 
    if (irandom(odds) == odds) {
        cdir = irandom(3);
    }
     var xdir = lengthdir_x(1, cdir * 90);
     var ydir = lengthdir_y(1, cdir * 90);
     // Move the controller 
    
 for(i = 0; i < movement; i++) {          
     if(grid[# cx, cy] == VOID) {  
          grid[# cx, cy] = FLOOR;               
       }
     else {
       i = movement;
       }
     
     cx += xdir;
     cy += ydir;        
     
     // Grid Boundries
     cx = clamp(cx, 4, width - 4);   
     cy = clamp(cy, 4, height - 4);
              
          
      }
}
if(rooms <= 8) {
   room_restart();
}
// Tiles the room
scr_tile(width, height, grid);
// Makes the stairs
scr_stairs(width, height);
// Create the player
scr_player(width, height);
//instance_create(cx * CELL_WIDTH + CELL_WIDTH / 2, cy * CELL_HEIGHT + CELL_HEIGHT / 2, obj_player);

