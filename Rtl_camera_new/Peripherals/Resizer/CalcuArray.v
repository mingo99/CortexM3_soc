module CalcuArray( 
    //Weights
    input     wire    [15:0]    W00,
    input     wire    [15:0]    W01,
    input     wire    [15:0]    W10,
    input     wire    [15:0]    W11,    

    //DATA
    input     wire    [7:0]     D00,
    input     wire    [7:0]     D01,
    input     wire    [7:0]     D10,
    input     wire    [7:0]     D11,

    //OUTPUT
    output    wire    [15:0]    SUM    
);

wire [23:0] P00,P01,P10,P11;
mult_16_8_24 M00(.A(W00),.B(D00),.P(P00));
mult_16_8_24 M01(.A(W01),.B(D01),.P(P01));
mult_16_8_24 M10(.A(W10),.B(D10),.P(P10));
mult_16_8_24 M11(.A(W11),.B(D11),.P(P11));

wire [23:0] _SUM;
assign _SUM = P00 + P01 + P10 + P11;
assign SUM = {6'b0, _SUM[23:14]};

endmodule