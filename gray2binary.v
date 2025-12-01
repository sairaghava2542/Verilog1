module gray2binary(input [3:0] gray,
                   output [3:0] binary);
  
  assign binary [3] = gray[3];
  assign binary [2] = gray [3] ^ gray [2];
  assign binary [1] = gray [3] ^ gray [2] ^ gray [1];
  assign binary [0] = gray [3] ^ gray [2] ^ gray [1] ^ gray [0];
endmodule

//TESTBENCH
`timescale 1ns/1ps

module gray2binary_tb;
  reg [3:0] gray;
  wire [3:0] binary;
  
  gray2binary dut(.gray(gray),.binary(binary));
  
  initial begin 
    //$display ("Time=%0t | bin=%b | gray=%b", $time,bin,gray);
    
    $monitor("Time=%0t | gray=%b | binary=%b", $time, gray, binary
            );
    gray =4'b0000;#10;
    gray =4'b0001;#10;
    gray =4'b0010;#10;
    gray =4'b0011;#10;
    gray =4'b0100;#10;
    gray =4'b0101;#10;
    gray =4'b0110;#10;
    gray =4'b0111;#10;
    gray =4'b1000;#10;
    
    $finish;
  end
endmodule
