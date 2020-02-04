/// @description State Machine Decisions
// check if still alive
if (Health <= 0) {
	// create the pointFollower and bind it to the camera
	Camera.ObjectFollowing = -1;
	
	// this doesn't work to make the camera follow slowly.
	Camera.FollowRate = Camera.FollowSlow;
	GM.lenny_dead = true;
	instance_destroy(id);
}
// run the current state
event_user(current_state);