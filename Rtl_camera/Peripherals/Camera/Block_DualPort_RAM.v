module Block_DualPort_RAM(
    input clka,
    input clkb,
    input [16:0] addra,
    input [16:0] addrb,
    input [15:0] dina,
    input wea,
    output reg [31:0] doutb
);

(* ram_style="block" *) reg [31:0] mem [(2**17-1):0];

always@(posedge clka) begin
    if(wea) 
        mem[addra] <= dina;
end

always@(posedge clkb) begin
    doutb <= mem[addrb];
end

endmodule