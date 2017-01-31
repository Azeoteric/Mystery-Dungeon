///scr_grid_place_meeting(x, y)
var xtemp = argument[0];
var ytemp = argument[1];

// Store postion
var xpos = x;
var ypos = y;

// Move object for hitbox Collision
x = xtemp;
y = ytemp;

//Collisions
var is_x_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR)  || 
                   (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

                  
var is_y_meeting = (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_bottom  div CELL_HEIGHT] != FLOOR)  || 
                   (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);  

var is_center_meeting = (obj_level.grid[# xtemp div CELL_WIDTH, ytemp div CELL_HEIGHT] != FLOOR); 


// Move Back   
x = xpos;
y = ypos;   

// Return 
return is_x_meeting || is_y_meeting || is_center_meeting;                                       
                
