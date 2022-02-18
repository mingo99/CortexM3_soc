`timescale 1ns / 1ps
module DDR(
    input                clk,
    //AHB-Lite�ź�
    input                HCLK,
    input                HRESETn,
    input                HSEL,
    input[31:0]          HADDR,
    input[3:0]           HPROT,
    input[1:0]           HTRANS,
    input[2:0]           HSIZE,
    input                HWRITE,
    input[2:0]           HBURST,
    input[31:0]          HWDATA,
    output               HREADYOUT,
    input                HREADY,
    output[31:0]         HRDATA,
    output               HRESP,

    //DDR3�˿�
    output[14:0]         ddr3_addr,
    output[2:0]          ddr3_ba,
    output               ddr3_cas_n,
    output               ddr3_ck_n,
    output               ddr3_ck_p,
    output               ddr3_cke,
    output               ddr3_ras_n,
    output               ddr3_reset_n,
    output               ddr3_we_n,
    inout[31:0]          ddr3_dq,  
    inout[3:0]           ddr3_dqs_n,                    
    inout[3:0]           ddr3_dqs_p,
    output               init_calib_complete,
    output               ddr3_cs_n,
    output[3:0]          ddr3_dm,
    output               ddr3_odt
);

    wire[3:0]            m_s_axi_awid_fifo;
    wire[7:0]            m_s_axi_awlen_fifo;
    wire[2:0]            m_s_axi_awsize_fifo;
    wire[1:0]            m_s_axi_awburst_fifo;
    wire[3:0]            m_s_axi_awcache_fifo;
    wire[31:0]           m_s_axi_awaddr_fifo;
    wire[2:0]            m_s_axi_awprot_fifo;
    wire                 m_s_axi_awvalid_fifo;
    wire                 m_s_axi_awready_fifo;
    wire                 m_s_axi_awlock_fifo;
    wire[31:0]           m_s_axi_wdata_fifo;
    wire[3:0]            m_s_axi_wstrb_fifo;
    wire                 m_s_axi_wlast_fifo;
    wire                 m_s_axi_wvalid_fifo;
    wire                 m_s_axi_wready_fifo;
    wire[3:0]            m_s_axi_bid_fifo;
    wire[1:0]            m_s_axi_bresp_fifo;
    wire                 m_s_axi_bvalid_fifo;
    wire                 m_s_axi_bready_fifo;
    wire[3:0]            m_s_axi_arid_fifo;
    wire[7:0]            m_s_axi_arlen_fifo;
    wire[2:0]            m_s_axi_arsize_fifo;
    wire[1:0]            m_s_axi_arburst_fifo;
    wire[2:0]            m_s_axi_arprot_fifo;
    wire[3:0]            m_s_axi_arcache_fifo;
    wire                 m_s_axi_arvalid_fifo;
    wire[31:0]           m_s_axi_araddr_fifo;
    wire                 m_s_axi_arlock_fifo;
    wire                 m_s_axi_arready_fifo;
    wire[3:0]            m_s_axi_rid_fifo;
    wire[31:0]           m_s_axi_rdata_fifo;
    wire[1:0]            m_s_axi_rresp_fifo;
    wire                 m_s_axi_rvalid_fifo;
    wire                 m_s_axi_rlast_fifo;
    wire                 m_s_axi_rready_fifo;

    wire[3:0]            m_s_axi_awid;
    wire[31:0]           m_s_axi_awaddr;
    wire[7:0]            m_s_axi_awlen;
    wire[2:0]            m_s_axi_awsize;
    wire[1:0]            m_s_axi_awburst;
    wire                 m_s_axi_awlock;
    wire[3:0]            m_s_axi_awcache;
    wire[2:0]            m_s_axi_awprot;
    wire[3:0]            m_s_axi_awqos;
    wire[3:0]            m_s_axi_awregion;
    wire                 m_s_axi_awvalid;
    wire                 m_s_axi_awready;
    wire[31:0]           m_s_axi_wdata;
    wire[3:0]            m_s_axi_wstrb;
    wire                 m_s_axi_wlast;
    wire                 m_s_axi_wvalid;
    wire                 m_s_axi_wready;
    wire[3:0]            m_s_axi_bid;
    wire[1:0]            m_s_axi_bresp;
    wire                 m_s_axi_bvalid;
    wire                 m_s_axi_bready;
    wire[3:0]            m_s_axi_arid;
    wire[31:0]           m_s_axi_araddr;
    wire[7:0]            m_s_axi_arlen;
    wire[2:0]            m_s_axi_arsize;
    wire[1:0]            m_s_axi_arburst;
    wire                 m_s_axi_arlock;
    wire[3:0]            m_s_axi_arcache;
    wire[2:0]            m_s_axi_arprot;
    wire[3:0]            m_s_axi_arqos;
    wire[3:0]            m_s_axi_arregion;
    wire                 m_s_axi_arvalid;
    wire                 m_s_axi_arready;
    wire[3:0]            m_s_axi_rid;
    wire[31:0]           m_s_axi_rdata;
    wire[1:0]            m_s_axi_rresp;
    wire                 m_s_axi_rlast;
    wire                 m_s_axi_rvalid;
    wire                 m_s_axi_rready;
    wire                 ui_clk;

    wire                 sys_clk;
    wire                 clk_ref;
    wire                 locked;
    wire                 rstn;

    assign rstn = locked && HRESETn;

    AHB_to_AXI u_AHB_to_AXI(
        .s_ahb_hclk(HCLK),
        .s_ahb_hresetn(HRESETn),
        .s_ahb_hsel(HSEL),
        .s_ahb_haddr(HADDR),
        .s_ahb_hprot(HPROT),
        .s_ahb_htrans(HTRANS),
        .s_ahb_hsize(HSIZE),
        .s_ahb_hwrite(HWRITE),
        .s_ahb_hburst(HBURST),
        .s_ahb_hwdata(HWDATA),
        .s_ahb_hready_out(HREADYOUT),
        .s_ahb_hready_in(HREADY),
        .s_ahb_hrdata(HRDATA),
        .s_ahb_hresp(HRESP),
        .m_axi_awid(m_s_axi_awid_fifo),
        .m_axi_awlen(m_s_axi_awlen_fifo),
        .m_axi_awsize(m_s_axi_awsize_fifo),
        .m_axi_awburst(m_s_axi_awburst_fifo),
        .m_axi_awcache(m_s_axi_awcache_fifo),
        .m_axi_awaddr(m_s_axi_awaddr_fifo),
        .m_axi_awprot(m_s_axi_awprot_fifo),
        .m_axi_awvalid(m_s_axi_awvalid_fifo),
        .m_axi_awready(m_s_axi_awready_fifo),
        .m_axi_awlock(m_s_axi_awlock_fifo),
        .m_axi_wdata(m_s_axi_wdata_fifo),
        .m_axi_wstrb(m_s_axi_wstrb_fifo),
        .m_axi_wlast(m_s_axi_wlast_fifo),
        .m_axi_wvalid(m_s_axi_wvalid_fifo),
        .m_axi_wready(m_s_axi_wready_fifo),
        .m_axi_bid(m_s_axi_bid_fifo),
        .m_axi_bresp(m_s_axi_bresp_fifo),
        .m_axi_bvalid(m_s_axi_bvalid_fifo),
        .m_axi_bready(m_s_axi_bready_fifo),
        .m_axi_arid(m_s_axi_arid_fifo),
        .m_axi_arlen(m_s_axi_arlen_fifo),
        .m_axi_arsize(m_s_axi_arsize_fifo),
        .m_axi_arburst(m_s_axi_arburst_fifo),
        .m_axi_arprot(m_s_axi_arprot_fifo),
        .m_axi_arcache(m_s_axi_arcache_fifo),
        .m_axi_arvalid(m_s_axi_arvalid_fifo),
        .m_axi_araddr(m_s_axi_araddr_fifo),
        .m_axi_arlock(m_s_axi_arlock_fifo),
        .m_axi_arready(m_s_axi_arready_fifo),
        .m_axi_rid(m_s_axi_rid_fifo),
        .m_axi_rdata(m_s_axi_rdata_fifo),
        .m_axi_rresp(m_s_axi_rresp_fifo),
        .m_axi_rvalid(m_s_axi_rvalid_fifo),
        .m_axi_rlast(m_s_axi_rlast_fifo),
        .m_axi_rready(m_s_axi_rready_fifo)
    );

    FIFO  u_FIFO(
        .m_aclk(ui_clk),
        .s_aclk(HCLK),
        .s_aresetn(HRESETn),
        .s_axi_awid(m_s_axi_awid_fifo),
        .s_axi_awaddr(m_s_axi_awaddr_fifo),
        .s_axi_awlen(m_s_axi_awlen_fifo),
        .s_axi_awsize(m_s_axi_awsize_fifo),
        .s_axi_awburst(m_s_axi_awburst_fifo),
        .s_axi_awlock(m_s_axi_awlock_fifo),
        .s_axi_awcache(m_s_axi_awcache_fifo),
        .s_axi_awprot(m_s_axi_awprot_fifo),
        .s_axi_awqos(4'b0000),
        .s_axi_awregion(4'b0000),
        .s_axi_awvalid(m_s_axi_awvalid_fifo),
        .s_axi_awready(m_s_axi_awready_fifo),
        .s_axi_wdata(m_s_axi_wdata_fifo),
        .s_axi_wstrb(m_s_axi_wstrb_fifo),
        .s_axi_wlast(m_s_axi_wlast_fifo),
        .s_axi_wvalid(m_s_axi_wvalid_fifo),
        .s_axi_wready(m_s_axi_wready_fifo),
        .s_axi_bid(m_s_axi_bid_fifo),
        .s_axi_bresp(m_s_axi_bresp_fifo),
        .s_axi_bvalid(m_s_axi_bvalid_fifo),
        .s_axi_bready(m_s_axi_bready_fifo),
        .m_axi_awid(m_s_axi_awid),
        .m_axi_awaddr(m_s_axi_awaddr),
        .m_axi_awlen(m_s_axi_awlen),
        .m_axi_awsize(m_s_axi_awsize),
        .m_axi_awburst(m_s_axi_awburst),
        .m_axi_awlock(m_s_axi_awlock),
        .m_axi_awcache(m_s_axi_awcache),
        .m_axi_awprot(m_s_axi_awprot),
        .m_axi_awqos(m_s_axi_awqos),
        .m_axi_awregion(m_s_axi_awregion),
        .m_axi_awvalid(m_s_axi_awvalid),
        .m_axi_awready(m_s_axi_awready),
        .m_axi_wdata(m_s_axi_wdata),
        .m_axi_wstrb(m_s_axi_wstrb),
        .m_axi_wlast(m_s_axi_wlast),
        .m_axi_wvalid(m_s_axi_wvalid),
        .m_axi_wready(m_s_axi_wready),
        .m_axi_bid(m_s_axi_bid),
        .m_axi_bresp(m_s_axi_bresp),
        .m_axi_bvalid(m_s_axi_bvalid),
        .m_axi_bready(m_s_axi_bready),
        .s_axi_arid(m_s_axi_arid_fifo),
        .s_axi_araddr(m_s_axi_araddr_fifo),
        .s_axi_arlen(m_s_axi_arlen_fifo),
        .s_axi_arsize(m_s_axi_arsize_fifo),
        .s_axi_arburst(m_s_axi_arburst_fifo),
        .s_axi_arlock(m_s_axi_arlock_fifo),
        .s_axi_arcache(m_s_axi_arcache_fifo),
        .s_axi_arprot(m_s_axi_arprot_fifo),
        .s_axi_arqos(4'b0000),
        .s_axi_arregion(4'b0000),
        .s_axi_arvalid(m_s_axi_arvalid_fifo),
        .s_axi_arready(m_s_axi_arready_fifo),
        .s_axi_rid(m_s_axi_rid_fifo),
        .s_axi_rdata(m_s_axi_rdata_fifo),
        .s_axi_rresp(m_s_axi_rresp_fifo),
        .s_axi_rlast(m_s_axi_rlast_fifo),
        .s_axi_rvalid(m_s_axi_rvalid_fifo),
        .s_axi_rready(m_s_axi_rready_fifo),
        .m_axi_arid(m_s_axi_arid),
        .m_axi_araddr(m_s_axi_araddr),
        .m_axi_arlen(m_s_axi_arlen),
        .m_axi_arsize(m_s_axi_arsize),
        .m_axi_arburst(m_s_axi_arburst),
        .m_axi_arlock(m_s_axi_arlock),
        .m_axi_arcache(m_s_axi_arcache),
        .m_axi_arprot(m_s_axi_arprot),
        .m_axi_arqos(m_s_axi_arqos),
        .m_axi_arregion(m_s_axi_arregion),
        .m_axi_arvalid(m_s_axi_arvalid),
        .m_axi_arready(m_s_axi_arready),
        .m_axi_rid(m_s_axi_rid),
        .m_axi_rdata(m_s_axi_rdata),
        .m_axi_rresp(m_s_axi_rresp),
        .m_axi_rlast(m_s_axi_rlast),
        .m_axi_rvalid(m_s_axi_rvalid),
        .m_axi_rready(m_s_axi_rready)
    );

    MIG u_MIG(
        //DDR3�˿�
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .init_calib_complete(init_calib_complete),

        .ddr3_cs_n(ddr3_cs_n),
        .ddr3_dm(ddr3_dm),
        .ddr3_odt(ddr3_odt),

        //Ӧ�ýӿڶ˿�
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(),
        .mmcm_locked(),
        .aresetn(HRESETn),
        .app_sr_req(1'b0),
        .app_ref_req(1'b0),
        .app_zq_req(1'b0),
        .app_sr_active(),
        .app_ref_ack(),
        .app_zq_ack(),

        //�ӽӿ�д��ַ�˿�
        .s_axi_awid(m_s_axi_awid),
        .s_axi_awaddr(m_s_axi_awaddr[27:0]),
        .s_axi_awlen(m_s_axi_awlen),
        .s_axi_awsize(m_s_axi_awsize),
        .s_axi_awburst(m_s_axi_awburst),
        .s_axi_awlock(m_s_axi_awlock),
        .s_axi_awcache(m_s_axi_awcache),
        .s_axi_awprot(m_s_axi_awprot),
        .s_axi_awqos(m_s_axi_awqos),
        .s_axi_awvalid(m_s_axi_awvalid),
        .s_axi_awready(m_s_axi_awready),

        //�ӽӿ�д���ݶ˿�
        .s_axi_wdata(m_s_axi_wdata),
        .s_axi_wstrb(m_s_axi_wstrb),
        .s_axi_wlast(m_s_axi_wlast),
        .s_axi_wvalid(m_s_axi_wvalid),
        .s_axi_wready(m_s_axi_wready),

        //�ӽӿ�д��Ӧ�˿�
        .s_axi_bid(m_s_axi_bid),
        .s_axi_bresp(m_s_axi_bresp),
        .s_axi_bvalid(m_s_axi_bvalid),        
        .s_axi_bready(m_s_axi_bready),

        //�ӽӿڶ���ַ�˿�
        .s_axi_arid(m_s_axi_arid),
        .s_axi_araddr(m_s_axi_araddr),
        .s_axi_arlen(m_s_axi_arlen),
        .s_axi_arsize(m_s_axi_arsize),
        .s_axi_arburst(m_s_axi_arburst),
        .s_axi_arlock(m_s_axi_arlock),
        .s_axi_arcache(m_s_axi_arcache),
        .s_axi_arprot(m_s_axi_arprot),
        .s_axi_arqos(m_s_axi_arqos),
        .s_axi_arvalid(m_s_axi_arvalid),                
        .s_axi_arready(m_s_axi_arready),

        //�ӽӿڶ����ݶ˿�
        .s_axi_rid(m_s_axi_rid),
        .s_axi_rdata(m_s_axi_rdata),
        .s_axi_rresp(m_s_axi_rresp),
        .s_axi_rlast(m_s_axi_rlast),
        .s_axi_rvalid(m_s_axi_rvalid),
        .s_axi_rready(m_s_axi_rready),

        //ϵͳʱ�Ӷ˿�
        .sys_clk_i(sys_clk),

        //�ο�ʱ�Ӷ˿�
        .clk_ref_i(clk_ref),
        .device_temp_i(12'h000),
        .sys_rst(rstn)
    );

    MMCM u_MMCM(
        .resetn(HRESETn),
        .locked(locked),
        .clk_167M(sys_clk),
        .clk_200M(clk_ref),
        .clk_in(clk)
    );

endmodule