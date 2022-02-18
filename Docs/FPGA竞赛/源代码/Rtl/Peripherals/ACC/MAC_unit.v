//multi1:       1s   5i   10d
//multi2:       1s   5i   10d
//product_32:   1s  11i   20d
//product:      1s   5i   10d
//s-sign,i-integer,d-decimal
//! 9 numbers in a conv_window was accumulated by 32bit,
//! result RAM 16bit,use round multi

module MAC_unit(
    input            clk,
    input            rstn,
    input            we,
    input   [15:0]   f0,
    input   [15:0]   f1,
    input   [15:0]   w0,
    input   [15:0]   w1,
    input   [10:0]   addr,
    input   [15:0]   pool_out,
    input            status_calcu_init, //indicate the second cycle in status calcu
    input            Nif_fir,
    input            win_done2,
    input            status_calcu,
    input            choose, //choose RAM input channel,from MAC or from POOL
    output  [15:0]   dout
);

wire [31:0] product_32_0,product_32_1;
multi_16bit multip_0(
    .A(f0),
    .B(w0),
    .P(product_32_0)
);

multi_16bit multip_1(
    .A(f1),
    .B(w1),
    .P(product_32_1)
);

wire [31:0] prod_sum_32;
adder_32bit prod_add(
    .A(product_32_0),
    .B(product_32_1),
    .S(prod_sum_32)
);

reg [31:0] accum_32;
wire [31:0] adder_32;
assign adder_32 = ~status_calcu ? 32'b0 : (
                win_done2|status_calcu_init ? (Nif_fir ? 32'b0 : extend) : accum_32);

wire [31:0] extend;
assign extend = {dout[15], (dout[15] ? 6'b111111 : 6'b0), dout[14:0], 10'b0};

wire [31:0] accu_sum_32;
adder_32bit accum_add(
    .A(prod_sum_32),
    .B(adder_32),
    .S(accu_sum_32)
);

always@(posedge clk or negedge rstn)        
begin
    if(~rstn) accum_32<=0;
    else 
    begin
        if(~status_calcu) accum_32<=0;
        else accum_32<=accu_sum_32;
    end
end

wire [15:0] _cut,cut;
assign _cut = {accu_sum_32[31],accu_sum_32[24:10]};

// assign cut = (~accu_sum_32[10]) ? _cut : (
//                 accu_sum_32[31] ? _cut + 1'b1 : _cut - 1'b1);

assign cut = accu_sum_32[9] ? _cut + 1'b1 : _cut;

// wire [15:0] round_out;
// adder_16bit round(
//     .A(_cut),
//     .B(16'h0001),
//     .S(round_out)
// ); 

wire [15:0] din;
assign din = choose ? cut : pool_out;

reg [15:0] calcu_buff [0:1088];
reg [15:0] dout;
always@(posedge clk)
begin
    if(we) calcu_buff[addr]<=din;
    else dout<=calcu_buff[addr];
end

endmodule
