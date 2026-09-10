`timescale 1ns / 1ps
module calculator(
input wire clk,rst,
input wire start,
input wire [3:0]a ,
input wire [3:0]b,

input wire [1:0]opcode,
output reg [7:0]result
    );
    reg [7:0]X;
    reg [7:0]Y;
    reg carry_in;
    reg [7:0]acc;
    reg [3:0]count;
    wire [7:0]adder_out=X+Y+carry_in;
    
    always @(posedge clk or negedge rst)
    if(!rst)begin
    X<=8'b0;
    Y<=8'b0;
    carry_in<=0;
    acc<=8'b0;
    count<=4'b0;
    result<=8'b0;
    end
    //ADDITION
    else begin
    if(opcode == 2'b00)
    begin
     X<={4'b0000,a};
     Y<={4'b0000,b};
     carry_in<=1'b00;
   end 
   //SUBSTRACTION
   else  if(opcode ==2'b01)
   begin
  X<={4'b0000,a};
  Y<=~{4'b0000,b};
  carry_in<=1'b01;
   end
   //MULTIPLICATION
   else if(opcode == 2'b10)
   begin
   if(start)
   begin
   acc<=8'b0;
   count<=0;
   end
   else if(count <b) begin
   X<=acc;
   Y<={4'b0000,a};
   carry_in<=1'b0;
   
   count<=count+1;
   acc<=adder_out;
   end
  end
  //DIVISION
   else begin 
   if(start)
   begin
   acc<=8'b0;
   count<=0;
   
   end 
   else begin

   if(start)
   begin
     // Load dividend into accumulator
     acc<={4'b0000,a};
     count<=0;
   end

   else begin

     // acc - b = acc + ~b + 1
     X<=acc;
     Y<=~{4'b0000,b};
     carry_in<=1'b1;

     if((b != 4'b0000) && adder_carry)
     begin
       acc<=adder_out;
       count<=count+1'b1;
   end
   end
   end
//RESULT
   always @(*) begin
   case(opcode)
   2'b00: result = adder_out;
   2'b01: result = adder_out;
   2'b10: result = acc;
   2'b11: if(b==4'b0000)
           begin
           result = 8'hff;
           end
           else begin
           result = {4'b0000,count};
           end
   endcase
   end
endmodule

