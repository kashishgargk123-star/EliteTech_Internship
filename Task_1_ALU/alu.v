module alu(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] result,
    output reg carry,
    output reg zero
);

always @(*) begin
    carry = 0;

    case(sel)
        3'b000: {carry, result} = A + B;  // Addition

        3'b001: {carry, result} = A - B;  // Subtraction

        3'b010: result = A & B;           // AND

        3'b011: result = A | B;           // OR

        3'b100: result = A ^ B;           // XOR

        3'b101: result = ~A;              // NOT

        3'b110: result = A << 1;          // Left Shift

        3'b111: result = A >> 1;          // Right Shift

        default: result = 8'b00000000;
    endcase

    if(result == 8'b00000000)
        zero = 1'b1;
    else
        zero = 1'b0;
end

endmodule