

//Musica : Irreal - Windows96
if(!audio_is_playing(snd_irrealwin96))
{
	global.music = audio_play_sound(snd_irrealwin96,1000,true);
}


//settings volume
if (!load_settings())
{
    global.volume = audio_sound_get_gain(global.music);
}
