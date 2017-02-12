///scr_text(text)
var text = argument[0];
var text_length = string_length(text);

if(time < text_length) {
     time += spd;
     print = string_copy(text, 0 ,time);  
}
