/// @description Determine what happens at end of fade out.
if (room_travel = "end") {
	// temp end of game.
	game_end();	
} else {
	if (room_travel == NextRoom) {
		for (i = 0; i < ds_list_size(localCaughtFlies); i++) {
			// foreach localcaughtfly, add it to the BM CaughtFlyArray.
			ds_list_add(CFA, localCaughtFlies[|i]);	
		}
	}
	room_goto(room_travel);	
}