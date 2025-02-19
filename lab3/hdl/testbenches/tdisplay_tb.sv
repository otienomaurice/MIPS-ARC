`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2023 09:25:47 PM
// Design Name: 
// Module Name: tdisplay_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tdisplay_tb;
  logic signed [12:0] tc;
  logic c_f;
  logic sign;
  logic [3:0] ones, tens, hund, thou;
    //duv
    tdisplay DUV(.tc,.sign,.ones,.tens,.hund,.thou,.c_f);
    initial begin
   c_f = 0;
   tc = -13'd256; #10;
   tc = -13'd156; #10;
   tc = -13'd20; #10;
   c_f = 1;
   tc = -13'd256; #10;
   tc = -13'd156; #10;
   tc = -13'd20; #10;
   c_f = 0;
   tc = 13'd0; #10;
   tc = 13'd156; #10;
   tc = 13'd255; #10;
   c_f = 1;
   tc = 13'd0; #10;
   tc = 13'd156; #10;
   tc = 13'd255; #10;
   $stop;
   end
endmodule