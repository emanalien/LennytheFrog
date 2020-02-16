/// @description This manager persists through the whole game, and keeps track of all the flies captured

CaughtFlyArray = ds_list_create();

// temp create GM
GM = instance_create_layer(x,y,"GameManager", GameManager);