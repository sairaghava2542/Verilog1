module even_odd_detector (input [3:0] data,output even, odd );
  
  assign even = ~ data[0];
  assign odd = data[0];
endmodule



// Code your testbench here
// or browse Examples
module even_odd_tb;
  
  reg [3:0] data;
  wire even,odd;
 
  even_odd_detector uut(.data(data),.even(even),.odd(odd));
  initial begin 
     $monitor("Time=%0t | Data=%0d | Even=%b | Odd=%b", $time, data, even, odd);
    data=4'd4;#10;
    data=4'd5;#10;
    data=4'd6;#10;
    $finish;
  end 
  
endmodule
