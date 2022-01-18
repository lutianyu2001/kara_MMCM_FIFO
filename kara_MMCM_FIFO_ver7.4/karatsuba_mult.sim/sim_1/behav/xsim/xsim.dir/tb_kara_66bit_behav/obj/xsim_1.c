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
extern void execute_855(char*, char *);
extern void execute_856(char*, char *);
extern void execute_857(char*, char *);
extern void execute_858(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_804(char*, char *);
extern void execute_805(char*, char *);
extern void execute_806(char*, char *);
extern void execute_807(char*, char *);
extern void execute_808(char*, char *);
extern void execute_809(char*, char *);
extern void execute_810(char*, char *);
extern void execute_811(char*, char *);
extern void execute_812(char*, char *);
extern void execute_817(char*, char *);
extern void execute_818(char*, char *);
extern void execute_819(char*, char *);
extern void execute_820(char*, char *);
extern void execute_848(char*, char *);
extern void execute_849(char*, char *);
extern void execute_850(char*, char *);
extern void execute_851(char*, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_854(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_821(char*, char *);
extern void execute_822(char*, char *);
extern void execute_823(char*, char *);
extern void execute_824(char*, char *);
extern void execute_825(char*, char *);
extern void execute_826(char*, char *);
extern void execute_827(char*, char *);
extern void execute_828(char*, char *);
extern void execute_829(char*, char *);
extern void execute_106(char*, char *);
extern void execute_109(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_184(char*, char *);
extern void execute_178(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_146(char*, char *);
extern void execute_149(char*, char *);
extern void execute_152(char*, char *);
extern void execute_169(char*, char *);
extern void execute_176(char*, char *);
extern void execute_167(char*, char *);
extern void execute_158(char*, char *);
extern void execute_161(char*, char *);
extern void execute_163(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_137(char*, char *);
extern void execute_140(char*, char *);
extern void execute_814(char*, char *);
extern void execute_815(char*, char *);
extern void execute_816(char*, char *);
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void execute_862(char*, char *);
extern void execute_863(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_368(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_427(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_428(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_429(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_426(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[116] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_855, (funcp)execute_856, (funcp)execute_857, (funcp)execute_858, (funcp)execute_5, (funcp)execute_6, (funcp)execute_804, (funcp)execute_805, (funcp)execute_806, (funcp)execute_807, (funcp)execute_808, (funcp)execute_809, (funcp)execute_810, (funcp)execute_811, (funcp)execute_812, (funcp)execute_817, (funcp)execute_818, (funcp)execute_819, (funcp)execute_820, (funcp)execute_848, (funcp)execute_849, (funcp)execute_850, (funcp)execute_851, (funcp)execute_852, (funcp)execute_853, (funcp)execute_854, (funcp)execute_8, (funcp)execute_9, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_339, (funcp)execute_340, (funcp)execute_341, (funcp)execute_821, (funcp)execute_822, (funcp)execute_823, (funcp)execute_824, (funcp)execute_825, (funcp)execute_826, (funcp)execute_827, (funcp)execute_828, (funcp)execute_829, (funcp)execute_106, (funcp)execute_109, (funcp)execute_185, (funcp)execute_186, (funcp)execute_184, (funcp)execute_178, (funcp)execute_171, (funcp)execute_172, (funcp)execute_146, (funcp)execute_149, (funcp)execute_152, (funcp)execute_169, (funcp)execute_176, (funcp)execute_167, (funcp)execute_158, (funcp)execute_161, (funcp)execute_163, (funcp)execute_142, (funcp)execute_143, (funcp)execute_137, (funcp)execute_140, (funcp)execute_814, (funcp)execute_815, (funcp)execute_816, (funcp)execute_859, (funcp)execute_860, (funcp)execute_861, (funcp)execute_862, (funcp)execute_863, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_5, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_148, (funcp)transaction_195, (funcp)transaction_252, (funcp)transaction_253, (funcp)transaction_254, (funcp)transaction_270, (funcp)transaction_271, (funcp)transaction_272, (funcp)transaction_273, (funcp)transaction_274, (funcp)transaction_321, (funcp)transaction_368, (funcp)transaction_427, (funcp)transaction_428, (funcp)transaction_429, (funcp)transaction_445, (funcp)transaction_446, (funcp)transaction_447, (funcp)transaction_448, (funcp)transaction_449, (funcp)transaction_496, (funcp)transaction_543, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_250, (funcp)transaction_251, (funcp)transaction_425, (funcp)transaction_426};
const int NumRelocateId= 116;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_kara_66bit_behav/xsim.reloc",  (void **)funcTab, 116);
	iki_vhdl_file_variable_register(dp + 140696);
	iki_vhdl_file_variable_register(dp + 140752);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_kara_66bit_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 162624, dp + 156336, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 177000, dp + 156392, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 191376, dp + 156448, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 212744, dp + 206456, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 227120, dp + 206512, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 241496, dp + 206568, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 262864, dp + 256576, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 277240, dp + 256632, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 291616, dp + 256688, 0, 35, 0, 35, 36, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_kara_66bit_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/tb_kara_66bit_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_kara_66bit_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_kara_66bit_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
