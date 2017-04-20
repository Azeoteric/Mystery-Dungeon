if (!file_exists("player_class.ini")) return false;
ini_open('player_class.ini');

script_class = ini_read_real('player', 'class', 0);
if (script_class == 0) {
    ini_close();
    return false;
}

switch (script_class) {
    case 1: 
        class = 1;
        spd = ini_read_real('alchemy', 'player_move_speed', 0);
        bullet_speed = ini_read_real('alchemy', 'player_bullet_speed', 0);
        firerate = ini_read_real('alchemy', 'player_fire_rate', 0);
        attack = ini_read_real('alchemy', 'player_attack_damage', 0);   
        player_health = ini_read_real('alchemy', 'player_health', 0);
        player_splash_damage = ini_read_real('alchemy', 'player_splash_damage', 0);
        player_has_compass = ini_read_real('alchemy', 'player_has_compass', 0);
        player_has_sprinklestorm = ini_read_real('alchemy', 'player_has_sprinklestorm', 0);
        break;
    case 2:
        class = 2;
        spd = ini_read_real('glass_cannon', 'player_move_speed', 0);
        bullet_speed = ini_read_real('glass_cannon', 'player_bullet_speed', 0);
        firerate = ini_read_real('glass_cannon', 'player_fire_rate', 0);
        attack = ini_read_real('glass_cannon', 'player_attack_damage', 0);
        player_health = ini_read_real('glass_cannon', 'player_health', 0);
        player_has_piercing = ini_read_real('glass_cannon', 'player_has_piercing', 0);
        player_has_sprinkle_stream = ini_read_real('glass_cannon', 'player_has_sprinkle_stream', 0);
        break;
    case 3:
        class = 3;
        spd = ini_read_real('tank', 'player_move_speed', 0);
        bullet_speed = ini_read_real('tank', 'player_bullet_speed', 0);
        firerate = ini_read_real('tank', 'player_fire_rate', 0);
        attack = ini_read_real('tank', 'player_attack_damage', 0);
        player_health = ini_read_real('tank', 'player_health', 0);
        player_has_map = ini_read_real('tank', 'player_has_map', 0);
        player_has_piercing = ini_read_real('tank', 'player_has_piercing', 0);
        player_has_sprinkle_shield = ini_read_real('tank', 'player_has_sprinkle_shield', 0);
        break;
    
}

ini_close();
return true;
