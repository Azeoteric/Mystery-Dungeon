///scr_get_input()

//Movement
key_right = keyboard_check(ord('D')) || (gamepad_axis_value(0,gp_axislh) > 0);
key_aim_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axisrh) > 0);        

key_left = -(keyboard_check(ord('A')) || (gamepad_axis_value(0,gp_axislh) < 0));
key_aim_left = -(keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axisrh) < 0));

key_up =  -(keyboard_check(ord('W')) || (gamepad_axis_value(0,gp_axislv)  < 0));
key_aim_up = -(keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axisrv) < 0));
      
key_down = keyboard_check(ord('S')) || (gamepad_axis_value(0,gp_axislv) > 0); 
key_aim_down = keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axisrv) > 0);

key_map = (keyboard_check_pressed(ord("F")) || gamepad_button_check_pressed(0,gp_padl));

key_upR =  -(keyboard_check_released(ord('W')) || (gamepad_button_check_released(0, gp_padu)));
      
key_downR = keyboard_check_released(ord('S')) || (gamepad_button_check_released(0, gp_padd));


//key_down_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);

                               
//Non-Movement Keypresses
key_act = keyboard_check_pressed(ord("X"))|| keyboard_check_pressed(vk_space)
                || gamepad_button_check_pressed(0, gp_face1);
key_act2 = keyboard_check_released(ord("X"))|| keyboard_check_released(vk_space)
                || gamepad_button_check_released(0, gp_face4);                  
key_back = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0,gp_face2);                              
 
//Just some helpful variables
if (-key_up || key_down || key_right || -key_left)   
{
    is_moving = true;
}
else
{
    is_moving = false;
}
hmove = key_right + key_left;
vmove = key_up + key_down;

vmoveR = key_upR + key_downR;
