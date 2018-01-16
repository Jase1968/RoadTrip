var coords = argument0;

var stringY = "";
for(var ch = string_length(coords); ch > 0; ch--){
	if(string_char_at(coords, ch) == ",") break;
	stringY = string_char_at(coords, ch) + stringY;
}

return real(stringY);