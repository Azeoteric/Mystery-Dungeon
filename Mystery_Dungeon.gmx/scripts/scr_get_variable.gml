///scr_get_variable(variable_name)
// if variable cannot be found, -1 is returned
if (!file_exists("player_class.ini")) {
    return -1;
}

ini_open('player_class.ini');
check_class = ini_read_real('player', 'class', 0);
if (check_class == 0) {
    ini_close();
    return -1;
}

script_class = '';
switch (check_class) {
    case 1:
        script_class = 'alchemy';
        break;
    case 2:
        script_class = 'glass_cannon';
        break;
    case 3:
        script_class = 'tank';
        break;
}

temporary_variable = ini_read_real(script_class, argument0, -1);
ini_close();
return temporary_variable;
