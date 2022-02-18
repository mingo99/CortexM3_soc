module pool_unit(
    input            clk,
    input            rstn,
    input   [15:0]   mac_out,
    input   [15:0]   b,
    input            pool_win_done1,
    input            status_pool,
    input            pool_pad,
    input            status_pool_init,
    output  [15:0]   relu_out,
    output  [15:0]   to_be_relu,
    output  [15:0]   now_max
);

wire [15:0] to_be_relu;
assign relu_out = to_be_relu[15] ? 16'b0 : to_be_relu;

adder_16bit bias_add(
    .A(mac_out),
    .B(b),
    .S(to_be_relu)
);

wire [15:0] now_in;
assign now_in = pool_pad ? 16'b0 : relu_out;
assign now_max = (accu_max>=now_in) ? accu_max : now_in;
//after relu,they are all positive numbers,so they can be comparated directly

reg [15:0] accu_max;
always@(posedge clk or negedge rstn)
begin
    if(~rstn) accu_max<=16'b0;
    else
    begin
        if(status_pool) 
        begin
            if(pool_win_done1|status_pool_init) accu_max<=16'b0;
            else accu_max<=now_max;
        end
        else accu_max<=16'b0;
    end
end

endmodule