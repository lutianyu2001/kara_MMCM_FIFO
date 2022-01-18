# kara_MMCM_FIFO

An modified version of [128 bit Pipelined Karatsuba Multiplier based on DSP48 IP](https://github.com/lutianyu2001/kara_128_pipe_dsp48) with a ROM, a FIFO and a MMCM, the ROM and the write clock of the FIFO are working under 100MHz, while the read clock of the FIFO and the multiplier are working under 50MHz. The ROM will automatically output random numbers to FIFO, when the FIFO is not programmable empty, it output the data to Karatsuba multiplier.

Language: Verilog

Platform: Xilinx Vivado 2018.3 + ModelSim SE 10.6d
