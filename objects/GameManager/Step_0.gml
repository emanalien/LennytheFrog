/// @description Insert description here
// You can write your code in this editor


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
if (LennyLives <= -1) {
	start_fade = true;
	room_transition_time -= 1;
	if (room_transition_time <= 0) {
		room_restart();	
	}
}
#endregion

#region next room
// this will have to be massivly changed in order to record total flies and everything
if (next_room) {
	room_goto(NextRoom);	
}
#endregion