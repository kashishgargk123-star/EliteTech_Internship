`timescale 1ns/1ps

module tb_alu;

reg [7:0] A;
reg [7:0] B;
reg [2:0] sel;

wire [7:0] result;
wire carry;
wire zero;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    // Addition
    A = 8'd10; B = 8'd5; sel = 3'b000;
    #10;

    // Subtraction
    A = 8'd15; B = 8'd5; sel = 3'b001;
    #10;

    // AND
    A = 8'b10101010; B = 8'b11001100; sel = 3'b010;
    #10;

    // OR
    A = 8'b10101010; B = 8'b11001100; sel = 3'b011;
    #10;

    // XOR
    A = 8'b10101010; B = 8'b11001100; sel = 3'b100;
    #10;

    // NOT
    A = 8'b10101010; sel = 3'b101;
    #10;

    // Left Shift
    A = 8'd20; sel = 3'b110;
    #10;

    // Right Shift
    A = 8'd20; sel = 3'b111;
    #10;

    // Zero Flag Test
    A = 8'd5; B = 8'd5; sel = 3'b001;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%d B=%d sel=%b result=%d carry=%b zero=%b",
              $time, A, B, sel, result, carry, zero);
end

endmodule