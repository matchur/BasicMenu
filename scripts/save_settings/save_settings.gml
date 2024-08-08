/// @function save_settings()
/// @description Salva as configurações do jogo em um arquivo.
function save_settings() {
    var file = file_text_open_write("settings.ini");
    
    file_text_write_string(file, "volume=");
    file_text_write_real(file, global.volume);
    file_text_writeln(file);

    file_text_write_string(file, "fullscreen=");
    file_text_write_real(file, global.fullscreen);
    file_text_writeln(file);
    
    file_text_close(file);
}
