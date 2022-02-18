//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2001-2013-2021 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2013-01-23 11:45:45 +0000 (Wed, 23 Jan 2013) $
//
//      Revision            : $Revision: 234562 $
//
//      Release Information : Cortex-M System Design Kit-r1p0-01rel0
//
//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
//  Abstract             : The MatrixDecode is used to determine which output
//                         stage is required for a particular access. Addresses
//                         that do not map to an Output port are diverted to
//                         the local default slave.
//
//  Notes               : The bus matrix has sparse connectivity.
//
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

module AhbMtx_DecS2 (

    // Common AHB signals
    HCLK,
    HRESETn,

    // Signals from the Input stage
    HREADYS,
    sel_dec,
    decode_addr_dec,
    trans_dec,

    // Bus-switch output 1
    active_dec1,
    readyout_dec1,
    resp_dec1,
    rdata_dec1,
    ruser_dec1,

    // Bus-switch output 2
    active_dec2,
    readyout_dec2,
    resp_dec2,
    rdata_dec2,
    ruser_dec2,

    // Bus-switch output 3
    active_dec3,
    readyout_dec3,
    resp_dec3,
    rdata_dec3,
    ruser_dec3,

    // Bus-switch output 4
    active_dec4,
    readyout_dec4,
    resp_dec4,
    rdata_dec4,
    ruser_dec4,

    // Bus-switch output 5
    active_dec5,
    readyout_dec5,
    resp_dec5,
    rdata_dec5,
    ruser_dec5,

    // Bus-switch output 6
    active_dec6,
    readyout_dec6,
    resp_dec6,
    rdata_dec6,
    ruser_dec6,

    // Bus-switch output 7
    active_dec7,
    readyout_dec7,
    resp_dec7,
    rdata_dec7,
    ruser_dec7,

    // Bus-switch output 8
    active_dec8,
    readyout_dec8,
    resp_dec8,
    rdata_dec8,
    ruser_dec8,

    // Bus-switch output 9
    active_dec9,
    readyout_dec9,
    resp_dec9,
    rdata_dec9,
    ruser_dec9,

    // Output port selection signals
    sel_dec1,
    sel_dec2,
    sel_dec3,
    sel_dec4,
    sel_dec5,
    sel_dec6,
    sel_dec7,
    sel_dec8,
    sel_dec9,

    // Selected Output port data and control signals
    active_dec,
    HREADYOUTS,
    HRESPS,
    HRUSERS,
    HRDATAS

    );


// -----------------------------------------------------------------------------
// Input and Output declarations
// -----------------------------------------------------------------------------

    // Common AHB signals
    input         HCLK;           // AHB System Clock
    input         HRESETn;        // AHB System Reset

    // Signals from the Input stage
    input         HREADYS;        // Transfer done
    input         sel_dec;            // HSEL input
    input [31:10] decode_addr_dec;     // HADDR decoder input
    input   [1:0] trans_dec;          // Input port HTRANS signal

    // Bus-switch output MI1
    input         active_dec1;        // Output stage MI1 active_dec signal
    input         readyout_dec1;      // HREADYOUT input
    input   [1:0] resp_dec1;          // HRESP input
    input  [31:0] rdata_dec1;         // HRDATA input
    input  [31:0] ruser_dec1;         // HRUSER input

    // Bus-switch output MI2
    input         active_dec2;        // Output stage MI2 active_dec signal
    input         readyout_dec2;      // HREADYOUT input
    input   [1:0] resp_dec2;          // HRESP input
    input  [31:0] rdata_dec2;         // HRDATA input
    input  [31:0] ruser_dec2;         // HRUSER input

    // Bus-switch output MI3
    input         active_dec3;        // Output stage MI3 active_dec signal
    input         readyout_dec3;      // HREADYOUT input
    input   [1:0] resp_dec3;          // HRESP input
    input  [31:0] rdata_dec3;         // HRDATA input
    input  [31:0] ruser_dec3;         // HRUSER input

    // Bus-switch output MI4
    input         active_dec4;        // Output stage MI4 active_dec signal
    input         readyout_dec4;      // HREADYOUT input
    input   [1:0] resp_dec4;          // HRESP input
    input  [31:0] rdata_dec4;         // HRDATA input
    input  [31:0] ruser_dec4;         // HRUSER input

    // Bus-switch output MI5
    input         active_dec5;        // Output stage MI5 active_dec signal
    input         readyout_dec5;      // HREADYOUT input
    input   [1:0] resp_dec5;          // HRESP input
    input  [31:0] rdata_dec5;         // HRDATA input
    input  [31:0] ruser_dec5;         // HRUSER input

    // Bus-switch output MI6
    input         active_dec6;        // Output stage MI6 active_dec signal
    input         readyout_dec6;      // HREADYOUT input
    input   [1:0] resp_dec6;          // HRESP input
    input  [31:0] rdata_dec6;         // HRDATA input
    input  [31:0] ruser_dec6;         // HRUSER input

    // Bus-switch output MI7
    input         active_dec7;        // Output stage MI7 active_dec signal
    input         readyout_dec7;      // HREADYOUT input
    input   [1:0] resp_dec7;          // HRESP input
    input  [31:0] rdata_dec7;         // HRDATA input
    input  [31:0] ruser_dec7;         // HRUSER input

    // Bus-switch output MI8
    input         active_dec8;        // Output stage MI8 active_dec signal
    input         readyout_dec8;      // HREADYOUT input
    input   [1:0] resp_dec8;          // HRESP input
    input  [31:0] rdata_dec8;         // HRDATA input
    input  [31:0] ruser_dec8;         // HRUSER input

    // Bus-switch output MI9
    input         active_dec9;        // Output stage MI9 active_dec signal
    input         readyout_dec9;      // HREADYOUT input
    input   [1:0] resp_dec9;          // HRESP input
    input  [31:0] rdata_dec9;         // HRDATA input
    input  [31:0] ruser_dec9;         // HRUSER input

    // Output port selection signals
    output        sel_dec1;           // HSEL output
    output        sel_dec2;           // HSEL output
    output        sel_dec3;           // HSEL output
    output        sel_dec4;           // HSEL output
    output        sel_dec5;           // HSEL output
    output        sel_dec6;           // HSEL output
    output        sel_dec7;           // HSEL output
    output        sel_dec8;           // HSEL output
    output        sel_dec9;           // HSEL output

    // Selected Output port data and control signals
    output        active_dec;         // Combinatorial active_dec O/P
    output        HREADYOUTS;     // HREADY feedback output
    output  [1:0] HRESPS;         // Transfer response
    output [31:0] HRUSERS;        // User read Data
    output [31:0] HRDATAS;        // Read Data


// -----------------------------------------------------------------------------
// Wire declarations
// -----------------------------------------------------------------------------

    // Common AHB signals
    wire          HCLK;            // AHB System Clock
    wire          HRESETn;         // AHB System Reset

    // Signals from the Input stage
    wire          HREADYS;         // Transfer done
    wire          sel_dec;             // HSEL input
    wire  [31:10] decode_addr_dec;      // HADDR input
    wire    [1:0] trans_dec;           // Input port HTRANS signal

    // Bus-switch output MI1
    wire          active_dec1;         // active_dec signal
    wire          readyout_dec1;       // HREADYOUT input
    wire    [1:0] resp_dec1;           // HRESP input
    wire   [31:0] rdata_dec1;          // HRDATA input
    wire   [31:0] ruser_dec1;          // HRUSER input
    reg           sel_dec1;            // HSEL output

    // Bus-switch output MI2
    wire          active_dec2;         // active_dec signal
    wire          readyout_dec2;       // HREADYOUT input
    wire    [1:0] resp_dec2;           // HRESP input
    wire   [31:0] rdata_dec2;          // HRDATA input
    wire   [31:0] ruser_dec2;          // HRUSER input
    reg           sel_dec2;            // HSEL output

    // Bus-switch output MI3
    wire          active_dec3;         // active_dec signal
    wire          readyout_dec3;       // HREADYOUT input
    wire    [1:0] resp_dec3;           // HRESP input
    wire   [31:0] rdata_dec3;          // HRDATA input
    wire   [31:0] ruser_dec3;          // HRUSER input
    reg           sel_dec3;            // HSEL output

    // Bus-switch output MI4
    wire          active_dec4;         // active_dec signal
    wire          readyout_dec4;       // HREADYOUT input
    wire    [1:0] resp_dec4;           // HRESP input
    wire   [31:0] rdata_dec4;          // HRDATA input
    wire   [31:0] ruser_dec4;          // HRUSER input
    reg           sel_dec4;            // HSEL output

    // Bus-switch output MI5
    wire          active_dec5;         // active_dec signal
    wire          readyout_dec5;       // HREADYOUT input
    wire    [1:0] resp_dec5;           // HRESP input
    wire   [31:0] rdata_dec5;          // HRDATA input
    wire   [31:0] ruser_dec5;          // HRUSER input
    reg           sel_dec5;            // HSEL output

    // Bus-switch output MI6
    wire          active_dec6;         // active_dec signal
    wire          readyout_dec6;       // HREADYOUT input
    wire    [1:0] resp_dec6;           // HRESP input
    wire   [31:0] rdata_dec6;          // HRDATA input
    wire   [31:0] ruser_dec6;          // HRUSER input
    reg           sel_dec6;            // HSEL output

    // Bus-switch output MI7
    wire          active_dec7;         // active_dec signal
    wire          readyout_dec7;       // HREADYOUT input
    wire    [1:0] resp_dec7;           // HRESP input
    wire   [31:0] rdata_dec7;          // HRDATA input
    wire   [31:0] ruser_dec7;          // HRUSER input
    reg           sel_dec7;            // HSEL output

    // Bus-switch output MI8
    wire          active_dec8;         // active_dec signal
    wire          readyout_dec8;       // HREADYOUT input
    wire    [1:0] resp_dec8;           // HRESP input
    wire   [31:0] rdata_dec8;          // HRDATA input
    wire   [31:0] ruser_dec8;          // HRUSER input
    reg           sel_dec8;            // HSEL output

    // Bus-switch output MI9
    wire          active_dec9;         // active_dec signal
    wire          readyout_dec9;       // HREADYOUT input
    wire    [1:0] resp_dec9;           // HRESP input
    wire   [31:0] rdata_dec9;          // HRDATA input
    wire   [31:0] ruser_dec9;          // HRUSER input
    reg           sel_dec9;            // HSEL output


// -----------------------------------------------------------------------------
// Signal declarations
// -----------------------------------------------------------------------------

    // Selected Output port data and control signals
    reg           active_dec;          // Combinatorial active_dec O/P signal
    reg           HREADYOUTS;      // Combinatorial HREADYOUT signal
    reg     [1:0] HRESPS;          // Combinatorial HRESPS signal
    reg    [31:0] HRUSERS;
    reg    [31:0] HRDATAS;         // Read data bus

    reg     [4:0] addr_out_port;     // Address output ports
    reg     [4:0] data_out_port;     // Data output ports

    // Default slave signals
    reg           sel_dft_slv;       // HSEL signal
    wire          readyout_dft_slv;  // HREADYOUT signal
    wire    [1:0] resp_dft_slv;      // Combinatorial HRESPS signal


// -----------------------------------------------------------------------------
// Beginning of main code
// -----------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Default slave (accessed when HADDR is unmapped)
//------------------------------------------------------------------------------

  AhbMtx_default_slave u_AhbMtx_default_slave (

    // Common AHB signals
    .HCLK        (HCLK),
    .HRESETn     (HRESETn),

    // AHB Control signals
    .HSEL        (sel_dft_slv),
    .HTRANS      (trans_dec),
    .HREADY      (HREADYS),
    .HREADYOUT   (readyout_dft_slv),
    .HRESP       (resp_dft_slv)

    );


//------------------------------------------------------------------------------
// Address phase signals
//------------------------------------------------------------------------------

// The address decode is done in two stages. This is so that the address
//  decode occurs in only one process, p_addr_out_portComb, and then the select
//  signal is factored in.
//
// Note that the hexadecimal address values are reformatted to align with the
//  lower bound of decode_addr_dec[31:10], which is not a hex character boundary

  always @ (
             decode_addr_dec or data_out_port or trans_dec
           )
    begin : p_addr_out_port_comb
      // Address region 0x20000000-0x2000ffff
      if (((decode_addr_dec >= 22'h080000) & (decode_addr_dec <= 22'h08003f))
                           | ((data_out_port == 5'b00001) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00001;  // Select Output port MI1

      // Address region 0x40000000-0x4000ffff
      else if (((decode_addr_dec >= 22'h100000) & (decode_addr_dec <= 22'h10003f))
                           | ((data_out_port == 5'b00010) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00010;  // Select Output port MI2

      // Address region 0x40030000-0x5002ffff
      else if (((decode_addr_dec >= 22'h1000c0) & (decode_addr_dec <= 22'h1400bf))
                           | ((data_out_port == 5'b00011) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00011;  // Select Output port MI3

      // Address region 0x50030000-0x5003ffff
      else if (((decode_addr_dec >= 22'h1400c0) & (decode_addr_dec <= 22'h1400ff))
                           | ((data_out_port == 5'b00100) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00100;  // Select Output port MI4

      // Address region 0x60030000-0x6003ffff
      else if (((decode_addr_dec >= 22'h1800c0) & (decode_addr_dec <= 22'h1800ff))
                           | ((data_out_port == 5'b00101) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00101;  // Select Output port MI5

      // Address region 0x600A0000-0x600Affff
      else if (((decode_addr_dec >= 22'h180280) & (decode_addr_dec <= 22'h1802bf))
                           | ((data_out_port == 5'b00110) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00110;  // Select Output port MI6

      // Address region 0x60040000-0x60090fff
      else if (((decode_addr_dec >= 22'h180100) & (decode_addr_dec <= 22'h180243))
                           | ((data_out_port == 5'b00111) & (trans_dec == 2'b00)))
        addr_out_port = 5'b00111;  // Select Output port MI7

      // Address region 0x60091000-0x60091fff
      else if (((decode_addr_dec >= 22'h180244) & (decode_addr_dec <= 22'h180247))
                           | ((data_out_port == 5'b01000) & (trans_dec == 2'b00)))
        addr_out_port = 5'b01000;  // Select Output port MI8

      // Address region 0x60092000-0x60092fff
      else if (((decode_addr_dec >= 22'h180248) & (decode_addr_dec <= 22'h18024b))
                           | ((data_out_port == 5'b01001) & (trans_dec == 2'b00)))
        addr_out_port = 5'b01001;  // Select Output port MI9

      else
        addr_out_port = 5'b10000;   // Select the default slave
    end // block: p_addr_out_port_comb

  // Select signal decode
  always @ (sel_dec or addr_out_port)
    begin : p_sel_comb
      sel_dec1 = 1'b0;
      sel_dec2 = 1'b0;
      sel_dec3 = 1'b0;
      sel_dec4 = 1'b0;
      sel_dec5 = 1'b0;
      sel_dec6 = 1'b0;
      sel_dec7 = 1'b0;
      sel_dec8 = 1'b0;
      sel_dec9 = 1'b0;
      sel_dft_slv = 1'b0;

      if (sel_dec)
        case (addr_out_port)
          5'b00001 : sel_dec1 = 1'b1;
          5'b00010 : sel_dec2 = 1'b1;
          5'b00011 : sel_dec3 = 1'b1;
          5'b00100 : sel_dec4 = 1'b1;
          5'b00101 : sel_dec5 = 1'b1;
          5'b00110 : sel_dec6 = 1'b1;
          5'b00111 : sel_dec7 = 1'b1;
          5'b01000 : sel_dec8 = 1'b1;
          5'b01001 : sel_dec9 = 1'b1;
          5'b10000 : sel_dft_slv = 1'b1;    // Select the default slave
          default : begin
            sel_dec1 = 1'bx;
            sel_dec2 = 1'bx;
            sel_dec3 = 1'bx;
            sel_dec4 = 1'bx;
            sel_dec5 = 1'bx;
            sel_dec6 = 1'bx;
            sel_dec7 = 1'bx;
            sel_dec8 = 1'bx;
            sel_dec9 = 1'bx;
            sel_dft_slv = 1'bx;
          end
        endcase // case(addr_out_port)
    end // block: p_sel_comb

// The decoder selects the appropriate active_dec signal depending on which
//  output stage is required for the transfer.
  always @ (
             active_dec1 or
             active_dec2 or
             active_dec3 or
             active_dec4 or
             active_dec5 or
             active_dec6 or
             active_dec7 or
             active_dec8 or
             active_dec9 or
             addr_out_port
           )
    begin : p_active_comb
      case (addr_out_port)
        5'b00001 : active_dec = active_dec1;
        5'b00010 : active_dec = active_dec2;
        5'b00011 : active_dec = active_dec3;
        5'b00100 : active_dec = active_dec4;
        5'b00101 : active_dec = active_dec5;
        5'b00110 : active_dec = active_dec6;
        5'b00111 : active_dec = active_dec7;
        5'b01000 : active_dec = active_dec8;
        5'b01001 : active_dec = active_dec9;
        5'b10000 : active_dec = 1'b1;         // Select the default slave
        default : active_dec = 1'bx;
      endcase // case(addr_out_port)
    end // block: p_active_comb


//------------------------------------------------------------------------------
// Data phase signals
//------------------------------------------------------------------------------

// The data_out_port needs to be updated when HREADY from the input stage is high.
//  Note: HREADY must be used, not HREADYOUT, because there are occaisions
//  (namely when the holding register gets loaded) when HREADYOUT may be low
//  but HREADY is high, and in this case it is important that the data_out_port
//  gets updated.

  always @ (negedge HRESETn or posedge HCLK)
    begin : p_data_out_port_seq
      if (~HRESETn)
        data_out_port <= {5{1'b0}};
      else
        if (HREADYS)
          data_out_port <= addr_out_port;
    end // block: p_data_out_port_seq

  // HREADYOUTS output decode
  always @ (
             readyout_dft_slv or
             readyout_dec1 or
             readyout_dec2 or
             readyout_dec3 or
             readyout_dec4 or
             readyout_dec5 or
             readyout_dec6 or
             readyout_dec7 or
             readyout_dec8 or
             readyout_dec9 or
             data_out_port
           )
  begin : p_ready_comb
    case (data_out_port)
      5'b00001 : HREADYOUTS = readyout_dec1;
      5'b00010 : HREADYOUTS = readyout_dec2;
      5'b00011 : HREADYOUTS = readyout_dec3;
      5'b00100 : HREADYOUTS = readyout_dec4;
      5'b00101 : HREADYOUTS = readyout_dec5;
      5'b00110 : HREADYOUTS = readyout_dec6;
      5'b00111 : HREADYOUTS = readyout_dec7;
      5'b01000 : HREADYOUTS = readyout_dec8;
      5'b01001 : HREADYOUTS = readyout_dec9;
      5'b10000 : HREADYOUTS = readyout_dft_slv;    // Select the default slave
      default : HREADYOUTS = 1'bx;
    endcase // case(data_out_port)
  end // block: p_ready_comb

  // HRESPS output decode
  always @ (
             resp_dft_slv or
             resp_dec1 or
             resp_dec2 or
             resp_dec3 or
             resp_dec4 or
             resp_dec5 or
             resp_dec6 or
             resp_dec7 or
             resp_dec8 or
             resp_dec9 or
             data_out_port
           )
  begin : p_resp_comb
    case (data_out_port)
      5'b00001 : HRESPS = resp_dec1;
      5'b00010 : HRESPS = resp_dec2;
      5'b00011 : HRESPS = resp_dec3;
      5'b00100 : HRESPS = resp_dec4;
      5'b00101 : HRESPS = resp_dec5;
      5'b00110 : HRESPS = resp_dec6;
      5'b00111 : HRESPS = resp_dec7;
      5'b01000 : HRESPS = resp_dec8;
      5'b01001 : HRESPS = resp_dec9;
      5'b10000 : HRESPS = resp_dft_slv;     // Select the default slave
      default : HRESPS = {2{1'bx}};
    endcase // case (data_out_port)
  end // block: p_resp_comb

  // HRDATAS output decode
  always @ (
             rdata_dec1 or
             rdata_dec2 or
             rdata_dec3 or
             rdata_dec4 or
             rdata_dec5 or
             rdata_dec6 or
             rdata_dec7 or
             rdata_dec8 or
             rdata_dec9 or
             data_out_port
           )
  begin : p_rdata_comb
    case (data_out_port)
      5'b00001 : HRDATAS = rdata_dec1;
      5'b00010 : HRDATAS = rdata_dec2;
      5'b00011 : HRDATAS = rdata_dec3;
      5'b00100 : HRDATAS = rdata_dec4;
      5'b00101 : HRDATAS = rdata_dec5;
      5'b00110 : HRDATAS = rdata_dec6;
      5'b00111 : HRDATAS = rdata_dec7;
      5'b01000 : HRDATAS = rdata_dec8;
      5'b01001 : HRDATAS = rdata_dec9;
      5'b10000 : HRDATAS = {32{1'b0}};   // Select the default slave
      default : HRDATAS = {32{1'bx}};
    endcase // case (data_out_port)
  end // block: p_rdata_comb

  // HRUSERS output decode
  always @ (
             ruser_dec1 or
             ruser_dec2 or
             ruser_dec3 or
             ruser_dec4 or
             ruser_dec5 or
             ruser_dec6 or
             ruser_dec7 or
             ruser_dec8 or
             ruser_dec9 or
             data_out_port
           )
  begin : p_ruser_comb
    case (data_out_port)
      5'b00001 : HRUSERS = ruser_dec1;
      5'b00010 : HRUSERS = ruser_dec2;
      5'b00011 : HRUSERS = ruser_dec3;
      5'b00100 : HRUSERS = ruser_dec4;
      5'b00101 : HRUSERS = ruser_dec5;
      5'b00110 : HRUSERS = ruser_dec6;
      5'b00111 : HRUSERS = ruser_dec7;
      5'b01000 : HRUSERS = ruser_dec8;
      5'b01001 : HRUSERS = ruser_dec9;
      5'b10000 : HRUSERS = {32{1'b0}};   // Select the default slave
      default : HRUSERS = {32{1'bx}};
    endcase // case (data_out_port)
  end // block: p_ruser_comb


endmodule

// --================================= End ===================================--
