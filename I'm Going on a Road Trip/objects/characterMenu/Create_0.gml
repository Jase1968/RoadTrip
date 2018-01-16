mouseOver = noone;
setName = false;
setAge = false;

newChar = ds_map_create();
ds_map_add(newChar, "name", "John Doe");
ds_map_add(newChar, "age", 25);
unselectedTraits = ds_list_create();
selectedTraits = ds_list_create();
ds_map_add(newChar, "traits", selectedTraits);
trait = ds_map_find_first(controller. traits)
for(var t = 0; t < ds_map_size(controller.traits); t++){
	ds_list_add(unselectedTraits, trait);
	trait = ds_map_find_next(controller.traits, trait);
}