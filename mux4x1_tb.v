module mux4x1_tb;
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux4x1 uut (.in(in), .sel(sel), .out(out));

    initial begin
        $monitor("Time=%0t | sel=%b | in=%b | out=%b", $time, sel, in, out);
        in = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule
