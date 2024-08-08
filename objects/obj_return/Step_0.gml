// Evento Step

// Verifica se o mouse está sobre o botão
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Altera para o frame 2 da sprite se o mouse estiver sobre o botão
    image_index = 1; // Assumindo que o segundo frame é o índice 1
    
    // Verifica se o botão do mouse foi pressionado
    if (mouse_check_button_pressed(mb_left)) {
        // Volta para a sala rm_menu
        room_goto(rm_menu);
    }
} else {
    // Retorna ao frame original quando o mouse não está sobre o botão
    image_index = 0; // Assumindo que o primeiro frame é o índice 0
}
