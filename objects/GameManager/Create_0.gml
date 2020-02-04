/// @description Level Manager Game Manager

// This is the level manager. It holds the location of all the flies needed
// to collect to advance to the next stage of the game.
// Once all flies are collected, the next level is unlocked.

#region Lenny information
Lenny = instance_find(obj_lenny, 0);
lenny_dead = false;
lenny_just_died = true;
#endregion

#region Camera Information
Camera = instance_find(obj_camera, 0);
#endregion

#region Fly Information
FlyArray = ds_list_create();
#endregion

#region Respawner Information
Respawn = instance_find(obj_respawn, 0);
#endregion

#region create fade in
start_opacity = 1;
#endregion



#region room transition & restart
next_room = false;
#region fade out
opacity = -5;
start_fade = false;
#endregion

room_transition_time = 100;
#endregion