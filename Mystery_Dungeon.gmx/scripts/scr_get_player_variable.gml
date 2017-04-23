///scr_get_player_variable(variable_name)
if (!file_exists("player_class.ini")) {
    return -1;
}

ini_open('player_class.ini');
temporary_variable = ini_read_real('player', argument0, -1);
ini_close();
return temporary_variable;
