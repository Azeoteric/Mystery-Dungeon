/// Get input

//Movement

//The below block of code is commented out because it includes the arrow keys as valid ways to move when instead you should only be able to move with wasd.
/* 
key_right = keyboard_check(vk_right) || keyboard_check(ord('D')) 
                || (gamepad_axis_value(0,gp_axislh) > 0);
        
key_left = -(keyboard_check(vk_left) || keyboard_check(ord('A')) 
                || (gamepad_axis_value(0,gp_axislh) < 0));
     

key_up =  -(keyboard_check(vk_up) || keyboard_check(ord('W'))
                || (gamepad_axis_value(0,gp_axislv)  < 0));
        
key_down = keyboard_check(vk_down)|| keyboard_check(ord('S')) 
                || (gamepad_axis_value(0,gp_axislv) > 0); 


key_up_pressed = -(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
                || gamepad_button_check_pressed(0,gp_padu));
key_down_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
                || gamepad_button_check_pressed(0,gp_padd);
*/

key_right = keyboard_check(ord('D')) || (gamepad_axis_value(0,gp_axislh) > 0);
        
key_left = -(keyboard_check(ord('A')) || (gamepad_axis_value(0,gp_axislh) < 0));
     

key_up =  -(keyboard_check(ord('W')) || (gamepad_axis_value(0,gp_axislv)  < 0));
        
key_down = keyboard_check(ord('S')) || (gamepad_axis_value(0,gp_axislv) > 0); 


key_up_pressed = -(keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu));

key_down_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);
                                
//Non-Movement Keypresses
key_act = keyboard_check_pressed(ord("X"))|| keyboard_check_pressed(vk_space)
                || gamepad_button_check_pressed(0, gp_face3);
key_act2 = keyboard_check_released(ord("X"))|| keyboard_check_released(vk_space)
                || gamepad_button_check_released(0, gp_face3);                  
key_back = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0,gp_face1);                              
 
