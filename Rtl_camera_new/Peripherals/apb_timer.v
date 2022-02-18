module apb_timer (
  input  wire        PCLK,        // PCLK for timer operation
  input  wire        PRESETn,     // Reset
   
  input  wire        PSEL,        // Device select
  input  wire [11:2] PADDR,       // Address
  input  wire        PENABLE,     // Transfer control
  input  wire        PWRITE,      // Write control
  input  wire [31:0] PWDATA,      // Write data
    
  output wire [31:0] PRDATA,      // Read data
  output wire        PREADY,      // Device ready
  output wire        PSLVERR,     // Device error response

  //Show the time
  output wire [7:0]  seg,
  output wire [5:0]  dig

  );
// Signals for Clock divide
reg [15:0]  cnt;
reg clk_timer;

//Clock divide
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
    begin
        clk_timer <= 1'b0;
        cnt       <= {16{1'b0}};
    end
    else if(cnt == 24999)
    begin
        clk_timer <= ~clk_timer;
        cnt       <= {16{1'b0}};
    end
    else 
        cnt       <= cnt + 1'b1;
end 

// Signals for read/write controls
wire    read_enable;
wire    write_enable;
wire    write_enable00;
wire    write_enable01;
wire    write_enable10;

// Read and write control signals
assign  read_enable    = PSEL & (~PWRITE);
assign  write_enable   = PSEL & (~PENABLE) & PWRITE; 
assign  write_enable00 = write_enable & (PADDR[3:2] == 2'b00);
assign  write_enable01 = write_enable & (PADDR[3:2] == 2'b01);
assign  write_enable10 = write_enable & (PADDR[3:2] == 2'b10);

// Signals for Control registers
reg timer_rst;
reg timer_en;
reg timer_show_en;

// Control registers
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
        timer_rst     <= 1'b0;   
    else if(write_enable00)
        timer_rst     <= PWDATA[0];
    else 
        timer_rst     <= timer_rst;
end

always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
        timer_en      <= 1'b0;   
    else if(write_enable01)
        timer_en      <= PWDATA[0];
    else if(timer_rst)
        timer_en      <= 1'b0;
    else
        timer_en      <= timer_en;
end

always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
        timer_show_en   <=  1'b0;
    else if(write_enable10)
        timer_show_en   <=  PWDATA[0];
    else 
        timer_show_en   <=  1'b0;
end

// Signals for Value registers
reg     [3:0]   value_bit1;
reg     [3:0]   value_bit2;
reg     [3:0]   value_bit3;
reg     [3:0]   value_bit4;
reg     [3:0]   value_bit5;
reg     [3:0]   value_bit6;
wire    bit1_done;
wire    bit2_done;
wire    bit3_done;
wire    bit4_done;
wire    bit5_done;
wire    bit6_done;   

assign  bit1_done   =   value_bit1 == 4'h9;
assign  bit2_done   =   (value_bit2 == 4'h9)&bit1_done;
assign  bit3_done   =   (value_bit3 == 4'h9)&bit2_done;
assign  bit4_done   =   (value_bit4 == 4'h9)&bit3_done;
assign  bit5_done   =   (value_bit5 == 4'h9)&bit4_done;
assign  bit6_done   =   (value_bit6 == 4'h9)&bit5_done;

// Value registers
always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit1  <=  {4{1'b0}};
    else if(timer_rst)  
        value_bit1  <=  {4{1'b0}};
    else if(bit1_done)  
        value_bit1  <=  {4{1'b0}};
    else if(timer_en)
        value_bit1  <=  value_bit1 + 1'b1;
    else
        value_bit1  <=  value_bit1;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit2  <=  {4{1'b0}};
    else if(timer_rst)  
        value_bit2  <=  {4{1'b0}};
    else if(bit2_done)  
        value_bit2  <=  {4{1'b0}};
    else if(timer_en & bit1_done)
        value_bit2  <=  value_bit2 + 1'b1;
    else
        value_bit2  <=  value_bit2;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit3  <=  {4{1'b0}};
    else if(timer_rst)
        value_bit3  <=  {4{1'b0}};
    else if(bit3_done)
        value_bit3  <=  {4{1'b0}};
    else if(timer_en & bit2_done)
        value_bit3  <=  value_bit3 + 1'b1;
    else
        value_bit3  <=  value_bit3;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit4  <=  {4{1'b0}};
    else if(timer_rst)
        value_bit4  <=  {4{1'b0}};
    else if(bit4_done)
        value_bit4  <=  {4{1'b0}};
    else if(timer_en & bit3_done)
        value_bit4  <=  value_bit4 + 1'b1;
    else
        value_bit4  <=  value_bit4;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit5  <=  {4{1'b0}};
    else if(timer_rst)
        value_bit5  <=  {4{1'b0}};
    else if(bit5_done)
        value_bit5  <=  {4{1'b0}};
    else if(timer_en & bit4_done)
        value_bit5  <=  value_bit5 + 1'b1;
    else
        value_bit5  <=  value_bit5;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit6  <=  {4{1'b0}};
    else if(timer_rst)
        value_bit6  <=  {4{1'b0}};
    else if(bit6_done)
        value_bit6  <=  {4{1'b0}};
    else if(timer_en & bit5_done)
        value_bit6  <=  value_bit6 + 1'b1;
    else
        value_bit6  <=  value_bit6;
end

// Signals for Show time registers
reg     [3:0]   value_bit1_r;
reg     [3:0]   value_bit2_r;
reg     [3:0]   value_bit3_r;
reg     [3:0]   value_bit4_r;
reg     [3:0]   value_bit5_r;
reg     [3:0]   value_bit6_r;
reg     [2:0]   value_bit;
wire    [3:0]   value_show;

// Show time registers
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)    
    begin
        value_bit1_r    <=  {4{1'b0}};
        value_bit2_r    <=  {4{1'b0}};
        value_bit3_r    <=  {4{1'b0}};
        value_bit4_r    <=  {4{1'b0}};
        value_bit5_r    <=  {4{1'b0}};
        value_bit6_r    <=  {4{1'b0}};
    end
    else if(timer_show_en)
    begin
        value_bit1_r    <=  value_bit1;
        value_bit2_r    <=  value_bit2;
        value_bit3_r    <=  value_bit3;
        value_bit4_r    <=  value_bit4;
        value_bit5_r    <=  value_bit5;
        value_bit6_r    <=  value_bit6;
    end 
    else    
    begin   
        value_bit1_r    <=  value_bit1_r;
        value_bit2_r    <=  value_bit2_r;
        value_bit3_r    <=  value_bit3_r;
        value_bit4_r    <=  value_bit4_r;
        value_bit5_r    <=  value_bit5_r;
        value_bit6_r    <=  value_bit6_r;
    end
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_bit   <=  0;
    else if(value_bit >= 5)
        value_bit   <=  0;
    else
        value_bit   <=  value_bit + 1;
end

assign value_show   =   value_bit   ==  3'h0    ?   value_bit1_r    :   (
                        value_bit   ==  3'h1    ?   value_bit2_r    :   (
                        value_bit   ==  3'h2    ?   value_bit3_r    :   (
                        value_bit   ==  3'h3    ?   value_bit4_r    :   (
                        value_bit   ==  3'h4    ?   value_bit5_r    :   (
                        value_bit   ==  3'h5    ?   value_bit6_r    :   {4{1'b0}}))))); 

assign dig          =   value_bit   ==  3'h0    ?   6'b111110       :   (
                        value_bit   ==  3'h1    ?   6'b111101       :   (
                        value_bit   ==  3'h2    ?   6'b111011       :   (
                        value_bit   ==  3'h3    ?   6'b110111       :   (
                        value_bit   ==  3'h4    ?   6'b101111       :   (
                        value_bit   ==  3'h5    ?   6'b011111       :   6'b111111)))));   
  
assign seg          =   value_show  ==  4'h0    ?   8'b00111111     :   (
                        value_show  ==  4'h1    ?   8'b00000110     :   (
                        value_show  ==  4'h2    ?   8'b01011011     :   (
                        value_show  ==  4'h3    ?   8'b01001111     :   (
                        value_show  ==  4'h4    ?   8'b01100110     :   (
                        value_show  ==  4'h5    ?   8'b01101101     :   (
                        value_show  ==  4'h6    ?   8'b01111101     :   (
                        value_show  ==  4'h7    ?   8'b00000111     :   (
                        value_show  ==  4'h8    ?   8'b01111111     :   (
                        value_show  ==  4'h9    ?   8'b01101111     :   8'b00000000)))))))));

// Output read data to APB
assign PRDATA = (PADDR[3:2] == 2'b10)   ?   {31'b0,timer_show_en}   :   (
                (PADDR[3:2] == 2'B01)   ?   {31'b0,timer_en}        :   (
                (PADDR[3:2] == 2'B00)   ?   {31'b0,timer_rst}       :   {{16{1'b0}},value_bit4_r,value_bit3_r,value_bit2_r,value_bit1_r} ));
assign PREADY  = 1'b1; // Always ready
assign PSLVERR = 1'b0; // Always okay

endmodule