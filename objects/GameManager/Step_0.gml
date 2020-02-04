/// @description Insert description here
// You can write your code in this editor

#region tester code @TODO remove this
if (keyboard_check_pressed(ord("H"))) {
	instance_create_layer(x,y,"GameManager", obj_fade);
}
#endregion


#region Lenny Death
// check if lenny is dead
if (lenny_dead) {
	if (lenny_just_died) {
		// remove a lenny life. This controls whether the player respawns inside this level, or at the start
		// of the stage.
		LennyLives -= 1;
		lenny_just_died = false;
		tics_elapsed = RespawnTime;
	}
	tics_elapsed -= 1;
	if (tics_elapsed <= 0) {
		lenny_dead = false;
		lenny_just_died = true;
		Lenny = instance_create_layer(Respawn.x, Respawn.y, "Player", obj_lenny);
	}
}
#endregion

#region check if lenny totally dead
if (LennyLives < 0) {
	// create a fade object if it doesn't already exist
	// the fade object will fade out the room, and then goto the room given in 
	// this gamemanager's SectionStart variable, by setting the room_travel variable
	// as the room's id
	if (!instance_exists(obj_fade)) {
		//instance_deactivate_layer("Player");
		room_travel = "end";
		with(instance_create_layer(x,y,"GameManager", obj_fade)) {
			// setup of fade out variables
			StartOpacity = -0.5;
			Direction = 1;
			Increment = 0.1;
			End = 1;
			// set the function to be called at end of fade out
			fade_finished_function = 10; // 10 is the fade out finished
			// set the callers id
			caller = other.id;
		}
	}
}
#endregion

#region next room
// this will have to be massivly changed in order to record total flies and everything
if (next_room_active) {
	// create the fade out object to take me to the next room
	if (!instance_exists(obj_fade)) {
		//instance_deactivate_layer("Player");
		room_travel = NextRoom;
		with(instance_create_layer(x,y,"GameManager", obj_fade)) {
			// setup of fade out variables
			StartOpacity = -0.5;
			Direction = 1;
			Increment = 0.1;
			End = 1;
			// set the function to be called at end of fade out
			fade_finished_function = 10; // 10 is the fade out finished to travel between rooms
			// set the callers id
			caller = other.id;
		}
	}
}
#endregion