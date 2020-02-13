/// @description State Machine: Moving

#region movement and collisions
#region check for movement direction
horizontal_direction = keyboard_check(KeyRight) - keyboard_check(KeyLeft);
if (horizontal_direction != 0) {
	// change facing if movement direction changed
	player_direction = horizontal_direction;
}	
#endregion

#region move the player horizontally, but only if touching the ground
//if (place_meeting(x, y + 1, mCollider)) { // update this to only move when touching the ground??
	horizontal_movement = horizontal_direction * Speed;
//}
#endregion

#region check for the pressing of jump, determine single or double jump, move player
if (keyboard_check_pressed(KeyJump)) {
	// start jump in given direction
	jump_movement = sign(horizontal_direction);
	// inital upwards movmenet
	bouncer(id, JumpHeight); // this changes vertical_movement and current_state.
	//vertical_movement = -JumpHeight;
	//current_state = Jumping;
}
#endregion

#region check for 'down' key press, which sets the vertical movement as TerminalV
if (keyboard_check_pressed(KeyDown)) {
	drop_key = true;
}
#endregion

#region check if wanting to lick
if (keyboard_check(KeyLick)) {
	currently_licking = true;
}
#endregion
#endregion


// call the collisions script
event_user(1);