///scr_set_player_variable(variable_name, value)

if (!file_exists("player_class.ini")) {
    return -1;
}

ini_open('player_class.ini');
ini_write_real('player', argument0, argument1);
ini_close();
