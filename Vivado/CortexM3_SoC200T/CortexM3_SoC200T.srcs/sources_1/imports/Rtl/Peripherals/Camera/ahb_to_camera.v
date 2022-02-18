/**********************************************/
/*   RAM 0X60040000--0X60065fff               */
/*   RST           0X60066000                 */
/*   PWDN          0X60066004                 */
/*   SCL           0X60066008                 */
/*   SDAO          0X6006600C                 */
/*   SDAI          0X60066010                 */
/*   SDAOEN        0X60066014                 */
/*   RAM STATE     0X60066018                 */
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
    output  wire    [16:0]              ADDR,

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

reg [15:0] addr_reg;
always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) addr_reg <= {16{1'b0}};
  else if(trans_en) addr_reg <= HADDR[17:2];
end

wire sel;
assign sel = addr_reg[15:4] == 12'h880;

reg ram_state;
wire ram_state_nxt;

assign ram_state_en = wr_en_reg & sel & (addr_reg[3:0] == 4'b0110) & HWDATA[0];
assign ram_state_nxt = ram_state ? (~DATA_READY) : ram_state_en;

always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) ram_state <= 1'b0;
  else ram_state <= ram_state_nxt;
end

reg scl,sdao,sdaoen,pwdn,rst;
wire sdai;

always@(posedge HCLK or negedge HRESETn) begin
  if(~HRESETn) begin
    scl     <= 1'b1;
    sdao    <= 1'b1;
    sdaoen  <= 1'b1;
    pwdn    <= 1'b1;
    rst     <= 1'b0;
  end else if(sel & wr_en_reg) begin
    if(addr_reg[3:0] == 4'b0000) rst    <= HWDATA[0];
    if(addr_reg[3:0] == 4'b0001) pwdn   <= HWDATA[0];
    if(addr_reg[3:0] == 4'b0010) scl    <= HWDATA[0];
    if(addr_reg[3:0] == 4'b0011) sdao   <= HWDATA[0];
    if(addr_reg[3:0] == 4'b0101) sdaoen <= HWDATA[0];
  end
end

assign HRDATA = (~sel) ?    RDATA   :
                ((addr_reg[3:0] == 4'b0000)   ?   {{31{1'b0}},rst}         :
                ((addr_reg[3:0] == 4'b0001)   ?   {{31{1'b0}},pwdn}        :
                ((addr_reg[3:0] == 4'b0010)   ?   {{31{1'b0}},scl}         :
                ((addr_reg[3:0] == 4'b0011)   ?   {{31{1'b0}},sdao}        :
                ((addr_reg[3:0] == 4'b0100)   ?   {{31{1'b0}},sdai}        :
                ((addr_reg[3:0] == 4'b0101)   ?   {{31{1'b0}},sdaoen}      :
                ((addr_reg[3:0] == 4'b0110)   ?   {{31{1'b0}},ram_state}   :  {32{1'b0}} )))))));

assign ADDR = HADDR[17:1];
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
            .I(sdao),
            .T(~sdaoen),
            .O(sdai),
            .IO(CAMERA_SDA)
    );

  end
endgenerate

endmodule