///scr_does_room_fit(x1, y1, x2, y2, grid, grid_width, grid_height) 
//this defines a unique rectangle
// Return boolean (true if rectangle fits within grid while also not having tiles already present and false otherwise)

if (argument0 > argument5 - 1 || argument0 < 0) {
    return false;
}
if (argument2 > argument5 - 1 || argument2 < 0) {
    return false;
}
if (argument1 > argument6 - 1 || argument1 < 0) {
    return false;
}
if (argument3 > argument6 - 1 || argument3 < 0) {
    return false;
}

for (var xx = argument0; xx < argument2; xx++) {
    for (var yy = argument1; yy < argument3; yy++) {
        if (argument4[# xx, yy] != VOID) {
            return false;
        }
    }
}

return true;
