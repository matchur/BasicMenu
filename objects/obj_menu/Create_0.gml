width = 345;
height = 304;


//selected
selected = 0;

//Volume
volume = ""
global.show_volume = false;

//op_border
margin = 38;
spacing = 46;

//Tab 1
global.option[0,0] = "Jogar";
global.option[0,1] = "Configurações";
global.option[0,2] = "Sair";

//Tab 2
global.option[1,0] = "Volume";
global.option[1,1] = "Tela Cheia";
global.option[1,2] = "Voltar";

//flag para tirar popup
global.is_popup = false;

opt_lenght = 0;
global.menu_level = 0;

load = load_settings();

if (!load)
{
    global.fullscreen = false;
}
else
{
	
	window_set_fullscreen(global.fullscreen);
}


