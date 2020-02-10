/// @description Find flies, lenny death, next room

#region on first step event, look through all the flies and grab their unique id's
if (first_step) {
	first_step = false;
	for (i = 0; i < instance_number(obj_fly); ) {
		var fly =  instance_find(obj_fly, i);
	
		// debug
		//show_debug_message(fly.uniqueID);
		//show_debug_message(ds_list_find_index(CFA, fly.uniqueID));
		// for each fly in the world, check if not already caught and destroy or record the id if otherwise
		if (ds_list_find_index(CFA, fly.uniqueID) != -1) {
			instance_destroy(fly); // destroy a fly if it is in the CAUGHTFLYARRAY
		} else {
			num_flies += 1;
			i++; // only incrememnt i if we didn't delete a fly
		}
	}
}
#endregion

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
	// this is just to create a new lenny once the respawn time has passed
	if (tics_elapsed <= 0) {
		lenny_dead = false;
		lenny_just_died = true;
		Lenny = instance_create_layer(Respawn.x, Respawn.y, "Player", obj_lenny);
	}
}
#endregion

#region check if lenny totally dead
// If lenny is totally dead, we are going to transition to the start of the section
if (LennyLives < 0) {
	// create a fade object if it doesn't already exist
	// the fade object will fade out the room, and then goto the room given in 
	// this gamemanager's SectionStart variable, by setting the room_travel variable
	// as the room's id
	if (!instance_exists(obj_fade)) {
		//instance_deactivate_layer("Player");
		room_travel = SectionStart;
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
// WIll it? this will have to be massivly changed in order to record total flies and everything
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