module camera(
    input   wire            HCLK,
    input   wire            PCLK,
    input   wire            HRESETn,
    input   wire            DATA_VALID,
    output  wire            DATA_READY,
    input   wire    [17:0]  DualRAM_RADDR,
    output  wire    [31:0]  DualRAM_RDATA,
    input   wire    [7:0]   Camera_idata,
    input   wire            VSYNC,
    input   wire            HREF
);

// RAM

reg [17:0] addra;
wire wea;
wire [15:0] dina;

Block_DualPort_RAM #(
    .ADDR_WIDTH(18)
) DuRAM (
    .clka(PCLK),
    .clkb(HCLK),
    .addrb(DualRAM_RADDR),
    .addra(addra),
    .dina(dina),
    .wea(wea),
    .doutb(DualRAM_RDATA)
);

// FSM

localparam idle = 2'b00;
localparam sdb  = 2'b01;
localparam cap  = 2'b10;
localparam rele = 2'b11;

reg [1:0] state;//0:idle 1:capture
reg [1:0] state_nxt;

reg syn_vsync;
always@(posedge PCLK or negedge HRESETn) begin
    if(~HRESETn) syn_vsync <= 1'b0;
    else syn_vsync <= VSYNC;
end

reg syn_valid;
always@(posedge PCLK or negedge HRESETn) begin
    if(~HRESETn) syn_valid <= 1'b0;
    else syn_valid <= DATA_VALID;
end

always@(*) begin
    case(state)
    idle: begin    
        if(syn_valid & syn_vsync) 
            state_nxt = sdb;
        else 
            state_nxt = state;
    end sdb: begin
        if(~syn_vsync)
            state_nxt = cap;
        else
            state_nxt = state;
    end cap: begin
        if(syn_vsync) 
            state_nxt = rele;
        else
            state_nxt = state;
    end rele: begin
        if(~syn_valid)
            state_nxt = idle;
        else
            state_nxt = state;
    end
    endcase
end

always@(posedge HCLK or negedge HRESETn) begin
    if(~HRESETn) state <= idle;
    else state <= state_nxt;
end

// BYTE STATE

wire capture_en;
assign capture_en = state[1] & (~VSYNC) & HREF & (~state[0]);

reg byte_state;
always@(posedge PCLK or negedge HRESETn) begin
    if(~HRESETn) 
        byte_state <= 1'b0;
    else if(capture_en) 
        byte_state <= ~byte_state;
    else 
        byte_state <= 1'b0;
end

// DATA REG

reg [15:0] data_reg;

always@(posedge PCLK or negedge HRESETn) begin
    if(~HRESETn)
        data_reg <= {16{1'b0}};
    else if(byte_state)
        data_reg[7:0]   <=  Camera_idata;
    else
        data_reg[15:8]  <=  Camera_idata;
end

assign dina = data_reg;

// WEA

assign wea = capture_en & (~byte_state);

// ADDRA

always@(posedge PCLK or negedge HRESETn) begin
    if(~HRESETn) begin
        addra       <= {17{1'b0}};
    end else if((~state[0]) & state[1] & (~syn_vsync)) begin   
        if(wea)
            addra           <= addra + 1'b1;
    end else begin
        addra               <= {17{1'b0}};
    end
end

// CAP EXIST

assign DATA_READY = state[1] & state[0];

endmodule