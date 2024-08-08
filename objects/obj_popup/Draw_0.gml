draw_set_font(global.font_popup);
draw_self()

var _c = c_black;

draw_text_color(x+lgap,y+tgap,txt_princ, _c, _c, _c, _c,1);	


for(i=0;i<array_length(opt);i++)
{
	 _c = c_black;
if selected == i {_c = c_grey}
draw_text_color(x+30+spacing*i,y*2,opt[i], _c, _c, _c, _c,1);	
	
}
