// Configura a cor e desenha o valor do dano
//draw_set_font(fnt_dano); // Fonte opcional
draw_set_color(c_red);
draw_text(x, y, string(dano)); // Exibe o dano
draw_set_color(c_white); // Reseta a cor para evitar interferência em outros objetos
