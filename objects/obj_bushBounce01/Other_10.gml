/// @description Change player vertical_movemnet

// TODO: Determine whether player is above or to the right
// THIS IS REDUNDANT?? 
var direction_to_collidee = degtorad(point_direction(x,y,Collidee.x, Collidee.y));
with (Collidee) {
	vertical_movement = sign(sin(direction_to_collidee)) * -other.BounceHeight;
	jump_direction = keyboard_check(KeyRight) - keyboard_check(KeyLeft);
	current_state = Jumping;
}