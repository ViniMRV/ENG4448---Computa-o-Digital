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
static const char *ng0 = "C:/TEMP/novo_teste/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3919810484;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1854260743_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2756063821_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2794316277_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t6[16];
    char t45[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    int t9;
    int t10;
    int t11;
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
    int t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned char t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned char t43;
    unsigned char t44;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 4192);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4256);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 6376U);
    t1 = xsi_base_array_concat(t1, t6, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 2568U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    t8 = (1U + 8U);
    memcpy(t5, t1, t8);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 6392U);
    t1 = xsi_base_array_concat(t1, t6, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 2688U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    t8 = (1U + 8U);
    memcpy(t5, t1, t8);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3919810484) + 1648U);
    t3 = *((char **)t1);
    t9 = xsi_mem_cmp(t3, t2, 4U);
    if (t9 == 1)
        goto LAB3;

LAB14:    t1 = ((WORK_P_3919810484) + 1768U);
    t4 = *((char **)t1);
    t10 = xsi_mem_cmp(t4, t2, 4U);
    if (t10 == 1)
        goto LAB4;

LAB15:    t1 = ((WORK_P_3919810484) + 1888U);
    t5 = *((char **)t1);
    t11 = xsi_mem_cmp(t5, t2, 4U);
    if (t11 == 1)
        goto LAB5;

LAB16:    t1 = ((WORK_P_3919810484) + 2008U);
    t7 = *((char **)t1);
    t12 = xsi_mem_cmp(t7, t2, 4U);
    if (t12 == 1)
        goto LAB6;

LAB17:    t1 = ((WORK_P_3919810484) + 2128U);
    t13 = *((char **)t1);
    t14 = xsi_mem_cmp(t13, t2, 4U);
    if (t14 == 1)
        goto LAB7;

LAB18:    t1 = ((WORK_P_3919810484) + 2248U);
    t15 = *((char **)t1);
    t16 = xsi_mem_cmp(t15, t2, 4U);
    if (t16 == 1)
        goto LAB8;

LAB19:    t1 = ((WORK_P_3919810484) + 2368U);
    t17 = *((char **)t1);
    t18 = xsi_mem_cmp(t17, t2, 4U);
    if (t18 == 1)
        goto LAB9;

LAB20:    t1 = ((WORK_P_3919810484) + 2488U);
    t19 = *((char **)t1);
    t20 = xsi_mem_cmp(t19, t2, 4U);
    if (t20 == 1)
        goto LAB10;

LAB21:    t1 = ((WORK_P_3919810484) + 2608U);
    t21 = *((char **)t1);
    t22 = xsi_mem_cmp(t21, t2, 4U);
    if (t22 == 1)
        goto LAB11;

LAB22:    t1 = ((WORK_P_3919810484) + 2728U);
    t23 = *((char **)t1);
    t24 = xsi_mem_cmp(t23, t2, 4U);
    if (t24 == 1)
        goto LAB12;

LAB23:
LAB13:    xsi_set_current_line(96, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);

LAB2:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 4320);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t9 = (7 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t3 = (t0 + 4384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t29;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 6551);
    t29 = 1;
    if (8U == 8U)
        goto LAB61;

LAB62:    t29 = 0;

LAB63:    if (t29 != 0)
        goto LAB58;

LAB60:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 4448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB59:    t1 = (t0 + 4112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1192U);
    t25 = *((char **)t1);
    t1 = (t0 + 2448U);
    t26 = *((char **)t1);
    t1 = (t26 + 0);
    memcpy(t1, t25, 8U);
    goto LAB2;

LAB4:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 8U);
    goto LAB2;

LAB5:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 6456U);
    t3 = (t0 + 2688U);
    t4 = *((char **)t3);
    t3 = (t0 + 6456U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t6, t2, t1, t4, t3);
    t7 = (t0 + 2808U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t6 + 12U);
    t8 = *((unsigned int *)t15);
    t27 = (1U * t8);
    memcpy(t7, t5, t27);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t8 = (8 - 7);
    t27 = (t8 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t9 = (8 - 8);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t29;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (7 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t30 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t10 = (7 - 7);
    t31 = (t10 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t3 = (t4 + t33);
    t34 = *((unsigned char *)t3);
    t35 = (t30 == t34);
    if (t35 == 1)
        goto LAB28;

LAB29:    t29 = (unsigned char)0;

LAB30:    if (t29 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB2;

LAB6:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 6456U);
    t3 = (t0 + 2688U);
    t4 = *((char **)t3);
    t3 = (t0 + 6456U);
    t5 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t6, t2, t1, t4, t3);
    t7 = (t0 + 2808U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t6 + 12U);
    t8 = *((unsigned int *)t15);
    t27 = (1U * t8);
    memcpy(t7, t5, t27);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t8 = (8 - 7);
    t27 = (t8 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t9 = (8 - 8);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t30 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t29);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t30;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (7 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t30 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t10 = (7 - 7);
    t31 = (t10 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t3 = (t4 + t33);
    t34 = *((unsigned char *)t3);
    t35 = (t30 != t34);
    if (t35 == 1)
        goto LAB34;

LAB35:    t29 = (unsigned char)0;

LAB36:    if (t29 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB2;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t0 + 6456U);
    t3 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t6, t2, t1, 1);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    t7 = (t6 + 12U);
    t8 = *((unsigned int *)t7);
    t27 = (1U * t8);
    memcpy(t4, t3, t27);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t8 = (8 - 7);
    t27 = (t8 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t9 = (8 - 8);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t29;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6535);
    t29 = 1;
    if (8U == 8U)
        goto LAB40;

LAB41:    t29 = 0;

LAB42:    if (t29 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB2;

LAB8:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t0 + 6456U);
    t3 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t6, t2, t1, 1);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    t7 = (t6 + 12U);
    t8 = *((unsigned int *)t7);
    t27 = (1U * t8);
    memcpy(t4, t3, t27);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t8 = (8 - 7);
    t27 = (t8 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t9 = (8 - 8);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t30 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t29);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t30;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6543);
    t29 = 1;
    if (8U == 8U)
        goto LAB49;

LAB50:    t29 = 0;

LAB51:    if (t29 != 0)
        goto LAB46;

LAB48:
LAB47:    goto LAB2;

LAB9:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6392U);
    t5 = ieee_p_1242562249_sub_1854260743_1035706684(IEEE_P_1242562249, t6, t2, t1, t4, t3);
    t7 = (t0 + 2448U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t6 + 12U);
    t8 = *((unsigned int *)t15);
    t27 = (1U * t8);
    memcpy(t7, t5, t27);
    goto LAB2;

LAB10:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6392U);
    t5 = ieee_p_1242562249_sub_2794316277_1035706684(IEEE_P_1242562249, t6, t2, t1, t4, t3);
    t7 = (t0 + 2448U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t6 + 12U);
    t8 = *((unsigned int *)t15);
    t27 = (1U * t8);
    memcpy(t7, t5, t27);
    goto LAB2;

LAB11:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6392U);
    t5 = ieee_p_1242562249_sub_2756063821_1035706684(IEEE_P_1242562249, t6, t2, t1, t4, t3);
    t7 = (t0 + 2448U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t15 = (t6 + 12U);
    t8 = *((unsigned int *)t15);
    t27 = (1U * t8);
    memcpy(t7, t5, t27);
    goto LAB2;

LAB12:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t9 = (7 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t30 = (t29 == (unsigned char)2);
    if (t30 != 0)
        goto LAB55;

LAB57:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t8 = (7 - 7);
    t27 = (t8 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t45 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 7;
    t7 = (t5 + 4U);
    *((int *)t7) = 1;
    t7 = (t5 + 8U);
    *((int *)t7) = -1;
    t9 = (1 - 7);
    t31 = (t9 * -1);
    t31 = (t31 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t31;
    t3 = xsi_base_array_concat(t3, t6, t4, (char)99, (unsigned char)2, (char)97, t1, t45, (char)101);
    t7 = (t0 + 2448U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    t31 = (1U + 7U);
    memcpy(t7, t3, t31);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (0 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t29;
    xsi_driver_first_trans_fast_port(t3);

LAB56:    goto LAB2;

LAB24:;
LAB25:    xsi_set_current_line(47, ng0);
    t17 = (t0 + 4256);
    t19 = (t17 + 56U);
    t21 = *((char **)t19);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB26;

LAB28:    t5 = (t0 + 1032U);
    t7 = *((char **)t5);
    t11 = (7 - 7);
    t36 = (t11 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t5 = (t7 + t38);
    t39 = *((unsigned char *)t5);
    t13 = (t0 + 2448U);
    t15 = *((char **)t13);
    t12 = (7 - 7);
    t40 = (t12 * -1);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t13 = (t15 + t42);
    t43 = *((unsigned char *)t13);
    t44 = (t39 != t43);
    t29 = t44;
    goto LAB30;

LAB31:    xsi_set_current_line(56, ng0);
    t17 = (t0 + 4256);
    t19 = (t17 + 56U);
    t21 = *((char **)t19);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB32;

LAB34:    t5 = (t0 + 1032U);
    t7 = *((char **)t5);
    t11 = (7 - 7);
    t36 = (t11 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t5 = (t7 + t38);
    t39 = *((unsigned char *)t5);
    t13 = (t0 + 2448U);
    t15 = *((char **)t13);
    t12 = (7 - 7);
    t40 = (t12 * -1);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t13 = (t15 + t42);
    t43 = *((unsigned char *)t13);
    t44 = (t39 != t43);
    t29 = t44;
    goto LAB36;

LAB37:    xsi_set_current_line(65, ng0);
    t7 = (t0 + 4256);
    t13 = (t7 + 56U);
    t15 = *((char **)t13);
    t17 = (t15 + 56U);
    t19 = *((char **)t17);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB38;

LAB40:    t8 = 0;

LAB43:    if (t8 < 8U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t4 = (t2 + t8);
    t5 = (t1 + t8);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB41;

LAB45:    t8 = (t8 + 1);
    goto LAB43;

LAB46:    xsi_set_current_line(74, ng0);
    t7 = (t0 + 4256);
    t13 = (t7 + 56U);
    t15 = *((char **)t13);
    t17 = (t15 + 56U);
    t19 = *((char **)t17);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB47;

LAB49:    t8 = 0;

LAB52:    if (t8 < 8U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t4 = (t2 + t8);
    t5 = (t1 + t8);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB50;

LAB54:    t8 = (t8 + 1);
    goto LAB52;

LAB55:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t31 = (7 - 6);
    t32 = (t31 * 1U);
    t33 = (0 + t32);
    t3 = (t4 + t33);
    t7 = ((IEEE_P_2592010699) + 4024);
    t13 = (t45 + 0U);
    t15 = (t13 + 0U);
    *((int *)t15) = 6;
    t15 = (t13 + 4U);
    *((int *)t15) = 0;
    t15 = (t13 + 8U);
    *((int *)t15) = -1;
    t10 = (0 - 6);
    t36 = (t10 * -1);
    t36 = (t36 + 1);
    t15 = (t13 + 12U);
    *((unsigned int *)t15) = t36;
    t5 = xsi_base_array_concat(t5, t6, t7, (char)97, t3, t45, (char)99, (unsigned char)2, (char)101);
    t15 = (t0 + 2448U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    t36 = (7U + 1U);
    memcpy(t15, t5, t36);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (7 - 7);
    t8 = (t9 * -1);
    t27 = (1U * t8);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t29 = *((unsigned char *)t1);
    t3 = (t0 + 4192);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = t29;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB56;

LAB58:    xsi_set_current_line(103, ng0);
    t7 = (t0 + 4448);
    t13 = (t7 + 56U);
    t15 = *((char **)t13);
    t17 = (t15 + 56U);
    t19 = *((char **)t17);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB59;

LAB61:    t8 = 0;

LAB64:    if (t8 < 8U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t4 = (t2 + t8);
    t5 = (t1 + t8);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB62;

LAB66:    t8 = (t8 + 1);
    goto LAB64;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/DataPath_tb_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
