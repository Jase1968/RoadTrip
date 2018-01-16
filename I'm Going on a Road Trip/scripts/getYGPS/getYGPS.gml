var coords = argument0;

var stringX = "";
for(var ch = 1; ch <= string_length(coords); ch++){
	if(string_char_at(coords, ch) == ",") break;
	stringX += string_char_at(coords, ch);
}

return real(stringX);