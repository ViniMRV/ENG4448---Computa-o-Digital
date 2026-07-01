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
static const char *ng0 = "C:/Users/aula2.ELE/Desktop/Lab6_Vivi_Vini/Lab6_Vivi_Vini/uart.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_2239630122_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6032);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(41, ng0);
    t2 = xsi_get_transient_memory(9U);
    memset(t2, 0, 9U);
    t4 = t2;
    memset(t4, (unsigned char)2, 9U);
    t5 = (t0 + 6192);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 9U);
    xsi_driver_first_trans_fast(t5);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(33, ng0);
    t4 = xsi_get_transient_memory(9U);
    memset(t4, 0, 9U);
    t11 = t4;
    memset(t11, (unsigned char)2, 9U);
    t12 = (t0 + 6192);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 9U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 10048U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t17, t4, t2, 1);
    t8 = (t17 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 6192);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 9U);
    xsi_driver_first_trans_fast(t11);

LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(36, ng0);
    t2 = xsi_get_transient_memory(9U);
    memset(t2, 0, 9U);
    t8 = t2;
    memset(t8, (unsigned char)2, 9U);
    t11 = (t0 + 6192);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 9U);
    xsi_driver_first_trans_fast(t11);
    goto LAB14;

LAB16:    xsi_size_not_matching(9U, t19, 0);
    goto LAB17;

}

static void work_a_2239630122_3212880686_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 10048U);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t4 = (t0 + 10064U);
    t6 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t3, t5, t4, 1);
    t7 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t6, t3);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t13 = (t0 + 6256);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 6048);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 6256);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2239630122_3212880686_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10112U);
    t3 = (t0 + 10251);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (t0 + 3248U);
    t17 = *((char **)t16);
    t16 = (t0 + 6320);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 9U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t22 = (t0 + 6064);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 3368U);
    t11 = *((char **)t7);
    t7 = (t0 + 6320);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 9U);
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2239630122_3212880686_p_3(char *t0)
{
    char t17[16];
    char t21[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t22;
    unsigned int t23;
    char *t24;
    static char *nl0[] = {&&LAB12, &&LAB13, &&LAB14, &&LAB15};

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6080);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (char *)((nl0) + t1);
    goto **((char **)t2);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(53, ng0);
    t4 = xsi_get_transient_memory(4U);
    memset(t4, 0, 4U);
    t11 = t4;
    memset(t11, (unsigned char)2, 4U);
    t12 = (t0 + 6384);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 6448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t4 = t2;
    memset(t4, (unsigned char)3, 8U);
    t5 = (t0 + 6576);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB9:    goto LAB3;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(60, ng0);
    t5 = xsi_get_transient_memory(4U);
    memset(t5, 0, 4U);
    t8 = t5;
    memset(t8, (unsigned char)2, 4U);
    t11 = (t0 + 6384);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB11;

LAB13:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB11;

LAB14:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB11;

LAB15:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 6640);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB16:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB17:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 6448);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB20:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 10112U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t17, t5, t2, 1);
    t11 = (t17 + 12U);
    t18 = *((unsigned int *)t11);
    t19 = (1U * t18);
    t6 = (4U != t19);
    if (t6 == 1)
        goto LAB23;

LAB24:    t12 = (t0 + 6384);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB21;

LAB23:    xsi_size_not_matching(4U, t19, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 10112U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t17, t5, t2, 1);
    t11 = (t17 + 12U);
    t18 = *((unsigned int *)t11);
    t19 = (1U * t18);
    t6 = (4U != t19);
    if (t6 == 1)
        goto LAB28;

LAB29:    t12 = (t0 + 6384);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t18 = (7 - 6);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t1 = *((unsigned char *)t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t21 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 6;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t22 = (0 - 6);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t23;
    t5 = xsi_base_array_concat(t5, t17, t11, (char)97, t2, t21, (char)99, t1, (char)101);
    t23 = (7U + 1U);
    t3 = (8U != t23);
    if (t3 == 1)
        goto LAB30;

LAB31:    t13 = (t0 + 6576);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t24 = *((char **)t16);
    memcpy(t24, t5, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB26;

LAB28:    xsi_size_not_matching(4U, t19, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, t23, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(75, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t5 = t2;
    memset(t5, (unsigned char)2, 4U);
    t8 = (t0 + 6384);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB33;

}

static void work_a_2239630122_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10112U);
    t3 = (t0 + 3488U);
    t4 = *((char **)t3);
    t3 = (t0 + 10128U);
    t5 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 6704);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 6096);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 6704);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2239630122_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6768);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6112);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2239630122_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2239630122_3212880686_p_0,(void *)work_a_2239630122_3212880686_p_1,(void *)work_a_2239630122_3212880686_p_2,(void *)work_a_2239630122_3212880686_p_3,(void *)work_a_2239630122_3212880686_p_4,(void *)work_a_2239630122_3212880686_p_5};
	xsi_register_didat("work_a_2239630122_3212880686", "isim/uart_test_isim_beh.exe.sim/work/a_2239630122_3212880686.didat");
	xsi_register_executes(pe);
}
