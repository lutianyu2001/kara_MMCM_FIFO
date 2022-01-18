/*********************************************************************************
*                      file name: srl_lut.sv
----------------------------------------------------------------------------------
* Create Time    :  2018-02-28 17:04:38
* Author         :
* Email          :
* Version        :  V1.0
----------------------------------------------------------------------------------
* Function Description:
* SRL_TYPE
    • register      : The tool does not infer an SRL, but instead only uses registers.
    • srl           : The tool infers an SRL without any registers before or after.
    • srl_reg       : The tool infers an SRL and leaves one register after the SRL.
    • reg_srl       : The tool infers an SRL and leaves one register before the SRL.
    • reg_srl_reg   : The tool infers an SRL and leaves one register before and one register after the SRL.
    • block         : The tool infers the SRL inside a block RAM.
    • auto          : The tool does not support this style , just let the tool select automatically
* KEEP_ON
    • false         :
    • true          :
*
* if KEEP_ON set to "true" , the tool does not infer an SRL, but instead only uses registers
*
----------------------------------------------------------------------------------
* Signal Description:
----------------------------------------------------------------------------------
* Modify report  :
* Time           :
* Designer       :
* Function       :
*********************************************************************************/
`timescale 1ns/1ps

module srl_lut #(
    parameter   WID_DATA                = 16                        ,
    parameter   DLY_NUM                 = 16                        ,
    parameter   SRL_TYPE                = "auto"                    ,
    parameter   KEEP_ON                 = "auto"                    ,
    parameter   FANOUT_NUM              = 400
    )(
    input   logic                                   clk                         ,
    input   logic [WID_DATA-1:0]                    d                           ,
    output  logic [WID_DATA-1:0]                    q
    );
//-------------------------------------------------------------------------------
// local parameter
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
// reg and wire
//-------------------------------------------------------------------------------
integer i;
/*
(* srl_style = SRL_TYPE , keep = KEEP_ON *)     logic [WID_DATA-1:0]        d_nr                [DLY_NUM-1:0]       ;
//(* max_fanout = FANOUT_NUM , keep = KEEP_ON *)  logic [WID_DATA-1:0]        q_tmp                                   ;
(* keep = KEEP_ON *)  logic [WID_DATA-1:0]        q_tmp                                   ;
*/
//-------------------------------------------------------------------------------
// main code
//-------------------------------------------------------------------------------
generate
    if(DLY_NUM == 0) begin
        assign q = d;
    end
    else if(DLY_NUM == 1) begin
        always @(posedge clk) begin
            q <= d;
        end
    end
    else begin
        if(SRL_TYPE == "register") begin
            (* srl_style = "register" , keep = KEEP_ON , max_fanout = FANOUT_NUM *)     logic [WID_DATA-1:0]   d_nr  [DLY_NUM-1:0] ;

            always @(posedge clk) begin
                d_nr[0] <= d;
                for(i=1;i<DLY_NUM;i=i+1) begin
                    d_nr[i] <= d_nr[i-1];
                end
            end
            assign q = d_nr[DLY_NUM-1];

        end
        else begin
            (* srl_style = SRL_TYPE *)  logic [WID_DATA-1:0]   d_nr  [DLY_NUM-1:0] ;

            always @(posedge clk) begin
                d_nr[0] <= d;
                for(i=1;i<DLY_NUM;i=i+1) begin
                    d_nr[i] <= d_nr[i-1];
                end
            end
            assign q = d_nr[DLY_NUM-1];

        end
    end

endgenerate

//assign q = q_tmp;

//-----------------------------
endmodule

