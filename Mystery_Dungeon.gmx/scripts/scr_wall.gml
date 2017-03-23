///scr_wall();
//Makes wall objects for enemy use
if(wall_set){
wall_set = false;
for(i = 1; i < height - 1; i++){
    for(j = 1; j < width - 1; j++){
        if(grid [# i , j] == WALL || grid [# i , j] == WALL_MAPPED){
            instance_create(i * CELL_HEIGHT, j * CELL_WIDTH, obj_wall);
        }
    }
}
}
