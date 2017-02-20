///move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

// Horizontal Collisions
if (scr_grid_place_meeting(x + hspd, y, grid)) {
   while (!scr_grid_place_meeting(x + sign(hspd), y, grid)) {
      x += sign(hspd)                     
   }
   if(scr_meeting_stairs(x + sign(hspd), y, grid)){
             event_user(0);
    }
hspd = 0;
}
// Move Horizontally
x += hspd;

// Verticall Collisions
if (scr_grid_place_meeting(x, y + vspd, grid)) {
   while (!scr_grid_place_meeting(x, y + sign(vspd), grid)) {
      y += sign(vspd)                     
   }
   if(scr_meeting_stairs(x, y + sign(vspd), grid)){
         event_user(0);
   }
vspd = 0;
}

// Move Vetically
y += vspd;
