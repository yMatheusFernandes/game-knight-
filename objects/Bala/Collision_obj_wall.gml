// Verificar se a colisão ocorreu com obj_wall
if (other == obj_wall) {
    instance_destroy(other); // Destruir a instância da bala
}