/// @description Level Manager Game Manager

// This is the level manager. It holds the location of all the flies needed
// to collect to advance to the next stage of the game.
// Once all flies are collected, the next level is unlocked.

#region BigManager settings
BM = instance_find(BigManager, 0);
CFA = BM.CaughtFlyArray;
first_step = true;

// temp code to show contents of CFA
//for (i = 0; i < ds_list_size(CFA); i++) {
	//show_debug_message(CFA[|i]);
//}
#endregion

#region Lenny information
Lenny = instance_find(obj_lenny, 0);
lenny_dead = false;
lenny_just_died = true;
#endregion

#region Camera Information
// holds the camera object, but not the room camera object itself
// that is stored in view_camera[0]
Camera = instance_create_layer(x,y,"Player", obj_camera);
#endregion

#region Fly Information
localCaughtFlies = ds_list_create();
num_flies = 0;
#endregion

#region Respawner Information
Respawn = instance_find(obj_respawn, 0);
#endregion

#region create fade 
// fade in settings
fade_in_finished = false;
fade_out_finished = false;
// start the level with a fade in
//instance_create_layer(x,y,"GameManager", obj_fade);
#endregion

#region travel between rooms
room_travel = SectionStart;

next_room_active = false;
#endregion

#region pause settings
paused = false;
screenShot = 0;
pauseMenu = -1;
#endregion