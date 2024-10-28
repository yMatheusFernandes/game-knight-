// No evento Step do obj_game_controller
if (keyboard_check_pressed(vk_escape)) {
    global.is_paused = !global.is_paused;
    
    // Pausar todos os sons quando o jogo estiver pausado
    if (global.is_paused) {
        audio_pause_all();
    } else {
        audio_resume_all();
    }
}
