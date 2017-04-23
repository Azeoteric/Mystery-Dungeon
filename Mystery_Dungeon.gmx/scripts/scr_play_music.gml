///(track_number)
switch (argument0) {
    case 0:
        temp_music_id = music_hub;
        audio_play_sound(music_hub, 20, true);
        break;
    case 1:
        temp_music_id = music_wheat;
        audio_play_sound(music_wheat, 20, true);
        break;
    case 2:
        //implement level 2 music
        temp_music_id = music_forest;
        audio_play_sound(music_forest, 20, true);
        break;
    case 3:
        temp_music_id = music_cave;
        audio_play_sound(music_cave, 20, true);
        break;
    case 4:
        //implement level 4 music
        temp_music_id = music_ruins;
        audio_play_sound(music_ruins, 20, true);
        break;
    case 5: 
        // implement level 5 music
        temp_music_id = music_tower;
        audio_play_sound(music_tower, 20, true);
        break;
}

return temp_music_id;
