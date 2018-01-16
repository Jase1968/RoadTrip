ds_map_destroy(traits);
ds_map_destroy(towns);
ds_list_destroy(ghostTowns);
ds_list_destroy(destinations);
for(var c = 0; c < ds_list_size(charList); c++){
	var char = ds_list_find_value(charList, c);
	ds_list_destroy(ds_map_find_value(char, "traits"));
	ds_map_destroy(char);
}
ds_list_destroy(charList);
ds_list_destroy(events);