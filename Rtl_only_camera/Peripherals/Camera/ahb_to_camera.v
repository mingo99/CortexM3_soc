/**********************************************/
/*   RAM 0X60040000--0X6008B000               */
/*   RST           0X60090000                 */
/*   PWDN          0X60090004                 */
/*   SCL           0X60090008                 */
/*   SDAO          0X6009000C                 */
/*   SDAI          0X60090010                 */
/*   SDAOEN        0X60090014                 */
/*   RAM STATE     0X60090018                 */
/**********************************************/

module ahb_to_camera #(
    parameter                           SimPresent = 1
)   (
    input   wire                        HCLK,    
    input   wire                        HRESETn, 
    input   wire                        HSEL,    
    input   wire    [31:0]              HADDR,   
    input   wire    [1:0]               HTRANS,  
    input   wire    [2:0]               HSIZE,   
    input   wire    [3:0]               HPROT,   
    input   wire                        HWRITE,  
    input   wire    [31:0]              HWDATA,   
    input   wire                        HREADY, 
    output  wire                        HREADYOUT, 
    output  wire    [31:0]              HRDATA,  
    output  wire    [1:0]               HRESP,

    output  wire                        CAMERA_SCL,
    inout   wire                        CAMERA_SDA,

    output  wire                        DATA_VALID,
    input   wire                        DATA_READY,
    input   wire    [31:0]              RDATA,
    output  wire    [15:0]              ADDR,

    output  wire                        PWDN,
    output  wire                        RST
);


assign HRESP = 2'b00;
assign HREADYOUT = 1'b1;

wire trans_en;
assign trans_en = HSEL & HTRANS[1] & HREADY;

wire write_en;
assign write_en = trans_en & HWRITE;

reg wr_en_reg;
always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) wr_en_reg <= 1'b0;
  else wr_en_reg <= write_en;
end

reg [17:0] addr_reg;
always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) addr_reg <= {18{1'b0}};
  else if(trans_en) addr_reg <= HADDR[19:2];
end

wire reg_sel;
assign reg_sel = addr_reg[17:4] == 14'h2400;

wire ram_state_en;
reg ram_state;
wire ram_state_nxt;

assign ram_state_en = wr_en_reg & reg_sel & (addr_reg[3:0] == 4'b0110) & HWDATA[0];
assign ram_state_nxt = ram_state ? (~DATA_READY) : ram_state_en;

always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) ram_state <= 1'b0;
  else ram_state <= ram_state_nxt;
end

reg scl,sdaoen,pwdn,rst;
reg sdao;
wire sdai;

always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) begin
    scl     <= 1'b1;
    sdao    <= 1'b1;
    sdaoen  <= 1'b1;
    pwdn    <= 1'b1;
    rst     <= 1'b0;
  end else if(reg_sel & wr_en_reg) begin
    case (addr_reg[3:0])
    4'b0000:    rst    <= HWDATA[0];
    4'b0001:    pwdn   <= HWDATA[0];
    4'b0010:    scl    <= HWDATA[0];
    4'b0011:    sdao   <= HWDATA[0];
    4'b0101:    sdaoen <= HWDATA[0]; 
    default: ;
    endcase
  end
end

reg [31:0]  rdata;
always@(*) begin
    if(reg_sel)
        case(addr_reg[3:0])
        4'b0000:    rdata = {{31{1'b0}},rst};       
        4'b0001:    rdata = {{31{1'b0}},pwdn};      
        4'b0010:    rdata = {{31{1'b0}},scl};       
        4'b0011:    rdata = {{31{1'b0}},sdao};      
        4'b0100:    rdata = {{31{1'b0}},sdai};     
        4'b0101:    rdata = {{31{1'b0}},sdaoen};    
        4'b0110:    rdata = {{31{1'b0}},ram_state};
        default:    rdata = {32{1'b0}};
        endcase
    else            rdata = RDATA;
end

assign HRDATA = rdata;

assign ADDR = HADDR[18:2]-17'h10000;
assign DATA_VALID = ram_state;
assign PWDN = pwdn;
assign RST = rst;
assign CAMERA_SCL = scl;

generate
    if(SimPresent) begin : Sim
        assign CAMERA_SDA = sdaoen ? sdao : 1'bz;
        assign sdai = sdaoen ? 1'b0 : CAMERA_SDA;
    end else begin : Syn
        IOBUF SCCBBUF(
            .O(sdai),
            .IO(CAMERA_SDA),
            .I(sdao),
            .T(~sdaoen)
        );
    end
endgenerate

endmodule