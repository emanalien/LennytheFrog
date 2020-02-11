/// @description Insert description here
// You can write your code in this editor
if (falling) {
	vertical_movement = clamp(GM.Gravity, 0, GM.TerminalV);
	y -= vertical_movement;
	if (y > start_y + fall_distance) {
		instance_destroy(id);	
	}
}