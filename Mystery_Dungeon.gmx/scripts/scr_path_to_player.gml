///scr_path_to_player()
scr_grid();
if (instance_exists(obj_player)) {
   var tempx = (obj_player.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH / 2;
   var tempy = (obj_player.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT / 2;
   
   if (mp_grid_path(grid_path, path, x, y, tempx, tempy, true)) {
      path_start(path, MOVE_SPEED, path_action_stop, false);
   }
}
