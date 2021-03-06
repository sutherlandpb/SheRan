///scr_get_input
right_key = keyboard_check(vk_right) || keyboard_check(ord('D'));
left_key = keyboard_check(vk_left) || keyboard_check(ord('A'))
up_key = keyboard_check(vk_up) || keyboard_check(ord('W'));
down_key = keyboard_check(vk_down) || keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(vk_space);
attack_key = keyboard_check_pressed(vk_lalt);
swap_key = keyboard_check_pressed(vk_lshift);
spell_key = keyboard_check_pressed(vk_lcontrol);
pause_key = keyboard_check_pressed(vk_escape);
show_controls_key = keyboard_check_pressed(vk_tab);
edit_key = keyboard_check_pressed(vk_f1);
num0_key = keyboard_check_pressed(vk_numpad0);
num1_key = keyboard_check_pressed(vk_numpad1);
num2_key = keyboard_check_pressed(vk_numpad2);
num3_key = keyboard_check_pressed(vk_numpad3);
num4_key = keyboard_check_pressed(vk_numpad4);
num5_key = keyboard_check_pressed(vk_numpad5);


//get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//check for gamepad input
if (xaxis == 0 && yaxis == 0 && attack_key == 0 && dash_key == 0 && pause_key == 0 && spell_key == 0 && swap_key == 0 && show_controls_key == 0 && gamepad_is_connected(0)) {
    //get the axis
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    pause_key = gamepad_button_check_pressed(0, gp_start);
    spell_key = gamepad_button_check_pressed(0, gp_face4);
    swap_key = gamepad_button_check_pressed(0, gp_face2);
    show_controls_key = gamepad_button_check_pressed(0, gp_select);
}
