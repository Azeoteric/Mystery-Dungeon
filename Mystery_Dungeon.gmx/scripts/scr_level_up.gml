///scr_level_up()
// Levels up the player regardless of class
if (!file_exists("player_class.ini")) return false;

ini_open('player_class.ini');
script_class = ini_read_real('player', 'class', 0);
ini_close();

if (script_class == 0) return false;

switch(script_class) {
    case 1:
        scr_level_up_alchemist();
        break;
    case 2:
        scr_level_up_glass_cannon();
        break;
    case 3: 
        scr_level_up_tank();
        break;
}

return true;
