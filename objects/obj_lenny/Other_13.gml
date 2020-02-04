/// @description State Machine Jumping
// jumping movement, checking for double jump as well as collisions with ground

// check for double jump
if (can_dJump) && (keyboard_check_pressed(KeyJump)) {
	jump_direction = keyboard_check(KeyRight) - keyboard_check(KeyLeft);
	vertical_movement = -JumpHeight;
	can_dJump = false;
}

// check for licking
if (keyboard_check(KeyLick)) {
	currently_licking = true;	
}

// jump_direction is same for ground movement, except with inertia. Perhaps a complicated way of doing it.
air_movement = (keyboard_check(KeyRight) - keyboard_check(KeyLeft));
jump_movement = clamp(jump_movement + air_movement, -1, 1);
// jump movement
horizontal_movement = jump_movement * Speed;

// if down key is pressed
if (keyboard_check_pressed(KeyDown)) {
	drop_key = true;	
}

// check for collisions with ground
if (place_meeting(x, y + 1, mCollider)) {
	can_dJump = true;
	current_state = Moving;
}

// call the collisions script
event_user(1);