/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!dead){
audio_play_sound(aDeath,1,false)
dead=true
layer=layer_get_id("bodies")
instance_destroy(other)
}