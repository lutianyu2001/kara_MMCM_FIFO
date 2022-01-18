`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/08/05 14:26:10
// Design Name:
// Module Name: kara_mult_34bit
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision: 3.0 - 2020/09/05
// Revision 3.0 - Commented & modified (optimized) by Lu Tianyu (Sky)
// Additional Comments:
//
//
//////////////////////////////////////////////////////////////////////////////////


module kara_mult_34bit# (
    parameter BIT_WIDTH = (34)

    )(

    input                               clk,
    input                               rst,

    input           [BIT_WIDTH-1:0]     mult_in_a, //34bit
    input           [BIT_WIDTH-1:0]     mult_in_b, //34bit

    output  reg     [BIT_WIDTH*2-1:0]   mult_out //68bit

    );

parameter       PART_WIDTH = BIT_WIDTH/2; //17bit
//Make sure NEXT_MULT_WIDTH is an even number
parameter       NEXT_MULT_WIDTH = (PART_WIDTH+1)%2 == 1 ?  PART_WIDTH+2 : PART_WIDTH+1; //18bit


wire    [PART_WIDTH-1:0]      kara_in_ah; //17bit
wire    [PART_WIDTH-1:0]      kara_in_al; //17bit
wire    [PART_WIDTH-1:0]      kara_in_bh; //17bit
wire    [PART_WIDTH-1:0]      kara_in_bl; //17bit

assign kara_in_ah = mult_in_a[BIT_WIDTH-1:PART_WIDTH]; //33~17,17bit
assign kara_in_al = mult_in_a[PART_WIDTH-1:0]; //16~0,17bit

assign kara_in_bh = mult_in_b[BIT_WIDTH-1:PART_WIDTH]; //33~17,17bit
assign kara_in_bl = mult_in_b[PART_WIDTH-1:0]; //16~0,17bit


reg     [PART_WIDTH-1:0]      kara_in_ah_1r; //17bit
reg     [PART_WIDTH-1:0]      kara_in_al_1r; //17bit
reg     [PART_WIDTH-1:0]      kara_in_bh_1r; //17bit
reg     [PART_WIDTH-1:0]      kara_in_bl_1r; //17bit

// delay to match sequence
always@ (posedge clk) begin
    if(rst) begin
        kara_in_ah_1r   <= 'd0;
        kara_in_al_1r   <= 'd0;
        kara_in_bh_1r   <= 'd0;
        kara_in_bl_1r   <= 'd0;
    end
    else begin
        kara_in_ah_1r   <= kara_in_ah;
        kara_in_al_1r   <= kara_in_al;
        kara_in_bh_1r   <= kara_in_bh;
        kara_in_bl_1r   <= kara_in_bl;
    end
end

reg     signed      [PART_WIDTH:0]      sum_ah_al; // [signed] 18bit
reg     signed      [PART_WIDTH:0]      sum_bh_bl; // [signed] 18bit

// compute al-ah and bh-bl
always@ (posedge clk) begin
    if(rst) begin
        sum_ah_al <= 'd0;
        sum_bh_bl <= 'd0;
    end
    else begin
        sum_ah_al <= kara_in_al - kara_in_ah;
        sum_bh_bl <= kara_in_bh - kara_in_bl;
    end
end


wire    [NEXT_MULT_WIDTH*2-1:0]      mult_ch_out; // <signed> 36bit
wire    [NEXT_MULT_WIDTH*2-1:0]      mult_cl_out; // <signed> 36bit
wire    [NEXT_MULT_WIDTH*2-1:0]      mult_cm_out; // <signed> 36bit

mult_signed_18bit u_kara_mult_18bit_ch (
    .CLK            (clk                    ),
    .A              ({1'b0,kara_in_ah_1r}   ), // 18bit, positive number
    .B              ({1'b0,kara_in_bh_1r}   ), // 18bit, positive number
    .P              (mult_ch_out            )  // 36bit, positive number

    );

mult_signed_18bit u_kara_mult_18bit_cl (
    .CLK            (clk                    ),
    .A              ({1'b0,kara_in_al_1r}   ), // 18bit, positive number
    .B              ({1'b0,kara_in_bl_1r}   ), // 18bit, positive number
    .P              (mult_cl_out            )  // 36bit, positive number

    );


mult_signed_18bit u_kara_mult_18bit_cm (
    .CLK            (clk                    ),
    .A              (sum_ah_al              ), // 18bit, unknown
    .B              (sum_bh_bl              ), // 18bit, unknown
    .P              (mult_cm_out            )  // 36bit, unknown

    );



// delay to match sequence
reg                 [BIT_WIDTH+1:0]      mult_cl_out_1r; /// 36bit
reg                 [BIT_WIDTH-1:0]      mult_cl_out_2r; /// 34bit
reg                 [BIT_WIDTH-1:0]      mult_cl_out_3r; ///
reg                 [BIT_WIDTH-1:0]      mult_ch_out_1r;
reg                 [BIT_WIDTH-1:0]      mult_ch_out_2r;
reg                 [BIT_WIDTH-1:0]      mult_ch_out_3r;
reg                 [BIT_WIDTH-1:0]      mult_ch_out_4r; ///
always@ (posedge clk) begin
    if(rst) begin
        mult_cl_out_1r <= 'd0;
        mult_cl_out_2r <= 'd0; ///
        mult_cl_out_3r <= 'd0; ///
        mult_ch_out_1r <= 'd0;
        mult_ch_out_2r <= 'd0;
        mult_ch_out_3r <= 'd0;
        mult_ch_out_4r <= 'd0; ///
    end
    else begin
        mult_cl_out_1r <= mult_cl_out; ///
        mult_cl_out_2r <= mult_cl_out_1r; ///
        mult_cl_out_3r <= mult_cl_out_2r; ///
        mult_ch_out_1r <= mult_ch_out;
        mult_ch_out_2r <= mult_ch_out_1r;
        mult_ch_out_3r <= mult_ch_out_2r;
        mult_ch_out_4r <= mult_ch_out_3r; ///
    end
end

// z1 = (ah+al) * (bh+bl) - ah*bh - al*bl
reg     signed      [(PART_WIDTH+1)*2:0]      sum_cm_ch; ///37bit
reg     signed      [(PART_WIDTH+1)*2+1:0]      sum_cm_ch_cl; //38bit
always@ (posedge clk) begin
    if(rst) begin
        sum_cm_ch <= 'd0; ///
        sum_cm_ch_cl <= 'd0;
    end
    else begin
        sum_cm_ch <= $signed(mult_cm_out) + $signed(mult_ch_out); ///
        sum_cm_ch_cl <= sum_cm_ch + $signed(mult_cl_out_1r); ///
    end
end


// delay to match sequence
reg     [(PART_WIDTH+1)*2+2-1:0]      sum_cm_ch_cl_1r; //38bit
always@ (posedge clk) begin
    if(rst) begin
        sum_cm_ch_cl_1r <= 'd0;
    end
    else begin
        sum_cm_ch_cl_1r <= sum_cm_ch_cl;
    end
end


//(lower half of z1) + (upper half of z0)
reg     [PART_WIDTH:0]      sum_clh_cml; //18bit
always@ (posedge clk) begin
    if(rst) begin
        sum_clh_cml <= 'd0;
    end
    else begin
        sum_clh_cml <= mult_cl_out_2r[BIT_WIDTH-1:PART_WIDTH] + sum_cm_ch_cl[PART_WIDTH-1:0];
    end
end

//(lower half of z2) + (upper half of z1) + (carry of sum_clh_cml)
reg     [PART_WIDTH+5:0]      sum_cmh_chl_carry; //23bit
always@ (posedge clk) begin
    if(rst) begin
        sum_cmh_chl_carry <= 'd0;
    end
    else begin
        sum_cmh_chl_carry <= sum_cm_ch_cl_1r[(PART_WIDTH+1)*2+2-1:PART_WIDTH] + mult_ch_out_3r[PART_WIDTH-1:0] + sum_clh_cml[PART_WIDTH]; ///
	end
end

//(upper half of z2) + (carry of sum_cmh_chl_carry)
reg     [PART_WIDTH:0]      sum_chh_carry; //18bit
always@ (posedge clk) begin
    if(rst) begin
        sum_chh_carry <= 'd0;
    end
    else begin
        sum_chh_carry <= mult_ch_out_4r[BIT_WIDTH-1:PART_WIDTH] + sum_cmh_chl_carry[PART_WIDTH+5:PART_WIDTH]; ///
    end
end

// delay to match sequence
reg     [PART_WIDTH-1:0]      sum_0_tmp;
reg     [PART_WIDTH-1:0]      sum_0_tmp_1r;
always@ (posedge clk) begin
    if(rst) begin
        sum_0_tmp <= 'd0;
        sum_0_tmp_1r <= 'd0;
    end
    else begin
        sum_0_tmp <= mult_cl_out_3r[PART_WIDTH-1:0]; ///
        sum_0_tmp_1r <= sum_0_tmp;
    end
end

// delay to match sequence
reg     [PART_WIDTH-1:0]      sum_1_tmp;
reg     [PART_WIDTH-1:0]      sum_1_tmp_1r;
always@ (posedge clk) begin
    if(rst) begin
        sum_1_tmp <= 'd0;
        sum_1_tmp_1r <= 'd0;
    end
    else begin
        sum_1_tmp <= sum_clh_cml[PART_WIDTH-1:0];
        sum_1_tmp_1r <= sum_1_tmp;
    end
end

// delay to match sequence
reg     [PART_WIDTH-1:0]      sum_2_tmp;
always@ (posedge clk) begin
    if(rst) begin
        sum_2_tmp <= 'd0;
    end
    else begin
        sum_2_tmp <= sum_cmh_chl_carry[PART_WIDTH-1:0];
    end
end

//output
always@ (posedge clk) begin
    mult_out <= {sum_chh_carry[PART_WIDTH-1:0], sum_2_tmp, sum_1_tmp_1r, sum_0_tmp_1r}; ///
end



endmodule
