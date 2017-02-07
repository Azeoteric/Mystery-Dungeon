// Arguements (x1, y1, x2, y2, numberOfNodes, grid)
// the ordered pairs (x1, y1) and (x2, y2) define a unique rectangle
nx0 = argument2;
ny0 = (argument3 + argument1) div 2;

nx1 = (argument2 + argument0) div 2;
ny1 = argument1;

nx2 = argument0;
ny2 = (argument3 + argument1) div 2;

nx3 = (argument2 + argument0) div 2;
ny3 = argument3;

nodes = argument4;

while (nodes > 0) {
    switch (irandom(3)) {
        case 0:
            if (argument5[# nx0, ny0] != NODE) {
                argument5[# nx0, ny0] = NODE;
                nodes--;
                break;
            }
        case 1:
            if (argument5[# nx1, ny1] != NODE) {
                argument5[# nx1, ny1] = NODE;
                nodes--;
                break;
            }
        case 2:
            if (argument5[# nx2, ny2] != NODE) {
                argument5[# nx2, ny2] = NODE;
                nodes--;
                break;
            }
        case 3:
            if (argument5[# nx3, ny3] != NODE) {
                argument5[# nx3, ny3] = NODE;
                nodes--;
                break;
            }
    }
}
