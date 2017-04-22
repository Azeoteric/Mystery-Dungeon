///scr_check_tile(xpos, ypos)
xpos = argument[0];
ypos = argument[1];
right = (grid[# xpos + 1, ypos] == WALL_MAPPED
         ||  grid[# xpos + 1, ypos] == FLOOR
         ||  grid[# xpos + 1, ypos] == NODE_MAPPED
         ||  grid[# xpos + 1, ypos] == PLAYER_PATH
         ||  grid[# xpos + 1, ypos] == PLAYER
         ||  grid[# xpos + 1, ypos] == STAIRS_MAPPED);
         
left = (grid[# xpos - 1, ypos] == WALL_MAPPED
         ||  grid[# xpos - 1, ypos] == FLOOR
         ||  grid[# xpos - 1, ypos] == NODE_MAPPED
         ||  grid[# xpos - 1, ypos] == PLAYER_PATH
         ||  grid[# xpos - 1, ypos] == PLAYER
         ||  grid[# xpos - 1, ypos] == STAIRS_MAPPED);
              
         
bottom = (grid[# xpos, ypos + 1] == WALL_MAPPED
         ||  grid[# xpos, ypos + 1] == FLOOR
         ||  grid[# xpos, ypos + 1] == NODE_MAPPED
         ||  grid[# xpos, ypos + 1] == PLAYER_PATH
         ||  grid[# xpos, ypos + 1] == PLAYER
         ||  grid[# xpos, ypos + 1] == STAIRS_MAPPED);
      
top = (grid[# xpos, ypos - 1] == WALL_MAPPED
         ||  grid[# xpos, ypos - 1] == FLOOR
         ||  grid[# xpos, ypos - 1] == NODE_MAPPED
         ||  grid[# xpos, ypos - 1] == PLAYER_PATH
         ||  grid[# xpos, ypos - 1] == PLAYER
         ||  grid[# xpos, ypos - 1] == STAIRS_MAPPED);
   
