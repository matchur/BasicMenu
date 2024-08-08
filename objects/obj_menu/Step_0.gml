up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
space_key = keyboard_check_pressed(vk_space);
enter_key = keyboard_check_pressed(vk_enter);

left_key = keyboard_check_pressed(vk_left)
right_key = keyboard_check_pressed(vk_right)

//verificação e checagem para não init null
opt_lenght = 3;
if (is_array(global.option[global.menu_level])) 
{
    opt_length = 3;
} else {
    opt_length = 0; //set
}




if(!global.is_popup){
//ANDAR PELO MENU COM TECLAS
selected+= down_key-up_key;
//Mouse
for (var i = 0; i < opt_length; i++) {
    var option_y = y + margin + spacing * i; // Calcula a posição Y da opção atual

    // Verifica se o mouse está sobre a opção atual
    if (mouse_x > x + margin && mouse_x < x + margin + width &&
        mouse_y > option_y && mouse_y < option_y + height) {
        selected = i; // Define a opção como selecionada se o mouse passou pro ela por ult
    }
}

if selected >= opt_lenght{selected = 0};
if selected < 0 {selected = opt_lenght-1};


//SELECIONAR
if(space_key or mouse_check_button_pressed(mb_left) or enter_key)
{	
	var _sml = global.menu_level;
	switch(global.menu_level)
	{
		case 0:	
			switch(selected)
			{
			//Jogar
			case 0:		room_goto_next();		break;
			//Configurações
			case 1:	global.menu_level = 1; break;
			//Sair
			case 2:
			var pop_up = instance_create_depth(x, y, -1, obj_popup);
				global.is_popup = true;
			break;
			}	
		break;
	
		case 1:

			switch(selected)
			{
			//Volume
			case 0:				
				if(global.volume!=1)
					global.volume +=0.2;
				else
					 global.volume = 0;
				
			break;
			//Tela Cheia
			case 1:	
			if window_get_fullscreen()
			    {
			        window_set_fullscreen(false);
					global.fullscreen = false;
			    }
			    else
			    {
			        window_set_fullscreen(true);
					global.fullscreen = true;
			    }			
			break;
			
			//Voltar
			case 2:	save_settings(); global.menu_level = 0; break;
			}	

		break;
	}
	
	if _sml != global.menu_level {selected = 0}
	
	opt_lenght = array_length(global.option[global.menu_level]);
}

//setinha pra mexer no som
if(selected == 0 and global.menu_level=1)
{
	if(left_key)
	{
		global.volume -=0.2;
	}
	if(right_key)
	{
		global.volume +=0.2;
	}
	if (global.volume>1)
	global.volume = 1;
	if (global.volume<0)
	global.volume = 0;
}
}

 
	
