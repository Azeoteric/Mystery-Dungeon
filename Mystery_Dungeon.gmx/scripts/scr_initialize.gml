///scr_initialize(class_num)
// argument0 = player class (1 = alchemy, 2 = glass cannon, 3 = tank)
// current file name is "initialize_player_class.ini"
scr_create_initialize();

if (file_exists("player_class.ini")) file_delete("player_class.ini");

file_copy("initialize_player.ini", "player_class.ini");


ini_open('player_class.ini');
temp_bool = false;
switch (argument0) {
    case 1:
        ini_write_real('player', 'class', 1);
        temp_bool = true;
        break;
    case 2:
        ini_write_real('player', 'class', 2);
        temp_bool = true;
        break;
    case 3:
        ini_write_real('player', 'class', 3);
        temp_bool = true;
        break;
   
   default :
   room_goto(rm_title)
   break;    
}

ini_close();
return temp_bool;
