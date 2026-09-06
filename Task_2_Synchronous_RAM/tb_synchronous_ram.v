`timescale 1ns/1ps

module tb_synchronous_ram;

    // Parameters
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 4;

    // Testbench signals
    reg clk;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;

    // Instantiate RAM
    synchronous_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin

        // Initialize
        clk = 0;
        we = 0;
        addr = 0;
        data_in = 0;

        // -------------------------
        // WRITE 25 to address 3
        // -------------------------
        #10;
        we = 1;
        addr = 4'd3;
        data_in = 8'd25;

        // -------------------------
        // WRITE 50 to address 7
        // -------------------------
        #10;
        addr = 4'd7;
        data_in = 8'd50;

        // -------------------------
        // WRITE 100 to address 10
        // -------------------------
        #10;
        addr = 4'd10;
        data_in = 8'd100;

        // Stop writing
        #10;
        we = 0;

        // -------------------------
        // READ address 3
        // -------------------------
        addr = 4'd3;

        #10;
        $display("Address = %d, Data = %d", addr, data_out);

        // -------------------------
        // READ address 7
        // -------------------------
        addr = 4'd7;

        #10;
        $display("Address = %d, Data = %d", addr, data_out);

        // -------------------------
        // READ address 10
        // -------------------------
        addr = 4'd10;

        #10;
        $display("Address = %d, Data = %d", addr, data_out);

        #10;

        $finish;

    end

endmodule
