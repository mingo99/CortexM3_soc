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
reg         clk_timer;

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
wire  read_enable;
wire  write_enable;
wire  write_enable00;
wire  write_enable01;
wire  write_enable10;

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
reg  [3:0]   value_unit;
reg  [3:0]   value_tens;
reg  [3:0]   value_hund;
reg  [3:0]   value_thsd;
wire         unit_done;
wire         tens_done;
wire         hund_done;
wire         thsd_done;

assign  unit_done   =   value_unit == 4'h9;
assign  tens_done   =   (value_tens == 4'h9)&unit_done;
assign  hund_done   =   (value_hund == 4'h9)&tens_done;
assign  thsd_done   =   (value_thsd == 4'h9)&hund_done;

// Value registers
always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_unit  <=  {4{1'b0}};
    else if(timer_rst)  
        value_unit  <=  {4{1'b0}};
    else if(unit_done)  
        value_unit  <=  {4{1'b0}};
    else if(timer_en)
        value_unit  <=  value_unit + 1'b1;
    else
        value_unit  <=  value_unit;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_tens  <=  {4{1'b0}};
    else if(timer_rst)  
        value_tens  <=  {4{1'b0}};
    else if(tens_done)  
        value_tens  <=  {4{1'b0}};
    else if(timer_en & unit_done)
        value_tens  <=  value_tens + 1'b1;
    else
        value_tens  <=  value_tens;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_hund  <=  {4{1'b0}};
    else if(timer_rst)
        value_hund  <=  {4{1'b0}};
    else if(hund_done)
        value_hund  <=  {4{1'b0}};
    else if(timer_en & tens_done)
        value_hund  <=  value_hund + 1'b1;
    else
        value_hund  <=  value_hund;
end

always@(posedge clk_timer or negedge PRESETn)
begin
    if(~PRESETn)
        value_thsd  <=  {4{1'b0}};
    else if(timer_rst)
        value_thsd  <=  {4{1'b0}};
    else if(thsd_done)
        value_thsd  <=  {4{1'b0}};
    else if(timer_en & hund_done)
        value_thsd  <=  value_thsd + 1'b1;
    else
        value_thsd  <=  value_thsd;
end

// Signals for Show time registers
reg  [3:0]   value_unit_r;
reg  [3:0]   value_tens_r;
reg  [3:0]   value_hund_r;
reg  [3:0]   value_thsd_r;
reg  [2:0]   value_bit;
wire [3:0]   value_show;

// Show time registers
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)    
    begin
        value_unit_r    <=  {4{1'b0}};
        value_tens_r    <=  {4{1'b0}};
        value_hund_r    <=  {4{1'b0}};
        value_thsd_r    <=  {4{1'b0}};
    end
    else if(timer_show_en)
    begin
        value_unit_r    <=  value_unit;
        value_tens_r    <=  value_tens;
        value_hund_r    <=  value_hund;
        value_thsd_r    <=  value_thsd;
    end 
    else    
    begin   
        value_unit_r    <=  value_unit_r;
        value_tens_r    <=  value_tens_r;
        value_hund_r    <=  value_hund_r;
        value_thsd_r    <=  value_thsd_r;
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

assign value_show   =   value_bit   ==  3'h0    ?   value_unit_r  :   (
                        value_bit   ==  3'h1    ?   value_tens_r  :   (
                        value_bit   ==  3'h2    ?   value_hund_r  :   (
                        value_bit   ==  3'h3    ?   value_thsd_r  :   {4{1'b0}} ))); 

assign dig          =   value_bit   ==  3'h0    ?   6'b111110     :   (
                        value_bit   ==  3'h1    ?   6'b111101     :   (
                        value_bit   ==  3'h2    ?   6'b111011     :   (
                        value_bit   ==  3'h3    ?   6'b110111     :   (
                        value_bit   ==  3'h4    ?   6'b101111     :   (
                        value_bit   ==  3'h5    ?   6'b011111     :   6'b111111)))));   
  
assign seg          =   value_show  ==  4'h0    ?   8'b00111111   :   (
                        value_show  ==  4'h1    ?   8'b00000110   :   (
                        value_show  ==  4'h2    ?   8'b01011011   :   (
                        value_show  ==  4'h3    ?   8'b01001111   :   (
                        value_show  ==  4'h4    ?   8'b01100110   :   (
                        value_show  ==  4'h5    ?   8'b01101101   :   (
                        value_show  ==  4'h6    ?   8'b01111101   :   (
                        value_show  ==  4'h7    ?   8'b00000111   :   (
                        value_show  ==  4'h8    ?   8'b01111111   :   (
                        value_show  ==  4'h9    ?   8'b01101111   :   8'b00000000)))))))));

// Output read data to APB
assign PRDATA = (PADDR[3:2] == 2'b10)   ?   {31'b0,timer_show_en}   :   (
                (PADDR[3:2] == 2'B01)   ?   {31'b0,timer_en}        :   (
                (PADDR[3:2] == 2'B00)   ?   {31'b0,timer_rst}       :   {{16{1'b0}},value_thsd_r,value_hund_r,value_tens_r,value_unit_r} ));
assign PREADY  = 1'b1; // Always ready
assign PSLVERR = 1'b0; // Always okay

endmodule