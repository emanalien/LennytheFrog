/// @description store the collider id

collider_id = 0;

#region GameManager setup
// setup the uniqueID of this instance, consiting of the room name and x coord
uniqueID = room_get_name(room) + string(x);
// find the gamemanager @TODO: Do I still need the gamemanager??
GM = instance_find(GameManager, 0);
CFA = GM.BM.CaughtFlyArray;

#endregion

#region position setup
start_y = y;
move_direction = -1; // -1 is up, 1 is down.
#endregion