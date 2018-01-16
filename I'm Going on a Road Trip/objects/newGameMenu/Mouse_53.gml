
var town = ds_map_find_first(controller.towns);
for(var t = 0; t < ds_map_size(controller.towns); t++){
	if(mouseOver == town){
		if(setStart) controller.startPoint = town;
		if(setDest) controller.destination = town;
	}	
	town = ds_map_find_next(controller.towns, town);
}
setStart = false;
setDest = false;
if(mouseOver == "round") controller.roundTrip = !controller.roundTrip;
if(mouseOver == "start") setStart = true;
if(mouseOver == "dest") setDest = true;

if(mouseOver == "add" && ds_list_size(controller.charList) < 4){
	room_goto_next();
}
if(mouseOver == "delete" && selectedChar >= 0 && selectedChar < ds_list_size(controller.charList)){
	var char = ds_list_find_value(controller.charList, selectedChar);
	ds_list_destroy(ds_map_find_value(char, "traits"));
	ds_map_destroy(char);
	ds_list_delete(controller.charList, selectedChar);
}


selectedChar = mouseOver;