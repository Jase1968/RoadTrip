

if(mouse_x > 50 && mouse_x < 200 && mouse_y > 50 && mouse_y < 82){
	mouseOver = "name";
}else if(mouse_x > 400 && mouse_x < 496 && mouse_y > 50 && mouse_y < 82){
	mouseOver = "age";
}else if(mouse_x > 50 && mouse_x < 150 && mouse_y > 720 && mouse_y < 752){
	mouseOver = "cancel";
}else if(mouse_x > 400 && mouse_x < 450 && mouse_y > 720 && mouse_y < 752){
	mouseOver = "add";
}else{
	mouseOver = noone;
}
for(var t = 0; t < ds_list_size(unselectedTraits); t++){
	if(mouse_x > 50 && mouse_x < 300 && mouse_y > 132 + t * 32 && mouse_y < 164 + t * 32)
		mouseOver = t;
}
for(var t = 0; t < ds_list_size(selectedTraits); t++){
	if(mouse_x > 400 && mouse_x < 550 && mouse_y > 132 + t * 32 && mouse_y < 164 + t * 32)
		mouseOver = ds_map_size(controller.traits) + t;
}

if(setName){
	if(string_length(keyboard_string > 20))
		keyboard_string = string_delete(keyboard_string, 20, 1);
	ds_map_replace(newChar, "name", keyboard_string);
}
if(setAge){
	if(string_digits(keyboard_string) != keyboard_string)
		keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
	if(real(keyboard_string) > 120)
		keyboard_string = "";
	ds_map_replace(newChar, "age", keyboard_string);
}