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
extern void execute_579(char*, char *);
extern void execute_1453(char*, char *);
extern void execute_1454(char*, char *);
extern void execute_1455(char*, char *);
extern void execute_1456(char*, char *);
extern void execute_1457(char*, char *);
extern void execute_1458(char*, char *);
extern void execute_1450(char*, char *);
extern void execute_1451(char*, char *);
extern void execute_1452(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_10(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_18(char*, char *);
extern void execute_589(char*, char *);
extern void execute_590(char*, char *);
extern void execute_591(char*, char *);
extern void execute_592(char*, char *);
extern void execute_593(char*, char *);
extern void execute_594(char*, char *);
extern void execute_595(char*, char *);
extern void execute_596(char*, char *);
extern void execute_588(char*, char *);
extern void execute_28(char*, char *);
extern void execute_608(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_607(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_612(char*, char *);
extern void execute_613(char*, char *);
extern void execute_614(char*, char *);
extern void execute_615(char*, char *);
extern void execute_42(char*, char *);
extern void execute_624(char*, char *);
extern void execute_44(char*, char *);
extern void execute_625(char*, char *);
extern void execute_626(char*, char *);
extern void execute_627(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_1309(char*, char *);
extern void execute_1311(char*, char *);
extern void execute_1313(char*, char *);
extern void execute_1315(char*, char *);
extern void execute_1317(char*, char *);
extern void execute_1319(char*, char *);
extern void execute_1321(char*, char *);
extern void execute_1323(char*, char *);
extern void execute_1324(char*, char *);
extern void execute_1327(char*, char *);
extern void execute_1329(char*, char *);
extern void execute_1331(char*, char *);
extern void execute_1332(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_712(char*, char *);
extern void execute_713(char*, char *);
extern void execute_714(char*, char *);
extern void execute_717(char*, char *);
extern void execute_718(char*, char *);
extern void execute_719(char*, char *);
extern void execute_720(char*, char *);
extern void execute_502(char*, char *);
extern void execute_1370(char*, char *);
extern void execute_1371(char*, char *);
extern void execute_1369(char*, char *);
extern void execute_1403(char*, char *);
extern void execute_1404(char*, char *);
extern void execute_1405(char*, char *);
extern void execute_581(char*, char *);
extern void execute_582(char*, char *);
extern void execute_583(char*, char *);
extern void execute_1459(char*, char *);
extern void execute_1460(char*, char *);
extern void execute_1461(char*, char *);
extern void execute_1462(char*, char *);
extern void execute_1463(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_225(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_231(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_237(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_886(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_891(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_896(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_901(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_911(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_916(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_921(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_926(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_931(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_936(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_941(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_946(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_951(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_956(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_961(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_966(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_971(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_976(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_981(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_986(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_991(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_996(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1001(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1006(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1011(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1016(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1026(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1031(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1036(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1051(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1195(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[210] = {(funcp)execute_2, (funcp)execute_579, (funcp)execute_1453, (funcp)execute_1454, (funcp)execute_1455, (funcp)execute_1456, (funcp)execute_1457, (funcp)execute_1458, (funcp)execute_1450, (funcp)execute_1451, (funcp)execute_1452, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_585, (funcp)execute_586, (funcp)execute_6, (funcp)execute_7, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_14, (funcp)execute_15, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_18, (funcp)execute_589, (funcp)execute_590, (funcp)execute_591, (funcp)execute_592, (funcp)execute_593, (funcp)execute_594, (funcp)execute_595, (funcp)execute_596, (funcp)execute_588, (funcp)execute_28, (funcp)execute_608, (funcp)execute_609, (funcp)execute_610, (funcp)execute_611, (funcp)execute_607, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_612, (funcp)execute_613, (funcp)execute_614, (funcp)execute_615, (funcp)execute_42, (funcp)execute_624, (funcp)execute_44, (funcp)execute_625, (funcp)execute_626, (funcp)execute_627, (funcp)execute_103, (funcp)execute_104, (funcp)execute_1309, (funcp)execute_1311, (funcp)execute_1313, (funcp)execute_1315, (funcp)execute_1317, (funcp)execute_1319, (funcp)execute_1321, (funcp)execute_1323, (funcp)execute_1324, (funcp)execute_1327, (funcp)execute_1329, (funcp)execute_1331, (funcp)execute_1332, (funcp)execute_135, (funcp)execute_136, (funcp)execute_712, (funcp)execute_713, (funcp)execute_714, (funcp)execute_717, (funcp)execute_718, (funcp)execute_719, (funcp)execute_720, (funcp)execute_502, (funcp)execute_1370, (funcp)execute_1371, (funcp)execute_1369, (funcp)execute_1403, (funcp)execute_1404, (funcp)execute_1405, (funcp)execute_581, (funcp)execute_582, (funcp)execute_583, (funcp)execute_1459, (funcp)execute_1460, (funcp)execute_1461, (funcp)execute_1462, (funcp)execute_1463, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_53, (funcp)transaction_65, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_199, (funcp)transaction_200, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_212, (funcp)transaction_213, (funcp)transaction_214, (funcp)transaction_215, (funcp)transaction_216, (funcp)transaction_217, (funcp)transaction_218, (funcp)transaction_219, (funcp)transaction_220, (funcp)transaction_221, (funcp)transaction_222, (funcp)transaction_223, (funcp)transaction_224, (funcp)transaction_225, (funcp)transaction_226, (funcp)transaction_227, (funcp)transaction_228, (funcp)transaction_229, (funcp)transaction_230, (funcp)transaction_231, (funcp)transaction_232, (funcp)transaction_233, (funcp)transaction_237, (funcp)transaction_238, (funcp)transaction_239, (funcp)transaction_240, (funcp)transaction_241, (funcp)transaction_242, (funcp)transaction_243, (funcp)transaction_244, (funcp)transaction_245, (funcp)transaction_246, (funcp)transaction_247, (funcp)transaction_252, (funcp)transaction_253, (funcp)transaction_256, (funcp)transaction_110, (funcp)transaction_115, (funcp)transaction_120, (funcp)transaction_133, (funcp)transaction_138, (funcp)transaction_143, (funcp)transaction_148, (funcp)transaction_153, (funcp)transaction_158, (funcp)transaction_163, (funcp)transaction_168, (funcp)transaction_886, (funcp)transaction_891, (funcp)transaction_896, (funcp)transaction_901, (funcp)transaction_906, (funcp)transaction_911, (funcp)transaction_916, (funcp)transaction_921, (funcp)transaction_926, (funcp)transaction_931, (funcp)transaction_936, (funcp)transaction_941, (funcp)transaction_946, (funcp)transaction_951, (funcp)transaction_956, (funcp)transaction_961, (funcp)transaction_966, (funcp)transaction_971, (funcp)transaction_976, (funcp)transaction_981, (funcp)transaction_986, (funcp)transaction_991, (funcp)transaction_996, (funcp)transaction_1001, (funcp)transaction_1006, (funcp)transaction_1011, (funcp)transaction_1016, (funcp)transaction_1021, (funcp)transaction_1026, (funcp)transaction_1031, (funcp)transaction_1036, (funcp)transaction_1041, (funcp)transaction_1051, (funcp)transaction_1110, (funcp)transaction_1115, (funcp)transaction_1120, (funcp)transaction_1125, (funcp)transaction_1159, (funcp)transaction_1180, (funcp)transaction_1185, (funcp)transaction_1190, (funcp)transaction_1195};
const int NumRelocateId= 210;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_UART_controller_func_synth/xsim.reloc",  (void **)funcTab, 210);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_UART_controller_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_UART_controller_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/tb_UART_controller_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_UART_controller_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_UART_controller_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
