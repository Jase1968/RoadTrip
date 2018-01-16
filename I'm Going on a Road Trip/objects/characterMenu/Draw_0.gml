
draw_set_alpha(1);

if(mouseOver == "name") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(50, 50, "Name: " + ds_map_find_value(newChar, "name"));
if(mouseOver == "age") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(400, 50, "Age: " + string(ds_map_find_value(newChar, "age")));
draw_set_color(c_white);
draw_text(50, 100, "Choose some traits:");
for(var t = 0; t < ds_list_size(unselectedTraits); t++){
	if(mouseOver == t) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	draw_text(50, 132 + t * 32, ds_list_find_value(unselectedTraits, t));
}
draw_set_color(c_white);
draw_text(400, 100, ds_map_find_value(newChar, "name") + " is:");
for(var t = 0; t < ds_list_size(selectedTraits); t++){
	if(mouseOver == ds_map_size(controller.traits) + t) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	draw_text(400, 132 + t * 32, ds_list_find_value(selectedTraits, t));
}
for(var t = 0; t < ds_list_size(unselectedTraits); t++){
	if(mouseOver == t){
		trait = ds_list_find_value(unselectedTraits, t);
		draw_set_color(c_gray)
		draw_rectangle(mouse_x + 20, mouse_y,
						mouse_x + 40 + string_width_ext(ds_map_find_value(controller.traits, trait), 16, 200),
						mouse_y + string_height_ext(ds_map_find_value(controller.traits, trait), 16, 200), false);
		draw_set_color(c_yellow);
		draw_text_ext(mouse_x + 30, mouse_y, ds_map_find_value(controller.traits, trait), 16, 200);
	}
}
for(var t = 0; t < ds_list_size(selectedTraits); t++){
	if(mouseOver == ds_map_size(controller.traits) + t){
		trait = ds_list_find_value(selectedTraits, t);
		draw_set_color(c_gray)
		draw_rectangle(mouse_x + 20, mouse_y,
						mouse_x + 40 + string_width_ext(ds_map_find_value(controller.traits, trait), 16, 200),
						mouse_y + string_height_ext(ds_map_find_value(controller.traits, trait), 16, 200), false);
		draw_set_color(c_yellow);
		draw_text_ext(mouse_x + 30, mouse_y, ds_map_find_value(controller.traits, trait), 16, 200);
	}
}


if(mouseOver == "add") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(400, 720, "Add");

if(mouseOver == "cancel") draw_set_color(c_aqua);
else draw_set_color(c_white);
draw_text(50, 720, "Cancel");