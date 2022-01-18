/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_352(char*, char *);
extern void execute_353(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_351(char*, char *);
extern void execute_103(char*, char *);
extern void execute_106(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_181(char*, char *);
extern void execute_175(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_143(char*, char *);
extern void execute_146(char*, char *);
extern void execute_149(char*, char *);
extern void execute_166(char*, char *);
extern void execute_173(char*, char *);
extern void execute_164(char*, char *);
extern void execute_155(char*, char *);
extern void execute_158(char*, char *);
extern void execute_160(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_134(char*, char *);
extern void execute_137(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_356(char*, char *);
extern void execute_357(char*, char *);
extern void execute_358(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[70] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_352, (funcp)execute_353, (funcp)execute_354, (funcp)execute_355, (funcp)execute_5, (funcp)execute_6, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_351, (funcp)execute_103, (funcp)execute_106, (funcp)execute_182, (funcp)execute_183, (funcp)execute_181, (funcp)execute_175, (funcp)execute_168, (funcp)execute_169, (funcp)execute_143, (funcp)execute_146, (funcp)execute_149, (funcp)execute_166, (funcp)execute_173, (funcp)execute_164, (funcp)execute_155, (funcp)execute_158, (funcp)execute_160, (funcp)execute_139, (funcp)execute_140, (funcp)execute_134, (funcp)execute_137, (funcp)execute_340, (funcp)execute_341, (funcp)execute_342, (funcp)execute_356, (funcp)execute_357, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_5, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_116, (funcp)transaction_163, (funcp)transaction_17, (funcp)transaction_18};
const int NumRelocateId= 70;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_kara_34bit_behav/xsim.reloc",  (void **)funcTab, 70);
	iki_vhdl_file_variable_register(dp + 53728);
	iki_vhdl_file_variable_register(dp + 53784);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_kara_34bit_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 67640, dp + 61352, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 82016, dp + 61408, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 96392, dp + 61464, 0, 35, 0, 35, 36, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_kara_34bit_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_kara_34bit_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_kara_34bit_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_kara_34bit_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
