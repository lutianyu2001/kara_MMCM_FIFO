// -*- coding: ASCII -*-
// (ISO 8859-1)
// Never use UTF-8 specific characters, since the built-in editor of Vivado can't recognize it !!!
// Language: Verilog-2001


// This is a file that stores all the parameters

    parameter DLY_ADDRB_TRIGGER     = 'd37             ;
    // addrb is delayed from addra, and this parameter indicates when addra reach what number will addrb start counting, range:[40~63], unit:clk
    // 40 is the most efficient one: When ram finish outputing the mult_in, after 1 clk, it will start to output the result calculated by karatsuba
    // How do we know it should be 37?
    //            63          - (             24              +                          2                            ) = 37
    //   The maximum of addra     the time cost of karatsuba      simple dual ram will delay 2 clk to output the data


    parameter KARA_TIME_COST        = 'd24             ;
    // This indicates the time cost of calculation of karatsuba, unit:clk