

mouseOver = noone;

if(mouse_x > charX && mouse_x < charX + 100 && mouse_y > charY + 670 && mouse_y < charY + 702)
	mouseOver = "add";

if(mouse_x > charX + 100 && mouse_x < charX + 200 && mouse_y > charY + 670 && mouse_y < charY + 702)
	mouseOver = "edit";

if(mouse_x > charX + 200 && mouse_x < charX + 300 && mouse_y > charY + 670 && mouse_y < charY + 702)
	mouseOver = "delete";

if(mouse_x > mapX && mouse_x < mapX + 200 && mouse_y > mapY - 50 && mouse_y < mapY - 25)
	mouseOver = "start";
if(mouse_x > mapX && mouse_x < mapX + 200 && mouse_y > mapY - 25 && mouse_y < mapY)
	mouseOver = "dest";
if(mouse_x > mapX + 400 && mouse_x < mapX + 600 && mouse_y > mapX - 50 && mouse_y < mapY)
	mouseOver = "round";

for(var c = 0; c < ds_list_size(controller.charList); c++){
	if(mouse_x > charX + 10 && mouse_x < charX + 50 && mouse_y > charY + 32 + 128 * c && mouse_y < charY + 128 + 128 * c)
		mouseOver = c;
}
var town = ds_map_find_first(controller.towns);
for(var t = 0; t < ds_map_size(controller.towns); t++){
	var townX = mapX + ((124 - getXGPS(ds_map_find_value(controller.towns, town))) * 638 / 60);
	var townY = mapY + ((49 - getYGPS(ds_map_find_value(controller.towns, town))) * 384 / 27);
	if(mouse_x > townX && mouse_x < townX + 32 && mouse_y > townY && mouse_y < townY + 32)
		mouseOver = town;
	town = ds_map_find_next(controller.towns, town);
}