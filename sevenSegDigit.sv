module sevenSegDigit (
input logic [3:0] digit,
//1010101
//GFEDCBA
output logic [6:0] displayBits
);
always_comb begin 
  case(digit)
    0000: begin 
      displayBits = 0111111; //0
    end
    0001: begin 
      displayBits = 0000110; //1
    end
    0010: begin 
      displayBits = 1011011; //2
    end
    0011: begin 
      displayBits = 1001111; //3
    end
    0100: begin 
      displayBits = 1100110; //4
    end
    0101: begin 
      displayBits = 1101101; //5
    end
    0110: begin 
      displayBits = 1111101; //6
    end
    0111: begin 
      displayBits = 0000111; //7
    end
    1000: begin 
      displayBits = 1111111; //8
    end
    1001: begin 
      displayBits = 1110111; //9
    end
    default: displayBits = 0000000; //Nothing
end 
endmodule
