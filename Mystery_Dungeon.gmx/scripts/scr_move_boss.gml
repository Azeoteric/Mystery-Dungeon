///scr_move_boss(hspd, vspd, vision_radius, speed);
var hspd = argument0;
var vspd = argument1;


if (!scr_boss_sees_player(argument2)) {
    return 0;
}

// Horizontal Collisions
if (scr_grid_place_meeting(x + hspd, y, grid)) {
   while (!scr_grid_place_meeting(x + sign(hspd), y, grid)) {
      x += sign(hspd);                     
   }
   return 0;   
hspd = 0;
}
// Move Horizontally
x += hspd * argument3;

// Vertical Collisions
if (scr_grid_place_meeting(x, y + vspd, grid)) {
   while (!scr_grid_place_meeting(x, y + sign(vspd), grid)) {
      y += sign(vspd);                     
   }
return 0;
vspd = 0;
}

// Move Vertically
y += vspd * argument3;
