/// @description When the enemy is being guided to a position by some other object.
x = lerp(x, guide_x, guide_lerp);
y = lerp(y, guide_y, guide_lerp);
if (abs(x - guide_x) <= guide_error) and (abs(y - guide_y) <= guide_error) {
	guider.guidance_complete = true;
}