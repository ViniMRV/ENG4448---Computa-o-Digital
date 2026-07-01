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
static const char *ng0 = "C:/Users/aula2.ELE/Desktop/vinivivi/lab07_vini_vivi/lcd_init.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1432143154_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(40, ng0);
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
LAB3:    t1 = (t0 + 4768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4880);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = xsi_get_transient_memory(20U);
    memset(t1, 0, 20U);
    t2 = t1;
    memset(t2, (unsigned char)2, 20U);
    t5 = (t0 + 4944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 20U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(43, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 5008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 8436U);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t6 = (t0 + 8452U);
    t4 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t5, t2, t7, t6);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8468U);
    t3 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, 20);
    if (t3 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4880);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(20U);
    memset(t1, 0, 20U);
    t2 = t1;
    memset(t2, (unsigned char)2, 20U);
    t5 = (t0 + 4944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 20U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 5008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);

LAB13:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(47, ng0);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8436U);
    t11 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t10, t9, t8, 1);
    t12 = (t10 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t15 = (20U != t14);
    if (t15 == 1)
        goto LAB10;

LAB11:    t16 = (t0 + 4944);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 20U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_size_not_matching(20U, t14, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(52, ng0);
    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t5 = (t0 + 8468U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t10, t6, t5, 1);
    t8 = (t10 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t4 = (5U != t14);
    if (t4 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 5008);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(5U, t14, 0);
    goto LAB16;

}

static void work_a_1432143154_3212880686_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    static char *nl0[] = {&&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16, &&LAB17, &&LAB18};

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 8542);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t8;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 0, 20);
    t8 = (20U != 20U);
    if (t8 == 1)
        goto LAB2;

LAB3:    t2 = (t0 + 5392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t1, 20U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t8);
    goto **((char **)t1);

LAB2:    xsi_size_not_matching(20U, 20U, 0);
    goto LAB3;

LAB4:    t1 = (t0 + 4784);
    *((int *)t1) = 1;

LAB1:    return;
LAB5:    xsi_set_current_line(75, ng0);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 750000, 20);
    t4 = (t9 + 12U);
    t10 = *((unsigned int *)t4);
    t10 = (t10 * 1U);
    t11 = (20U != t10);
    if (t11 == 1)
        goto LAB19;

LAB20:    t5 = (t0 + 5392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 20U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB6:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8546);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 205000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB21;

LAB22:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 8550);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(83, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 5000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB23;

LAB24:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB8:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 8554);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(87, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB25;

LAB26:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB9:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 8558);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(91, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB27;

LAB28:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB10:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 8562);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(97, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB29;

LAB30:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB11:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 8566);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(101, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB31;

LAB32:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB12:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 8570);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(106, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB33;

LAB34:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB13:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 8574);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(110, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB35;

LAB36:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB14:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 8578);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(115, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB37;

LAB38:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)10;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB15:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 8582);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(119, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB39;

LAB40:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)11;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB16:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 8586);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(124, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB41;

LAB42:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)12;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB17:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 8590);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(128, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 82000, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB43;

LAB44:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)13;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB18:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(133, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 0, 20);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (20U != t10);
    if (t8 == 1)
        goto LAB45;

LAB46:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 20U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)13;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB19:    xsi_size_not_matching(20U, t10, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(20U, t10, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(20U, t10, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(20U, t10, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(20U, t10, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(20U, t10, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(20U, t10, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(20U, t10, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(20U, t10, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(20U, t10, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(20U, t10, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(20U, t10, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(20U, t10, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(20U, t10, 0);
    goto LAB46;

}

static void work_a_1432143154_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(138, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5456);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4800);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1432143154_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1432143154_3212880686_p_0,(void *)work_a_1432143154_3212880686_p_1,(void *)work_a_1432143154_3212880686_p_2};
	xsi_register_didat("work_a_1432143154_3212880686", "isim/top_level_tb_isim_beh.exe.sim/work/a_1432143154_3212880686.didat");
	xsi_register_executes(pe);
}
