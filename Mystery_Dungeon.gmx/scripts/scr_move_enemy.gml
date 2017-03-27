///scr_move_enemy(hspd, vspd);
var hspd = argument[0];
var vspd = argument[1];

// Horizontal Collisions
if (scr_grid_place_meeting(x + hspd, y, grid)) {
   while (!scr_grid_place_meeting(x + sign(hspd), y, grid)) {
      x += sign(hspd);                     
   }
   return 0;   
hspd = 0;
}
// Move Horizontally
x += hspd;

// Vertical Collisions
if (scr_grid_place_meeting(x, y + vspd, grid)) {
   while (!scr_grid_place_meeting(x, y + sign(vspd), grid)) {
      y += sign(vspd);                     
   }
return 0;
vspd = 0;
}

// Move Vertically
y += vspd;
