/// @description store the collider id

collider_id = 0;

#region GameManager setup
// find the gamemanager and store this object id in it
GM = instance_find(GameManager, 0);
ds_list_add(GM.FlyArray, id);
#endregion

#region position setup
start_y = y;
move_direction = -1; // -1 is up, 1 is down.
#endregion