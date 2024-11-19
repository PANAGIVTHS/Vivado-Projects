/* 
    This module decodes a character into ssd LEDs a, b, c ...

    Input: 4-bit bus (character)
    output: 7-bit bus (LEDs)
*/
module LEDdecoder (input [3:0] char, output reg [6:0] LED);

