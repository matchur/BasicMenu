draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);

draw_set_font(global.font_main);

draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i< opt_lenght;i++)
{
	var _c = c_white;
	if selected == i {_c = c_yellow}
	draw_text_color(x+margin,y+margin+spacing*i,global.option[global.menu_level,i], _c, _c, _c, _c,1);	
	
}


