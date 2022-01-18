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
extern void execute_2376(char*, char *);
extern void execute_2377(char*, char *);
extern void execute_2378(char*, char *);
extern void execute_2379(char*, char *);
extern void execute_2380(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_2238(char*, char *);
extern void execute_2239(char*, char *);
extern void execute_2240(char*, char *);
extern void execute_2241(char*, char *);
extern void execute_2242(char*, char *);
extern void execute_2243(char*, char *);
extern void execute_2244(char*, char *);
extern void execute_2245(char*, char *);
extern void execute_2246(char*, char *);
extern void execute_2247(char*, char *);
extern void execute_2252(char*, char *);
extern void execute_2253(char*, char *);
extern void execute_2254(char*, char *);
extern void execute_2255(char*, char *);
extern void execute_2367(char*, char *);
extern void execute_2368(char*, char *);
extern void execute_2369(char*, char *);
extern void execute_2370(char*, char *);
extern void execute_2371(char*, char *);
extern void execute_2372(char*, char *);
extern void execute_2373(char*, char *);
extern void execute_2374(char*, char *);
extern void execute_2375(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_810(char*, char *);
extern void execute_811(char*, char *);
extern void execute_812(char*, char *);
extern void execute_813(char*, char *);
extern void execute_814(char*, char *);
extern void execute_815(char*, char *);
extern void execute_816(char*, char *);
extern void execute_817(char*, char *);
extern void execute_818(char*, char *);
extern void execute_819(char*, char *);
extern void execute_2256(char*, char *);
extern void execute_2257(char*, char *);
extern void execute_2258(char*, char *);
extern void execute_2259(char*, char *);
extern void execute_2284(char*, char *);
extern void execute_2285(char*, char *);
extern void execute_2286(char*, char *);
extern void execute_2287(char*, char *);
extern void execute_2288(char*, char *);
extern void execute_2289(char*, char *);
extern void execute_2290(char*, char *);
extern void execute_2291(char*, char *);
extern void execute_2292(char*, char *);
extern void execute_11(char*, char *);
extern void execute_12(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_2260(char*, char *);
extern void execute_2261(char*, char *);
extern void execute_2262(char*, char *);
extern void execute_2263(char*, char *);
extern void execute_2264(char*, char *);
extern void execute_2265(char*, char *);
extern void execute_2266(char*, char *);
extern void execute_2267(char*, char *);
extern void execute_109(char*, char *);
extern void execute_112(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_187(char*, char *);
extern void execute_181(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_149(char*, char *);
extern void execute_152(char*, char *);
extern void execute_155(char*, char *);
extern void execute_172(char*, char *);
extern void execute_179(char*, char *);
extern void execute_170(char*, char *);
extern void execute_161(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_140(char*, char *);
extern void execute_143(char*, char *);
extern void execute_2249(char*, char *);
extern void execute_2250(char*, char *);
extern void execute_2251(char*, char *);
extern void execute_2381(char*, char *);
extern void execute_2382(char*, char *);
extern void execute_2383(char*, char *);
extern void execute_2384(char*, char *);
extern void execute_2385(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_290(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_291(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_466(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_467(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_484(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_488(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_582(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_673(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_692(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_693(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_742(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_789(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_847(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_849(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_865(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_866(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_868(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_869(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_916(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_963(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1023(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1024(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1025(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1043(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1044(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1045(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1092(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1231(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1299(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1406(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1422(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1424(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1426(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1581(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1582(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1598(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1599(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1601(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1602(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1649(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_289(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_845(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1022(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1402(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1403(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1578(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1579(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[217] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_2376, (funcp)execute_2377, (funcp)execute_2378, (funcp)execute_2379, (funcp)execute_2380, (funcp)execute_5, (funcp)execute_6, (funcp)execute_2238, (funcp)execute_2239, (funcp)execute_2240, (funcp)execute_2241, (funcp)execute_2242, (funcp)execute_2243, (funcp)execute_2244, (funcp)execute_2245, (funcp)execute_2246, (funcp)execute_2247, (funcp)execute_2252, (funcp)execute_2253, (funcp)execute_2254, (funcp)execute_2255, (funcp)execute_2367, (funcp)execute_2368, (funcp)execute_2369, (funcp)execute_2370, (funcp)execute_2371, (funcp)execute_2372, (funcp)execute_2373, (funcp)execute_2374, (funcp)execute_2375, (funcp)execute_8, (funcp)execute_9, (funcp)execute_810, (funcp)execute_811, (funcp)execute_812, (funcp)execute_813, (funcp)execute_814, (funcp)execute_815, (funcp)execute_816, (funcp)execute_817, (funcp)execute_818, (funcp)execute_819, (funcp)execute_2256, (funcp)execute_2257, (funcp)execute_2258, (funcp)execute_2259, (funcp)execute_2284, (funcp)execute_2285, (funcp)execute_2286, (funcp)execute_2287, (funcp)execute_2288, (funcp)execute_2289, (funcp)execute_2290, (funcp)execute_2291, (funcp)execute_2292, (funcp)execute_11, (funcp)execute_12, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_339, (funcp)execute_340, (funcp)execute_341, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_2260, (funcp)execute_2261, (funcp)execute_2262, (funcp)execute_2263, (funcp)execute_2264, (funcp)execute_2265, (funcp)execute_2266, (funcp)execute_2267, (funcp)execute_109, (funcp)execute_112, (funcp)execute_188, (funcp)execute_189, (funcp)execute_187, (funcp)execute_181, (funcp)execute_174, (funcp)execute_175, (funcp)execute_149, (funcp)execute_152, (funcp)execute_155, (funcp)execute_172, (funcp)execute_179, (funcp)execute_170, (funcp)execute_161, (funcp)execute_164, (funcp)execute_166, (funcp)execute_145, (funcp)execute_146, (funcp)execute_140, (funcp)execute_143, (funcp)execute_2249, (funcp)execute_2250, (funcp)execute_2251, (funcp)execute_2381, (funcp)execute_2382, (funcp)execute_2383, (funcp)execute_2384, (funcp)execute_2385, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_5, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_185, (funcp)transaction_232, (funcp)transaction_290, (funcp)transaction_291, (funcp)transaction_292, (funcp)transaction_308, (funcp)transaction_309, (funcp)transaction_310, (funcp)transaction_311, (funcp)transaction_312, (funcp)transaction_359, (funcp)transaction_406, (funcp)transaction_466, (funcp)transaction_467, (funcp)transaction_468, (funcp)transaction_484, (funcp)transaction_485, (funcp)transaction_486, (funcp)transaction_487, (funcp)transaction_488, (funcp)transaction_535, (funcp)transaction_582, (funcp)transaction_673, (funcp)transaction_674, (funcp)transaction_675, (funcp)transaction_691, (funcp)transaction_692, (funcp)transaction_693, (funcp)transaction_694, (funcp)transaction_695, (funcp)transaction_742, (funcp)transaction_789, (funcp)transaction_847, (funcp)transaction_848, (funcp)transaction_849, (funcp)transaction_865, (funcp)transaction_866, (funcp)transaction_867, (funcp)transaction_868, (funcp)transaction_869, (funcp)transaction_916, (funcp)transaction_963, (funcp)transaction_1023, (funcp)transaction_1024, (funcp)transaction_1025, (funcp)transaction_1041, (funcp)transaction_1042, (funcp)transaction_1043, (funcp)transaction_1044, (funcp)transaction_1045, (funcp)transaction_1092, (funcp)transaction_1139, (funcp)transaction_1230, (funcp)transaction_1231, (funcp)transaction_1232, (funcp)transaction_1248, (funcp)transaction_1249, (funcp)transaction_1250, (funcp)transaction_1251, (funcp)transaction_1252, (funcp)transaction_1299, (funcp)transaction_1346, (funcp)transaction_1404, (funcp)transaction_1405, (funcp)transaction_1406, (funcp)transaction_1422, (funcp)transaction_1423, (funcp)transaction_1424, (funcp)transaction_1425, (funcp)transaction_1426, (funcp)transaction_1473, (funcp)transaction_1520, (funcp)transaction_1580, (funcp)transaction_1581, (funcp)transaction_1582, (funcp)transaction_1598, (funcp)transaction_1599, (funcp)transaction_1600, (funcp)transaction_1601, (funcp)transaction_1602, (funcp)transaction_1649, (funcp)transaction_1696, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_288, (funcp)transaction_289, (funcp)transaction_464, (funcp)transaction_465, (funcp)transaction_671, (funcp)transaction_672, (funcp)transaction_845, (funcp)transaction_846, (funcp)transaction_1021, (funcp)transaction_1022, (funcp)transaction_1228, (funcp)transaction_1229, (funcp)transaction_1402, (funcp)transaction_1403, (funcp)transaction_1578, (funcp)transaction_1579};
const int NumRelocateId= 217;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_kara_128bit_behav/xsim.reloc",  (void **)funcTab, 217);
	iki_vhdl_file_variable_register(dp + 404248);
	iki_vhdl_file_variable_register(dp + 404304);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_kara_128bit_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 436648, dp + 430336, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 451024, dp + 430392, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 465400, dp + 430448, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 486792, dp + 480480, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 501168, dp + 480536, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 515544, dp + 480592, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 536936, dp + 530624, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 551312, dp + 530680, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 565688, dp + 530736, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 596016, dp + 589704, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 610392, dp + 589760, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 624768, dp + 589816, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 646160, dp + 639848, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 660536, dp + 639904, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 674912, dp + 639960, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 696304, dp + 689992, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 710680, dp + 690048, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 725056, dp + 690104, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 755384, dp + 749072, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 769760, dp + 749128, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 784136, dp + 749184, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 805528, dp + 799216, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 819904, dp + 799272, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 834280, dp + 799328, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 855672, dp + 849360, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 870048, dp + 849416, 0, 35, 0, 35, 36, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 884424, dp + 849472, 0, 35, 0, 35, 36, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_kara_128bit_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/tb_kara_128bit_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_kara_128bit_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_kara_128bit_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
