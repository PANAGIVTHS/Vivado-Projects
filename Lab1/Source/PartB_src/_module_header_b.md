/* 
    This module decodes a character into ssd LEDs a, b, c ...

    Input: 4-bit bus (character)
    output: 7-bit bus (LEDs)
*/
module LEDdecoder (input [3:0] char, output reg [6:0] LED);

/*
    This module maps the const_counter to an FSM that tells the ANODES when to turn on

    Input: counter
    output: 4-bit anode bus
*/
module AnodeDecoder (input [3:0] counter, output reg an0, output reg an1, output reg an2, output reg an3);

/*
    This module sets the current char considering the FSM state

    Input: counter, reset
    output: char
*/
module CharacterDecoder (input [3:0] counter, output reg [3:0] char, input reset);

/*
    This module constantly increments a counter

    Input: clk, reset
    output: counter
*/
module ConstCounter (input clk, input reset, output reg [3:0] counter);

/*
    This module debounces a signal. 'Debouncing' means to eliminate noise or false 
    triggers caused by the rapid, unintended activation of a signal, such as the 
    bouncing of a mechanical switch (in our case).

    Input: clk, button
    output: button_debounced (Debounced signal)
*/
module Debouncer (input clk, input button, output reg button_debounced);

/*
    Top level module.
*/
module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);


