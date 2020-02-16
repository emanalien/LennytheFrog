/// @description Setup
#region private vas
//lenny = instance_find(obj_lenny, 0);
// changing these variables below results in the camera being used as a cutscene camera
FollowRate = FollowDefault;
#endregion

#region camera setup
view_height = 2160;
view_width = 3840;
res_height = 540;
res_width = 960;
r_height = room_height;
r_width = room_width;

camera_following = true;
#endregion

#region position setup
//x = ObjectFollowing.x;
//y = ObjectFollowing.y;
#endregion

#region setup viewport
view_enabled = true;
// make view 0 visible
view_set_visible(0, true);
// set port bounds to 1920x1080
view_set_wport(0,res_width);
view_set_hport(0,res_height);
// resize and center
window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, 
					(display_get_height() - view_hport[0]) * 0.5,
					view_wport[0], view_hport[0]);
surface_resize(application_surface, view_wport[0], view_hport[0]);
			
// create the camera, top left pos x, y, width, height, angle, object following, xspeed, yspeed
//camera = camera_create_view(x - view_width/2,y - view_height/2,view_width, view_height,
//									0, -1, -1, -1);
camera = camera_create_view(0,0,view_width, view_height,
									0, -1, -1, -1);								
// set view0 to use camera
view_set_camera(0, camera);
// changes the viewport
//view_hport[0] = res_height; // change viewport height
//view_wport[0] = res_width; // change viewport width
#endregion

#region parallax
bg_1 = layer_get_id("BG_1");
bg_2 = layer_get_id("BG_2");
bg_3 = layer_get_id("BG_3");
#endregion