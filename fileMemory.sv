module fileMemory(CLK,A1,A2,Destination,Operand1,Operand2);

input CLK;
input [2:0] A1;
input [2:0] A2;
input [2:0]Destination;

output reg[7:0] Operand1;
output reg[7:0] Operand2;

reg [7:0] registers[7:0]; //Holds 8 8-bit registers.

initial registers[0] = 8'b00000000 ;
initial registers[1] = 8'b00000001 ;
initial registers[2] = 8'b00000010 ;
initial registers[3] = 8'b00000011 ;
initial registers[4] = 8'b00000100 ;
initial registers[5] = 8'b00000101 ;
initial registers[6] = 8'b00000110 ;
initial registers[7] = 8'b00000111 ; 


always @(posedge CLK or A1 or A2)
begin
  Operand1 <= registers[A1];
  Operand2 <= registers[A2];
  registers[7] <= Destination;
end
endmodule
