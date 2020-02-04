/// @description store the collider id

collider_id = 0;

#region GameManager setup
// find the gamemanager and store this object id in it
GM = instance_find(GameManager, 0);
FlyArray = GM.FlyArray;

// check if the current instance is in the BM Caught Fly array
if (ds_list_find_index(instance_find(BigManager, 0).CaughtFlyArray, id)) {
	// @TODO: This method doesn't seem to be working.
	instance_destroy(id);	
} else {
	ds_list_add(FlyArray, id);
}
#endregion

#region position setup
start_y = y;
move_direction = -1; // -1 is up, 1 is down.
#endregion