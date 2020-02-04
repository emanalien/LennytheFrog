/// @description Determine what happens at end of fade out.
if (room_travel = "end") {
	// temp end of game.
	game_end();	
} else {
	if (room_travel == NextRoom) {
		// @TODO: This method of storing and deleting doesn't seem to be working.
		for (i = 0; i < ds_list_size(FlyArray); i++) {
			ds_list_add(BM.CaughtFlyArray, ds_list_find_value(FlyArray, i));
		}
	}
	room_goto(room_travel);	
}