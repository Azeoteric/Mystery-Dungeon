///scr_level_up_alchemist() 
// Levels up the alchemist
// Returns false if file isn't found or player isn't an alchemist

if (!file_exists("player_class.ini")) return false;

ini_open('player_class.ini');
script_class = ini_read_real('player', 'class', 0);

if (script_class != 1) {
    ini_close();
    return false;
}

player_level = ini_read_real('player', 'level', -1);
if (player_level == -1) return false; // uh oh

switch (player_level) {
    case 0:
        ini_write_real('alchemy', 'player_bullet_speed', 4);
        ini_write_real('alchemy', 'player_fire_rate', 15);
        ini_write_real('alchemy', 'player_splash_damage', 1);
        ini_write_real('player', 'level', 1);
        break;
    case 1:
        ini_write_real('alchemy', 'player_health', 8);
        ini_write_real('alchemy', 'player_attack_damage', 1.5);
        ini_write_real('alchemy', 'player_move_speed', 3.0);
        ini_write_real('player', 'level', 2);
        break;
    case 2:
        ini_write_real('alchemy', 'player_splash_damage', 2);
        ini_write_real('alchemy', 'player_move_speed', 3.5);
        ini_write_real('player', 'level', 3);
        break;
    case 3:
        ini_write_real('alchemy', 'player_health', 10);
        ini_write_real('alchemy', 'player_attack_damage', 2.0);
        ini_write_real('alchemy', 'player_fire_rate', 10);
        ini_write_real('player', 'level', 4);
        break;
}

ini_close();
return true;
