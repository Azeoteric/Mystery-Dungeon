// Arguments (x1, y1, x2, y2, grid, grid_width, grid_height) this defines a unique rectangle
// Return boolean (true if rectangle fits within grid and false otherwise)

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
return true;
