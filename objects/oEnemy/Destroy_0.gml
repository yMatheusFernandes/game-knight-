// Incrementa a contagem de inimigos mortos
global.enemy_kills += 1;

// Checa se 5 inimigos foram destruídos
if (global.enemy_kills >= 5) {
    // Destrói a parede (obj_wall)
    with (parede) {
        instance_destroy();
    }
}
