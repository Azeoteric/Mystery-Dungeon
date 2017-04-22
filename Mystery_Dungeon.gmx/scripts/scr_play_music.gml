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
        
        break;
    case 3:
        temp_music_id = music_cave;
        audio_play_sound(music_cave, 20, true);
        break;
}

return temp_music_id;
