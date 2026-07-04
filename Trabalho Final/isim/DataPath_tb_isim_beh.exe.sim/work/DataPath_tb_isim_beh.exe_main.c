/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *WORK_P_3919810484;
char *WORK_P_0911084148;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_3919810484_init();
    work_p_0911084148_init();
    work_a_2096391741_3212880686_init();
    work_a_1130845995_3212880686_init();
    work_a_2912845117_3212880686_init();
    work_a_1305164672_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1561973598_3212880686_init();
    work_a_3720894149_3212880686_init();
    work_a_2399776393_1181938964_init();
    work_a_0503873392_2372691052_init();


    xsi_register_tops("work_a_0503873392_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3919810484 = xsi_get_engine_memory("work_p_3919810484");
    WORK_P_0911084148 = xsi_get_engine_memory("work_p_0911084148");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
