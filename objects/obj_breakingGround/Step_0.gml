/// @description Insert description here
// You can write your code in this editor
if (touched) {
	falling_countdown += 1;
	if (falling_countdown > falling_time) { 
		falling = true;
		touched = false;
	}
}
if (falling) {
	vertical_movement = clamp(vertical_movement + GM.Gravity, 0, GM.TerminalV);
	y += vertical_movement;
	if (y > start_y + fall_distance) {
		instance_destroy(id);	
	}
}