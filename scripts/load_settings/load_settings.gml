/// @function load_settings()
/// @description Carrega as configurações do jogo de um arquivo.
function load_settings() {
    if (file_exists("settings.ini")) {
        var file = file_text_open_read("settings.ini");
        
        while (!file_text_eof(file)) {
            var line = file_text_read_string(file);
            file_text_readln(file); // Move para a próxima linha
            
            // Processa a linha para obter chave e valor
            var tokens = string_split(line, "=");
            if (array_length(tokens) == 2) {
                var key = string(tokens[0]);
                var value = tokens[1];  // Removendo a conversão para real temporariamente
                
                switch (key) {
                    case "volume":
                        global.volume = real(value);  // Converte para real aqui
                        break;
                    case "fullscreen":
                        global.fullscreen = (real(value) == 1);  // Verifica se é "true"
                        break;
                }
            }
        }
        
        file_text_close(file);
		return true;
    }
	else return false;
}
