module bin2gray(input [3:0] bin,
                output [3:0] gray);
  
  assign gray[3] = bin[3];
  assign gray[2] = bin[3] ^bin [2];
  assign gray[1] = bin[2] ^bin [1];
  assign gray[0] = bin[1] ^bin [0];
endmodule


//TESTBENCH
`timescale 1ns/1ps

module bin2gray_tb;
  reg [3:0] bin;
  wire [3:0] gray;
  
  bin2gray dut(.bin(bin),.gray(gray));
  
  initial begin 
    //$display ("Time=%0t | bin=%b | gray=%b", $time,bin,gray);
    
      $monitor("Time=%0t | BIN=%b | GRAY=%b", $time, bin, gray);
    bin =4'b0000;#10;
    bin =4'b0001;#10;
    bin =4'b0010;#10;
    bin =4'b0011;#10;
    bin =4'b0100;#10;
    bin =4'b0101;#10;
    bin =4'b0110;#10;
    bin =4'b0111;#10;
    bin =4'b1000;#10;
    
    $finish;
  end
endmodule
