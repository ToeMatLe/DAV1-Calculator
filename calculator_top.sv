module calculator_top(
input logic clk,

output logic [6:0] segBits
output logic [3:0] trigger
input logic [3:0] op1,
input logic [3:0] op2,
input logic operation, 
input logic sign, 
);

logic [19:0] result;
logic [3:0] numberBits [0:3];
logic [6:0] displayBits [0:3];

seg_driver DUT1 (
    .displayBits(displayBits), 
    .clk(clk), 
    .trigger(trigger), 
    .segBits(segBits)
);

miniAlu DUT2 (
    .clk(clk),
    .result(result),
    .op1(op1),
    .op2(op2),
    .operation(operation),
    .sign(sign)
);
displayEncoder DUT3 (
    .result(result),
    .numberBits(numberBits)
);

// The four digit displays
sevenSegDigit DUT4 (
    .digit(numberBits[0]),
    .displayBits(displayBits[0])
);
sevenSegDigit DUT5 (
    .digit(numberBits[1]),
    .displayBits(displayBits[1])
);
sevenSegDigit DUT6 (
    .digit(numberBits[2]),
    .displayBits(displayBits[2])
);
sevenSegDigit DUT7 (
    .digit(numberBits[3]),
    .displayBits(displayBits[3])
);


endmodule