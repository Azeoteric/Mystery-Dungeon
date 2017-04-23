if (file_exists("initialize_player.ini")) file_delete("initialize_player.ini");

ini_open("initialize_player.ini");

ini_write_real('player', 'class', 0);
ini_write_real('player', 'level', 0);
ini_write_real('player', 'orbs', 0);
ini_write_real('player', 'current_health', 0);
ini_write_real('player', 'beaten_level_1', 0);
ini_write_real('player', 'beaten_level_2', 0);
ini_write_real('player', 'beaten_level_3', 0);
ini_write_real('player', 'beaten_level_4', 0);

//alchemist
ini_write_real('alchemy', 'player_bullet_speed', 3);
ini_write_real('alchemy', 'player_fire_rate', 20);
ini_write_real('alchemy', 'player_attack_damage', 1);
ini_write_real('alchemy', 'player_move_speed', 2.5);
ini_write_real('alchemy', 'player_health', 6);
ini_write_real('alchemy', 'player_splash_damage', 0);

ini_write_real('alchemy', 'player_has_compass', 0);
ini_write_real('alchemy', 'player_has_increased_droprate', 0);
ini_write_real('alchemy', 'player_has_sprinklestorm', 0);
ini_write_real('alchemy', 'player_has_paralyzing', 0);
ini_write_real('alchemy', 'player_has_slowing', 0);
ini_write_real('alchemy', 'player_has_poisoning', 0);

//glass cannon
ini_write_real('glass_cannon', 'player_bullet_speed', 3);
ini_write_real('glass_cannon', 'player_fire_rate', 20);
ini_write_real('glass_cannon', 'player_attack_damage', 1);
ini_write_real('glass_cannon', 'player_move_speed', 2.5);
ini_write_real('glass_cannon', 'player_health', 6);

ini_write_real('glass_cannon', 'player_has_piercing', 0);
ini_write_real('glass_cannon', 'player_has_sprinkle_stream', 0);
ini_write_real('glass_cannon', 'player_has_sprinkle_blitz', 0);

//tank
ini_write_real('tank', 'player_bullet_speed', 3);
ini_write_real('tank', 'player_fire_rate', 20);
ini_write_real('tank', 'player_attack_damage', 1);
ini_write_real('tank', 'player_move_speed', 2.5);
ini_write_real('tank', 'player_health', 6);

ini_write_real('tank', 'player_has_map', 0);
ini_write_real('tank', 'player_has_sprinkle_shield', 0);
ini_write_real('tank', 'player_has_upclose', 0);
ini_write_real('tank', 'player_has_piercing', 0);

ini_close();
