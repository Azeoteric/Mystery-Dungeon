///move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

// Horizontal Collisions
if (scr_grid_place_meeting(x + hspd, y)) {
   while (!scr_grid_place_meeting(x + sign(hspd), y)) {
      x += sign(hspd)                     
   }
   hspd = 0;
}
// Move Horizontally
x += hspd;

// Verticall Collisions
if (scr_grid_place_meeting(x, y + vspd)) {
   while (!scr_grid_place_meeting(x, y + sign(vspd))) {
      y += sign(vspd)                     
   }
   vspd = 0;
}

// Move Vetically
y+= vspd;

