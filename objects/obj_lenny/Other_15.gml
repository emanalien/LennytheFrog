/// @description State Machine: Pushed by bouncer.
// in this state, no movement can take place, but collisions still happen.
horizontal_movement = force_of_push * push_direction;
force_of_push -= diminish_rate;

if (force_of_push <= 0) {
	if (place_meeting(x,y+1, Collider)) {
		current_state = Moving;	
	} else {
		current_state = Jumping;	
	}
}
// call the collisions script
event_user(1);
