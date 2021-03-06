///scr_move_enemy(hspd, vspd);
var hspd = argument[0];
var vspd = argument[1];

// Horizontal Collisions
if (scr_grid_place_meeting(x + (hspd * MOVE_SPEED), y, grid)) {
   while (!scr_grid_place_meeting(x + sign(hspd), y, grid)) {
      x += sign(hspd);                     
   }
   //moveCounter = moveFrames;
   //hspd = 0;
   return 0;   
}
// Move Horizontally
x += hspd * MOVE_SPEED;

// Vertical Collisions
if (scr_grid_place_meeting(x, y + (vspd * MOVE_SPEED), grid)) {
   while (!scr_grid_place_meeting(x, y + sign(vspd), grid)) {
      y += sign(vspd);                     
   }
   //moveCounter = 500;
   //vspd = 0;
   return 0;
}

// Move Vertically
y += vspd * MOVE_SPEED;

return true;
