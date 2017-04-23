///scr_set_variable(variable_name, variable_value)
// argument0 is the name of the variable to set
// argument1 is the value to set the variable to
// if variable cannot be found, false is returned
if (!file_exists("player_class.ini")) {
    return false;
}

ini_open('player_class.ini');
check_class = ini_read_real('player', 'class', 0);
if (check_class == 0) {
    ini_close();
    return false;
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

if (temporary_variable == -1) return false;

ini_write_real(script_class, argument0, argument1);
return true;
