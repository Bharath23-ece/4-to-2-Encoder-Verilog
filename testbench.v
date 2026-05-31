module testbench;
reg [3:0]a;
wire [1:0]y;
encoder uut(.a(a),.y(y));
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,testbench);
    $monitor("time=%t a=%b y=%b",$time,a,y);
    //samples
    a=4'b0001;#10;
    a=4'b0010;#10;
    a=4'b0100;#10;
    a=4'b1000;#10;
    $finish;
end 
endmodule
