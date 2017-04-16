switch(mpos) {

    case 0: //start
        scr_initialize(3);
        room_goto(rm_overworld);
        break;
        
    case 1: //continue
        scr_load_player();
        room_goto(rm_overworld);
        break;
        
   
    
    case 2:
        game_end();
        break;
        
    default:
        instance_destroy(); 
        break;
    
}
