for (i = 0; i < 18; i++) {
    scr_create_bullet(x, y, i * 20, bullet_speed * 2, 75, 0, 0);
}

/*
if (!sound_isplaying(sfx_sprinkle_shoot)) {
    sound_play(sfx_sprinkle_shoot);
}
*/

audio_play_sound(sfx_sprinkle_shoot, 10, false);
