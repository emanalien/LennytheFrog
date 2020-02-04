/// @description Collision event for collectable

// THIS IS OLD SYSTEM. FLIES ARE NOW STORED IN THE GAMEMANAGER
//with(collider_id) {
//	flies_collected += 1;	
//}

// New System
// On collection, delete record from GM array
ds_list_delete(GM.FlyArray, ds_list_find_index(GM.FlyArray, id));
instance_destroy(id);