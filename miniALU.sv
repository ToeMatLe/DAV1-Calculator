module miniALU (
    input logic signed [3:0] op1,
    input logic signed [3:0] op2,
    input logic operation, //if low preform add/sub, if high preform aritmetic shift
    input logic sign, //if low add/left shift, if high sub/right shift
    output logic [19:0] result
); 
always_comb begin
    if (operation) begin 
        if (sign) begin 
            result = op1 >>> op2; //arithmetic right shift, preserving sign bit
        end
        else begin 
            result = op1 <<< op2; //arithmetic left shift 
        end
    end
    else begin 
        if (sign) begin 
            result = op1 - op2; //subtraction
        end
        else begin 
            result = op1 + op2; //addition
        end
    end
end
endmodule
