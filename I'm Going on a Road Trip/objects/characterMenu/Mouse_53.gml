
keyboard_string = "";
setName = false;
setAge = false;
if(mouseOver == "name") setName = true;
if(mouseOver == "age") setAge = true;
for(var t = 0; t < ds_list_size(unselectedTraits); t++){
	if(mouseOver == t){
		ds_list_add(selectedTraits, string(ds_list_find_value(unselectedTraits, t)));
		ds_list_delete(unselectedTraits, t);
	}
}
for(var t = 0; t < ds_list_size(selectedTraits); t++){
	if(mouseOver == ds_map_size(controller.traits) + t){
		ds_list_add(unselectedTraits, string(ds_list_find_value(selectedTraits, t)));
		ds_list_delete(selectedTraits, t);
	}
}

if(mouseOver == "cancel"){
	ds_list_destroy(unselectedTraits);
	ds_list_destroy(selectedTraits);
	ds_map_destroy(newChar);
	room_goto_previous();
}
if(mouseOver == "add"){
	ds_list_add(controller.charList, newChar);
	ds_list_destroy(unselectedTraits);
	room_goto_previous();
}
	