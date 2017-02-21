///scr_make_arrow_projectile(xLoc, yLoc, xVelocity, yVelocity)

//Handles Parameter Input
var xLoc = argument[0];
var yLoc = argument[1];
var xVelocity = argument[2];
var yVelocity = argument[3];

instance_create(((xLoc * CELL_WIDTH) + CELL_WIDTH div 2), ((yLoc * CELL_HEIGHT) + CELL_HEIGHT div 2), obj_arrow_projectile);
