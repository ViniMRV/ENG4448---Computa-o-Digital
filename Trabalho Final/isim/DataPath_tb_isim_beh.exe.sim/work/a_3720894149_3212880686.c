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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/TEMP/novo_teste/DMEM.vhd";
extern char *WORK_P_3919810484;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781543830_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3720894149_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3919810484) + 5728U);
    t3 = *((char **)t1);
    t4 = xsi_mem_cmp(t3, t2, 8U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t1 = ((WORK_P_3919810484) + 5848U);
    t5 = *((char **)t1);
    t6 = xsi_mem_cmp(t5, t2, 8U);
    if (t6 == 1)
        goto LAB4;

LAB14:    t1 = ((WORK_P_3919810484) + 5968U);
    t7 = *((char **)t1);
    t8 = xsi_mem_cmp(t7, t2, 8U);
    if (t8 == 1)
        goto LAB5;

LAB15:    t1 = ((WORK_P_3919810484) + 6088U);
    t9 = *((char **)t1);
    t10 = xsi_mem_cmp(t9, t2, 8U);
    if (t10 == 1)
        goto LAB6;

LAB16:    t1 = ((WORK_P_3919810484) + 6208U);
    t11 = *((char **)t1);
    t12 = xsi_mem_cmp(t11, t2, 8U);
    if (t12 == 1)
        goto LAB7;

LAB17:    t1 = ((WORK_P_3919810484) + 6328U);
    t13 = *((char **)t1);
    t14 = xsi_mem_cmp(t13, t2, 8U);
    if (t14 == 1)
        goto LAB8;

LAB18:    t1 = ((WORK_P_3919810484) + 6448U);
    t15 = *((char **)t1);
    t16 = xsi_mem_cmp(t15, t2, 8U);
    if (t16 == 1)
        goto LAB9;

LAB19:    t1 = ((WORK_P_3919810484) + 6568U);
    t17 = *((char **)t1);
    t18 = xsi_mem_cmp(t17, t2, 8U);
    if (t18 == 1)
        goto LAB10;

LAB20:    t1 = ((WORK_P_3919810484) + 6688U);
    t19 = *((char **)t1);
    t20 = xsi_mem_cmp(t19, t2, 8U);
    if (t20 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 10884U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t6 = (t4 - 0);
    t26 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t4);
    t27 = (8U * t26);
    t28 = (0 + t27);
    t5 = (t2 + t28);
    t7 = (t0 + 7376);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    t13 = (t11 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t5, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t1 = (t0 + 7200);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1832U);
    t21 = *((char **)t1);
    t1 = (t0 + 7376);
    t22 = (t1 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 7376);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB22:;
}

static void work_a_3720894149_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7216);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t3 = ((WORK_P_3919810484) + 6328U);
    t8 = *((char **)t3);
    t9 = xsi_mem_cmp(t8, t7, 8U);
    if (t9 == 1)
        goto LAB9;

LAB15:    t3 = ((WORK_P_3919810484) + 6448U);
    t10 = *((char **)t3);
    t11 = xsi_mem_cmp(t10, t7, 8U);
    if (t11 == 1)
        goto LAB10;

LAB16:    t3 = ((WORK_P_3919810484) + 6568U);
    t12 = *((char **)t3);
    t13 = xsi_mem_cmp(t12, t7, 8U);
    if (t13 == 1)
        goto LAB11;

LAB17:    t3 = ((WORK_P_3919810484) + 6688U);
    t14 = *((char **)t3);
    t15 = xsi_mem_cmp(t14, t7, 8U);
    if (t15 == 1)
        goto LAB12;

LAB18:    t3 = ((WORK_P_3919810484) + 6088U);
    t16 = *((char **)t3);
    t17 = xsi_mem_cmp(t16, t7, 8U);
    if (t17 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 10884U);
    t2 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t3, t1, 8);
    if (t2 != 0)
        goto LAB21;

LAB23:
LAB22:
LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1512U);
    t18 = *((char **)t3);
    t3 = (t0 + 7440);
    t19 = (t3 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 8U);
    xsi_driver_first_trans_fast(t3);
    goto LAB8;

LAB10:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 7504);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 7568);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 7632);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB13:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 7696);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB20:;
LAB21:    xsi_set_current_line(83, ng0);
    t4 = (t0 + 1512U);
    t7 = *((char **)t4);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t4 = (t0 + 10884U);
    t9 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t8, t4);
    t11 = (t9 - 0);
    t23 = (t11 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t10 = (t0 + 7760);
    t12 = (t10 + 56U);
    t14 = *((char **)t12);
    t16 = (t14 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t7, 8U);
    xsi_driver_first_trans_delta(t10, t25, 8U, 0LL);
    goto LAB22;

}

static void work_a_3720894149_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 7824);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7232);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3720894149_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 7888);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7248);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3720894149_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 7952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7264);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3720894149_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 8016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7280);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3720894149_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 8080);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7296);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3720894149_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3720894149_3212880686_p_0,(void *)work_a_3720894149_3212880686_p_1,(void *)work_a_3720894149_3212880686_p_2,(void *)work_a_3720894149_3212880686_p_3,(void *)work_a_3720894149_3212880686_p_4,(void *)work_a_3720894149_3212880686_p_5,(void *)work_a_3720894149_3212880686_p_6};
	xsi_register_didat("work_a_3720894149_3212880686", "isim/DataPath_tb_isim_beh.exe.sim/work/a_3720894149_3212880686.didat");
	xsi_register_executes(pe);
}
