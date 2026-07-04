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
static const char *ng0 = "C:/TEMP/novo_teste/CU.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3919810484;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2096391741_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5440);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 5536);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3272U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 5536);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 5600);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_2096391741_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    int t17;
    char *t18;
    int t19;
    char *t20;
    int t21;
    char *t22;
    int t23;
    char *t24;
    int t25;
    char *t26;
    int t27;
    char *t28;
    int t29;
    char *t30;
    int t31;
    char *t32;
    int t33;
    char *t34;
    int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t45;
    unsigned char t46;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 5728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5920);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(44, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6304);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t7);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5456);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 5664);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(52, ng0);
    t1 = ((WORK_P_3919810484) + 3688U);
    t2 = *((char **)t1);
    t1 = (t0 + 6304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = ((WORK_P_3919810484) + 5008U);
    t2 = *((char **)t1);
    t1 = (t0 + 6240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = ((WORK_P_3919810484) + 1168U);
    t4 = *((char **)t3);
    t12 = xsi_mem_cmp(t4, t1, 4U);
    if (t12 == 1)
        goto LAB6;

LAB15:    t3 = ((WORK_P_3919810484) + 1288U);
    t5 = *((char **)t3);
    t13 = xsi_mem_cmp(t5, t1, 4U);
    if (t13 == 1)
        goto LAB7;

LAB16:    t3 = ((WORK_P_3919810484) + 1408U);
    t6 = *((char **)t3);
    t14 = xsi_mem_cmp(t6, t1, 4U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t3 = ((WORK_P_3919810484) + 1528U);
    t11 = *((char **)t3);
    t15 = xsi_mem_cmp(t11, t1, 4U);
    if (t15 == 1)
        goto LAB9;

LAB18:    t3 = ((WORK_P_3919810484) + 1648U);
    t16 = *((char **)t3);
    t17 = xsi_mem_cmp(t16, t1, 4U);
    if (t17 == 1)
        goto LAB10;

LAB19:    t3 = ((WORK_P_3919810484) + 1768U);
    t18 = *((char **)t3);
    t19 = xsi_mem_cmp(t18, t1, 4U);
    if (t19 == 1)
        goto LAB11;

LAB20:    t3 = ((WORK_P_3919810484) + 1888U);
    t20 = *((char **)t3);
    t21 = xsi_mem_cmp(t20, t1, 4U);
    if (t21 == 1)
        goto LAB12;

LAB21:    t3 = ((WORK_P_3919810484) + 2008U);
    t22 = *((char **)t3);
    t23 = xsi_mem_cmp(t22, t1, 4U);
    if (t23 == 1)
        goto LAB12;

LAB22:    t3 = ((WORK_P_3919810484) + 2368U);
    t24 = *((char **)t3);
    t25 = xsi_mem_cmp(t24, t1, 4U);
    if (t25 == 1)
        goto LAB12;

LAB23:    t3 = ((WORK_P_3919810484) + 2488U);
    t26 = *((char **)t3);
    t27 = xsi_mem_cmp(t26, t1, 4U);
    if (t27 == 1)
        goto LAB12;

LAB24:    t3 = ((WORK_P_3919810484) + 2608U);
    t28 = *((char **)t3);
    t29 = xsi_mem_cmp(t28, t1, 4U);
    if (t29 == 1)
        goto LAB12;

LAB25:    t3 = ((WORK_P_3919810484) + 2728U);
    t30 = *((char **)t3);
    t31 = xsi_mem_cmp(t30, t1, 4U);
    if (t31 == 1)
        goto LAB12;

LAB26:    t3 = ((WORK_P_3919810484) + 2128U);
    t32 = *((char **)t3);
    t33 = xsi_mem_cmp(t32, t1, 4U);
    if (t33 == 1)
        goto LAB13;

LAB27:    t3 = ((WORK_P_3919810484) + 2248U);
    t34 = *((char **)t3);
    t35 = xsi_mem_cmp(t34, t1, 4U);
    if (t35 == 1)
        goto LAB13;

LAB28:
LAB14:    xsi_set_current_line(93, ng0);

LAB5:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 3432U);
    t36 = *((char **)t3);
    t37 = (7 - 3);
    t38 = (t37 * 1U);
    t39 = (0 + t38);
    t3 = (t36 + t39);
    t40 = (t0 + 6304);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t3, 4U);
    xsi_driver_first_trans_fast_port(t40);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6304);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5920);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = ((WORK_P_3919810484) + 3688U);
    t2 = *((char **)t1);
    t1 = (t0 + 6304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = ((WORK_P_3919810484) + 5008U);
    t2 = *((char **)t1);
    t1 = (t0 + 6240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = ((WORK_P_3919810484) + 2848U);
    t4 = *((char **)t3);
    t12 = xsi_mem_cmp(t4, t1, 4U);
    if (t12 == 1)
        goto LAB31;

LAB39:    t3 = ((WORK_P_3919810484) + 2968U);
    t5 = *((char **)t3);
    t13 = xsi_mem_cmp(t5, t1, 4U);
    if (t13 == 1)
        goto LAB32;

LAB40:    t3 = ((WORK_P_3919810484) + 3088U);
    t6 = *((char **)t3);
    t14 = xsi_mem_cmp(t6, t1, 4U);
    if (t14 == 1)
        goto LAB33;

LAB41:    t3 = ((WORK_P_3919810484) + 3208U);
    t11 = *((char **)t3);
    t15 = xsi_mem_cmp(t11, t1, 4U);
    if (t15 == 1)
        goto LAB34;

LAB42:    t3 = ((WORK_P_3919810484) + 3328U);
    t16 = *((char **)t3);
    t17 = xsi_mem_cmp(t16, t1, 4U);
    if (t17 == 1)
        goto LAB35;

LAB43:    t3 = ((WORK_P_3919810484) + 3448U);
    t18 = *((char **)t3);
    t19 = xsi_mem_cmp(t18, t1, 4U);
    if (t19 == 1)
        goto LAB36;

LAB44:    t3 = ((WORK_P_3919810484) + 3568U);
    t20 = *((char **)t3);
    t21 = xsi_mem_cmp(t20, t1, 4U);
    if (t21 == 1)
        goto LAB37;

LAB45:
LAB38:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;

LAB30:    xsi_set_current_line(74, ng0);
    t1 = ((WORK_P_3919810484) + 3688U);
    t2 = *((char **)t1);
    t1 = (t0 + 6304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    if (t7 != 0)
        goto LAB65;

LAB67:    xsi_set_current_line(75, ng0);
    t1 = ((WORK_P_3919810484) + 5008U);
    t2 = *((char **)t1);
    t1 = (t0 + 6240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);

LAB66:    goto LAB5;

LAB10:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6304);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 8677);
    t3 = (t0 + 6240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6304);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 8681);
    t3 = (t0 + 6240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(86, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(92, ng0);
    t1 = ((WORK_P_3919810484) + 4288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t7;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t8 = (7 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 6240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB29:;
LAB31:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 3888U);
    t22 = *((char **)t3);
    t3 = (t22 + 0);
    *((unsigned char *)t3) = (unsigned char)1;
    goto LAB30;

LAB32:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (0 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t45 = (t7 == (unsigned char)3);
    if (t45 != 0)
        goto LAB47;

LAB49:
LAB48:    goto LAB30;

LAB33:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (0 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t45 = (t7 == (unsigned char)2);
    if (t45 != 0)
        goto LAB50;

LAB52:
LAB51:    goto LAB30;

LAB34:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (1 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t45 = (t7 == (unsigned char)3);
    if (t45 != 0)
        goto LAB53;

LAB55:
LAB54:    goto LAB30;

LAB35:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (1 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t45 = (t7 == (unsigned char)2);
    if (t45 != 0)
        goto LAB56;

LAB58:
LAB57:    goto LAB30;

LAB36:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (3 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t13 = (2 - 3);
    t37 = (t13 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t3 = (t4 + t39);
    t45 = *((unsigned char *)t3);
    t46 = (t7 != t45);
    if (t46 != 0)
        goto LAB59;

LAB61:
LAB60:    goto LAB30;

LAB37:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t12 = (3 - 3);
    t8 = (t12 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t7 = *((unsigned char *)t1);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t13 = (2 - 3);
    t37 = (t13 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t3 = (t4 + t39);
    t45 = *((unsigned char *)t3);
    t46 = (t7 == t45);
    if (t46 != 0)
        goto LAB62;

LAB64:
LAB63:    goto LAB30;

LAB46:;
LAB47:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 3888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = (unsigned char)1;
    goto LAB48;

LAB50:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 3888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = (unsigned char)1;
    goto LAB51;

LAB53:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 3888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = (unsigned char)1;
    goto LAB54;

LAB56:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 3888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = (unsigned char)1;
    goto LAB57;

LAB59:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 3888U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((unsigned char *)t5) = (unsigned char)1;
    goto LAB60;

LAB62:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 3888U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((unsigned char *)t5) = (unsigned char)1;
    goto LAB63;

LAB65:    xsi_set_current_line(75, ng0);
    t1 = ((WORK_P_3919810484) + 4408U);
    t3 = *((char **)t1);
    t45 = *((unsigned char *)t3);
    t1 = (t0 + 6176);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    *((unsigned char *)t11) = t45;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB66;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0,(void *)work_a_2096391741_3212880686_p_1};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/DataPath_tb_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
