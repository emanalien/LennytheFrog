/// @description Insert description here
// You can write your code in this editor
if (touched) {
	falling_countdown += 1;
	if (falling_countdown > FallTime) { 
		falling = true;
		touched = false;
		is_solid = false;
	}
}
if (falling) {
	vertical_movement += GM.Gravity;
	if (vertical_movement > GM.TerminalV) {
		vertical_movement = GM.TerminalV;	
	}
	y += vertical_movement;
	if (y > start_y + FallDistance) {
		instance_destroy(id);	
	}
}