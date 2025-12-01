module Carry_Look_Ahead_Adder_4bit (
    input  [3:0] A,     // 4-bit input A
    input  [3:0] B,     // 4-bit input B
    input        Cin,   // Carry input
    output [3:0] Sum,   // 4-bit sum
    output       Cout   // Carry output
);

    wire [3:0] P, G;    // Propagate and Generate signals
    wire C1, C2, C3; 
  assign G = A & B;
  assign P = A ^ B;
  
  
  assign C1 = G[0] | (Cin & P[0]);
  assign C2 = G[1] | (G[0] & P[1]) | (Cin & P[0] & P[1]);
  assign C3   = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
  assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) 
                  | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
  assign Sum[0] = P[0] ^ Cin;
  assign Sum[1] = P[1] ^ C1;
  assign Sum[2] = P[2] ^ C2;
  assign Sum[3] = P[3] ^ C3;
  
endmodule
  
