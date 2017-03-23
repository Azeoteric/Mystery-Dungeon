///scr_wall();
//Makes wall objects for enemy use
if(wall_set){
   for(i = 1; i < height - 1; i++){
       for(j = 1; j < width - 1; j++){
           if(grid [# i , j] == WALL || grid [# i , j] == WALL_MAPPED){
               instance_create(((i * CELL_WIDTH) + CELL_WIDTH div 2), ((j * CELL_HEIGHT) + CELL_HEIGHT div 2), obj_wall);
            }
       }
   }
}
wall_set = false;
