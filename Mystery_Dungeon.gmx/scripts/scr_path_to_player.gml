///scr_path_to_player()
if (instance_exists(obj_player)) {
   var tempx = (obj_player.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH / 2;
   var tempy = (obj_player.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT / 2;
   
   if (mp_grid_path(obj_level_maker.grid_path, path, x, y, tempx, tempy, true)) {
      path_start(path, 2, path_action_stop, false);
   }
}
