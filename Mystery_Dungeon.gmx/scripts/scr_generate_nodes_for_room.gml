// Arguements (x1, y1, x2, y2, numberOfNodes, grid)
// the ordered pairs (x1, y1) and (x2, y2) define a unique rectangle

// NOTICE: THIS FUNCTION MODIFIES THE ARRAY "nodeLocations" AND THE 
//         VARIABLE "nodeCount". THIS SCRIPT WILL CAUSE ERRORS IF THESE 
//         VARIABLES ARE NOT PRESENT
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
            if (argument5[# nx0, ny0] != NODE && argument5[#nx0, ny0] != FLOOR_NOT_NODE) {
                argument5[# nx0, ny0] = NODE;
                nodes--;
                nodes_generated++;
                nodeLocations[nodeCount, 0] = nx0;
                nodeLocations[nodeCount, 1] = ny0;
                nodeCount++;
            }
            break;
        case 1:
            if (argument5[# nx1, ny1] != NODE && argument5[#nx1, ny1] != FLOOR_NOT_NODE) {
                argument5[# nx1, ny1] = NODE;
                nodes--;
                nodes_generated++;
                nodeLocations[nodeCount, 0] = nx1;
                nodeLocations[nodeCount, 1] = ny1;
                nodeCount++;
            }
            break;
        case 2:
            if (argument5[# nx2, ny2] != NODE && argument5[#nx2, ny2] != FLOOR_NOT_NODE) {
                argument5[# nx2, ny2] = NODE;
                nodes--;
                nodes_generated++;
                nodeLocations[nodeCount, 0] = nx2;
                nodeLocations[nodeCount, 1] = ny2;
                nodeCount++;
            }
            break;
        case 3:
            if (argument5[# nx3, ny3] != NODE && argument5[#nx3, ny3] != FLOOR_NOT_NODE) {
                argument5[# nx3, ny3] = NODE;
                nodes--;
                nodes_generated++;
                nodeLocations[nodeCount, 0] = nx3;
                nodeLocations[nodeCount, 1] = ny3;
                nodeCount++;
            }
            break;
    }
}
