`default_nettype none
module ethtop_chip (
    input wire wb_clk_i,
    input wire wb_rsti,
    input wire [31:0] wb_dat_i,
    output wire [31:0] wb_dat_o,
    input wire [7:0] wb_adr_i,
    input wire [3:0] wb_sel_i,
    input wire wb_we_i,
    input wire wb_cyc_i,
    input wire wb_stb_i,
    output wire wb_ack_o,
    output wire wb_err_o,
    input wire mrx_clk_pad,
    input wire mtx_clk_pad,
    input wire [3:0] mrxd_pad,
    input wire mrx_dv_pad,
    input wire mrx_err_pad,
    output wire [3:0] mtxd_pad,
    output wire mtx_en_pad,
    output wire mtx_err_pad,
    output wire mdc_pad,
    input wire md_pad_i,
    output wire md_pad_o,
    output wire md_padoe_o,
    input wire mcoll_pad,
    input wire mcrs_pad,
    inout wire vdda1,
    inout wire vdda2,
    inout wire vssa1,
    inout wire vssa2,
    inout wire vccd1,
    inout wire vccd2,
    inout wire vssd1,
    inout wire vssd2
);

wire wb_clk_i;
wire wb_rst_i;
wire [31:0] wb_dat_i;
wire [31:0] wb_dat_o;
wire [7:0] wb_adr_i;
wire [3:0] wb_sel_i;
wire wb_we_i;
wire wb_cyc_i;
wire wb_stb_i;
wire wb_ack_o;
wire wb_err_o;
wire mrx_clk_pad_i;
wire mtx_clk_pad_i;
wire [3:0] mrxd_pad_i;
wire mrx_dv_pad_i;
wire mrx_err_pad_i;
wire [3:0] mtxd_pad_o;
wire mtx_en_pad_o;
wire mtx_err_pad_o;
wire mdc_pad_o;
wire md_pad_i;
wire md_pad_o;
wire md_padoe_o;
wire mcoll_pad_i;
wire mcrs_pad_i;

ethtop u_core (
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wb_dat_i(wb_dat_i),
    .wb_dat_o(wb_dat_o),
    .wb_adr_i(wb_adr_i),
    .wb_sel_i(wb_sel_i),
    .wb_we_i(wb_we_i),
    .wb_cyc_i(wb_cyc_i),
    .wb_stb_i(wb_stb_i),
    .wb_ack_o(wb_ack_o),
    .wb_err_o(wb_err_o),
    .mrx_clk_pad_i(mrx_clk_pad_i),
    .mtx_clk_pad_i(mtx_clk_pad_i),
    .mrxd_pad_i(mrxd_pad_i),
    .mrx_dv_pad_i(mrx_dv_pad_i),
    .mrx_err_pad_i(mrx_err_pad_i),
    .mtxd_pad_o(mtxd_pad_o),
    .mtx_en_pad_o(mtx_en_pad_o),
    .mtx_err_pad_o(mtx_err_pad_o),
    .mdc_pad_o(mdc_pad_o),
    .md_pad_i(md_pad_i),
    .md_pad_o(md_pad_o),
    .md_padoe_o(md_padoe_o),
    .mcoll_pad_i(mcoll_pad_i),
    .mcrs_pad_i(mcrs_pad_i)
);

sky130_fd_io__top_gpiov2 pad_wb_clk_i (
    .PAD(wb_clk_i), .IN(), .IN_H(wb_clk_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_wb_rsti (
    .PAD(wb_rsti), .IN(), .IN_H(wb_rst_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
genvar g_wb_dat_i;
generate for (g_wb_dat_i = 0; g_wb_dat_i < 32; g_wb_dat_i = g_wb_dat_i + 1) begin : gen_wb_dat_i
sky130_fd_io__top_gpiov2 pad_wb_dat_i_inst (
    .PAD(wb_dat_i[g_wb_dat_i]), .IN(), .IN_H(wb_dat_i[g_wb_dat_i]), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

genvar g_wb_dat_o;
generate for (g_wb_dat_o = 0; g_wb_dat_o < 32; g_wb_dat_o = g_wb_dat_o + 1) begin : gen_wb_dat_o
sky130_fd_io__top_gpiov2 pad_wb_dat_o_inst (
    .PAD(wb_dat_o[g_wb_dat_o]), .IN(), .IN_H(), .OUT(wb_dat_o[g_wb_dat_o]),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

genvar g_wb_adr_i;
generate for (g_wb_adr_i = 0; g_wb_adr_i < 8; g_wb_adr_i = g_wb_adr_i + 1) begin : gen_wb_adr_i
sky130_fd_io__top_gpiov2 pad_wb_adr_i_inst (
    .PAD(wb_adr_i[g_wb_adr_i]), .IN(), .IN_H(wb_adr_i[g_wb_adr_i]), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

genvar g_wb_sel_i;
generate for (g_wb_sel_i = 0; g_wb_sel_i < 4; g_wb_sel_i = g_wb_sel_i + 1) begin : gen_wb_sel_i
sky130_fd_io__top_gpiov2 pad_wb_sel_i_inst (
    .PAD(wb_sel_i[g_wb_sel_i]), .IN(), .IN_H(wb_sel_i[g_wb_sel_i]), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

sky130_fd_io__top_gpiov2 pad_wb_we_i (
    .PAD(wb_we_i), .IN(), .IN_H(wb_we_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_wb_cyc_i (
    .PAD(wb_cyc_i), .IN(), .IN_H(wb_cyc_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_wb_stb_i (
    .PAD(wb_stb_i), .IN(), .IN_H(wb_stb_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_wb_ack_o (
    .PAD(wb_ack_o), .IN(), .IN_H(), .OUT(wb_ack_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_wb_err_o (
    .PAD(wb_err_o), .IN(), .IN_H(), .OUT(wb_err_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mrx_clk_pad (
    .PAD(mrx_clk_pad), .IN(), .IN_H(mrx_clk_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mtx_clk_pad (
    .PAD(mtx_clk_pad), .IN(), .IN_H(mtx_clk_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
genvar g_mrxd_pad;
generate for (g_mrxd_pad = 0; g_mrxd_pad < 4; g_mrxd_pad = g_mrxd_pad + 1) begin : gen_mrxd_pad
sky130_fd_io__top_gpiov2 pad_mrxd_pad_inst (
    .PAD(mrxd_pad[g_mrxd_pad]), .IN(), .IN_H(mrxd_pad_i[g_mrxd_pad]), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

sky130_fd_io__top_gpiov2 pad_mrx_dv_pad (
    .PAD(mrx_dv_pad), .IN(), .IN_H(mrx_dv_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mrx_err_pad (
    .PAD(mrx_err_pad), .IN(), .IN_H(mrx_err_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
genvar g_mtxd_pad;
generate for (g_mtxd_pad = 0; g_mtxd_pad < 4; g_mtxd_pad = g_mtxd_pad + 1) begin : gen_mtxd_pad
sky130_fd_io__top_gpiov2 pad_mtxd_pad_inst (
    .PAD(mtxd_pad[g_mtxd_pad]), .IN(), .IN_H(), .OUT(mtxd_pad_o[g_mtxd_pad]),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
end endgenerate

sky130_fd_io__top_gpiov2 pad_mtx_en_pad (
    .PAD(mtx_en_pad), .IN(), .IN_H(), .OUT(mtx_en_pad_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mtx_err_pad (
    .PAD(mtx_err_pad), .IN(), .IN_H(), .OUT(mtx_err_pad_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mdc_pad (
    .PAD(mdc_pad), .IN(), .IN_H(), .OUT(mdc_pad_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_md_pad_i (
    .PAD(md_pad_i), .IN(), .IN_H(md_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_md_pad_o (
    .PAD(md_pad_o), .IN(), .IN_H(), .OUT(md_pad_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_md_padoe_o (
    .PAD(md_padoe_o), .IN(), .IN_H(), .OUT(md_padoe_o),
    .OE_N(1'b0), .INP_DIS(1'b1), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b110),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mcoll_pad (
    .PAD(mcoll_pad), .IN(), .IN_H(mcoll_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_gpiov2 pad_mcrs_pad (
    .PAD(mcrs_pad), .IN(), .IN_H(mcrs_pad_i), .OUT(),
    .OE_N(1'b1), .INP_DIS(1'b0), .ENABLE_H(1'b1), .HLD_H_N(1'b1), .DM(3'b000),
    .IB_MODE_SEL(1'b0), .VTRIP_SEL(1'b0), .SLOW(1'b0), .HLD_OVR(1'b0),
    .ANALOG_EN(1'b0), .ANALOG_SEL(1'b0), .ANALOG_POL(1'b0),
    .AMUXBUS_A(), .AMUXBUS_B(), .TIE_HI_ESD(), .TIE_LO_ESD(),
    .VDDIO(vccd1), .VDDIO_Q(vccd1), .VSSIO(vssd1), .VSSIO_Q(vssd1),
    .VCCD(vccd1), .VCCHIB(vccd1), .VSSD(vssd1), .VSSA(vssa1), .VDDA(vdda1), .VSWITCH(vccd1)
);
sky130_fd_io__top_power_hvc_wpad pad_vccd1 (.PAD(vccd1), .VDDIO(vccd1), .VDDIO_Q(vccd1), .VDDA(vdda1), .VCCD(vccd1), .VCCHIB(vccd1), .VSWITCH(vccd1));
sky130_fd_io__top_power_hvc_wpad pad_vccd2 (.PAD(vccd2), .VDDIO(vccd2), .VDDIO_Q(vccd2), .VDDA(vdda2), .VCCD(vccd2), .VCCHIB(vccd2), .VSWITCH(vccd2));
sky130_fd_io__top_ground_hvc_wpad pad_vssd1 (.PAD(vssd1), .VSSIO(vssd1), .VSSIO_Q(vssd1), .VSSA(vssa1), .VSSD(vssd1));
sky130_fd_io__top_ground_hvc_wpad pad_vssd2 (.PAD(vssd2), .VSSIO(vssd2), .VSSIO_Q(vssd2), .VSSA(vssa2), .VSSD(vssd2));
endmodule
`default_nettype wire