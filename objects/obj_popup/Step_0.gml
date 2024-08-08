left_key = keyboard_check_pressed(vk_left)
right_key = keyboard_check_pressed(vk_right)

space_key = keyboard_check_pressed(vk_space);
enter_key = keyboard_check_pressed(vk_enter);


selected+= left_key-right_key;
if selected >= 2{selected = 0};
if selected < 0 {selected = 1};


if(space_key or mouse_check_button_pressed(mb_left) or enter_key)
{
	switch(selected)
	{
	case 0:
		game_end();
	break;
	
	
	case 1:
	global.is_popup = false;
	 instance_destroy();
	break;
	}
	
	
}