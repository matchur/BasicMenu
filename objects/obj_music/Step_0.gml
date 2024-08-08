if (global.menu_level == 1)
{
	global.option[1,0] = "Volume  "+string_format(global.volume,8, 1);
}
audio_sound_gain(global.music, global.volume, 0);