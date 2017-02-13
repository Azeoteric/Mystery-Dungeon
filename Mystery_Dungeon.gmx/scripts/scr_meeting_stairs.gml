///scr_meeting_stairs(x, y)
var xtemp = argument[0];
var ytemp = argument[1];
//var room_name = argument[2];

// Store postion
var xpos = x;
var ypos = y;

// Move object for hitbox Collision
x = xtemp;
y = ytemp;

if(room == rm_boss) {
//Collisions
    var is_x_meeting = (obj_boss_room.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] == STAIRS)  || 
                       (obj_boss_room.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] == STAIRS);
                          
    var is_y_meeting = (obj_boss_room.grid[# bbox_left div CELL_WIDTH, bbox_bottom  div CELL_HEIGHT] == STAIRS)  || 
                       (obj_boss_room.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] == STAIRS);  
    
    var is_center_meeting = (obj_boss_room.grid[# xtemp div CELL_WIDTH, ytemp div CELL_HEIGHT] == STAIRS); 
}

if(room == rm_test2) {
//Collisions
    var is_x_meeting = (obj_level_maker_test.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] == STAIRS)  || 
                       (obj_level_maker_test.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] == STAIRS);
    
                      
    var is_y_meeting = (obj_level_maker_test.grid[# bbox_left div CELL_WIDTH, bbox_bottom  div CELL_HEIGHT] == STAIRS)  || 
                       (obj_level_maker_test.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] == STAIRS);  
    
    var is_center_meeting = (obj_level_maker_test.grid[# xtemp div CELL_WIDTH, ytemp div CELL_HEIGHT] == STAIRS);    
}
// Move Back   
x = xpos;
y = ypos;   

// Return 
return is_x_meeting || is_y_meeting || is_center_meeting;                                       
                
