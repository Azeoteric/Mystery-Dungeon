// Arguments (x1, y1, argument2)
// return type (0, 1, 2, 3) for (right, up, left, down) respectively

if (argument2[# argument0 + 1, argument1] == VOID) {
    return RIGHT;
}
else if (argument2[# argument0, argument1 - 1] == VOID) {
    return UP;
}
else if (argument2[# argument0 - 1, argument1] == VOID) {
    return LEFT;
}
else if (argument2[# argument0, argument1 + 1] == VOID) {
    return DOWN;
}
