module displayEncoder (
  input logic [19:0] result,
  output logic [3:0] numberBits [0:3]
);
int temp;
always_comb begin 
  temp = result;
  numberBits[0] = temp % 10;
  temp = temp/10;
  numberBits[1] = temp % 10;
  temp = temp/10;
  numberBits[2] = temp % 10;
  temp = temp/10;
  numberBits[3] = temp % 10;
end
endmodule

  
