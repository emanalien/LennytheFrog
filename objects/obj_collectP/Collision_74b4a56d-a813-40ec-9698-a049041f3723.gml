/// @description Fast and easy collision code for collectables

// call the collision event user 
collider_id = other;
event_user(0); // this will determine what happens when the fly is caught

// destory the collectable
instance_destroy(id);