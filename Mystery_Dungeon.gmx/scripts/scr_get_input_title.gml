///scr_get_input_title
//Movement
key_up =  -(keyboard_check_released(ord('W')) || (gamepad_button_check_released(0, gp_padu)) 
       ||   keyboard_check_released(vk_up));
      
key_down = keyboard_check_released(ord('S')) || (gamepad_button_check_released(0, gp_padd)
        || keyboard_check_released(vk_down));


//key_down_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);

                               
//Non-Movement Keypresses
key_act = keyboard_check_pressed(ord("X"))|| keyboard_check_pressed(vk_space)
                || gamepad_button_check_pressed(0, gp_face1);
key_act2 = keyboard_check_released(ord("X"))|| keyboard_check_released(vk_space)
                || gamepad_button_check_released(0, gp_face4);                  
key_back = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0,gp_face2);                              
move = key_up + key_down;
