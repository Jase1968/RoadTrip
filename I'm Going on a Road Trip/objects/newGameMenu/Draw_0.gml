
//Character List
draw_set_color(c_white);
draw_text(charX, charY, "Passengers:");
for(var c = 0; c < ds_list_size(controller.charList); c++){
	var char = ds_list_find_value(controller.charList, c);
	if(mouseOver == c || selectedChar == c) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	draw_text(charX + 10, charY + 32 + 128 * c, ds_map_find_value(char, "name"));
	draw_rectangle(charX + 10, charY + 64 + 128 * c, charX + 10 + 32, charY + 64 + 64 + 128 * c, true);
}
if(mouseOver == "add") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(charX, charY + 670, "Add");
if(mouseOver == "edit") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(charX + 100, charY + 670, "Edit");
if(mouseOver == "delete") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(charX + 200, charY + 670, "Delete");

draw_sprite(spr_map, 0, mapX, mapY);
if(mouseOver == "start" || setStart) draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(mapX, mapY - 50, "Start: " + (controller.startPoint == noone ? "" : controller.startPoint));
if(mouseOver == "dest" || setDest) draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(mapX, mapY - 25, "Destination: " + (controller.destination == noone ? "" : controller.destination));
if(mouseOver == "round") draw_set_color(c_aqua);
else draw_set_color(c_white);draw_text(mapX + 400, mapY - 50, "Round Trip " + (controller.roundTrip ? "[X]" : "[ ]"));
var town = ds_map_find_first(controller.towns);
for(var t = 0; t < ds_map_size(controller.towns); t++){
	var townX = mapX + ((124 - getXGPS(ds_map_find_value(controller.towns, town))) * 638 / 60);
	var townY = mapY + ((49 - getYGPS(ds_map_find_value(controller.towns, town))) * 384 / 27);
	draw_sprite(spr_star, 0, townX, townY);
	town = ds_map_find_next(controller.towns, town);
}
var town = ds_map_find_first(controller.towns);
for(var t = 0; t < ds_map_size(controller.towns); t++){
	var townX = mapX + ((124 - getXGPS(ds_map_find_value(controller.towns, town))) * 638 / 60);
	var townY = mapY + ((49 - getYGPS(ds_map_find_value(controller.towns, town))) * 384 / 27);
	if(mouseOver == town){
		draw_set_color(c_black);
		draw_text(townX + 38, townY + 2, town);
		draw_set_color(c_aqua);
		draw_text(townX + 36, townY, town);
	}
	town = ds_map_find_next(controller.towns, town);
}

draw_set_color(c_white);
draw_text(carsX, carsY, "Choose method of transportation:");