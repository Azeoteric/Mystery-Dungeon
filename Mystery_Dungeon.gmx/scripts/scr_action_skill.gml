switch(class) {
    case 1:
        if (action_cooldown_current == 0 && player_has_sprinklestorm) {
            is_storming = true;
            storm_timer = 0;
            canAttack = false;
            attack = sprinkle_damage;
            action_cooldown_current = ACTION_COOLDOWN_MAX;
        }
        break;
    case 2:
        
        break;
    case 3:
        if (action_cooldown_current == 0 && player_has_sprinkle_shield) {
            invulnerable = true;
            is_shielding = true;
            invulnerable_timer = TIME_INVINCIBLE;
            shield_object = instance_create(x, y, obj_sprinkle_shield);
            shield_object.image_alpha = 0.75;
            action_cooldown_current = ACTION_COOLDOWN_MAX;
            audio_play_sound(sfx_sprinkle_shield, 9, false);
        }
        break;
}
