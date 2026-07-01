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
static const char *ng0 = "C:/Users/aula2.ELE/Desktop/vinivivi/lab07_vini_vivi/lcd_write.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3763542327_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8320U);
    t4 = (t0 + 2472U);
    t7 = *((char **)t4);
    t4 = (t0 + 8336U);
    t2 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t3, t1, t7, t4);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 8352U);
    t2 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t3, t1, 20);
    if (t2 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 5072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t3 = t1;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4944);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(45, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t3 = t1;
    memset(t3, (unsigned char)2, 5U);
    t4 = (t0 + 5008);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t4);

LAB14:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 4880);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(31, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t3 = t1;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4944);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(32, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t3 = t1;
    memset(t3, (unsigned char)2, 5U);
    t4 = (t0 + 5008);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(35, ng0);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8320U);
    t10 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t9, t8, 1);
    t12 = (t11 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t5 = (16U != t14);
    if (t5 == 1)
        goto LAB11;

LAB12:    t15 = (t0 + 4944);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 5072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_size_not_matching(16U, t14, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 2632U);
    t7 = *((char **)t4);
    t4 = (t0 + 8352U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t7, t4, 1);
    t9 = (t11 + 12U);
    t13 = *((unsigned int *)t9);
    t14 = (1U * t13);
    t5 = (5U != t14);
    if (t5 == 1)
        goto LAB16;

LAB17:    t10 = (t0 + 5008);
    t12 = (t10 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 5072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_size_not_matching(5U, t14, 0);
    goto LAB17;

}

static void work_a_3763542327_3212880686_p_1(char *t0)
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
    static char *nl0[] = {&&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8418);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
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
    xsi_set_current_line(58, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 0, 16);
    t8 = (16U != 16U);
    if (t8 == 1)
        goto LAB2;

LAB3:    t2 = (t0 + 5392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t1, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t8);
    goto **((char **)t1);

LAB2:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB3;

LAB4:    t1 = (t0 + 4784);
    *((int *)t1) = 1;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50000, 16);
    t4 = (t9 + 12U);
    t10 = *((unsigned int *)t4);
    t10 = (t10 * 1U);
    t11 = (16U != t10);
    if (t11 == 1)
        goto LAB13;

LAB14:    t5 = (t0 + 5392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB6:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 8422);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(68, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB15;

LAB16:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB7:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 8426);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(72, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2500, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB17;

LAB18:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB8:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 8430);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(78, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB19;

LAB20:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB9:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 8434);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(82, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2500, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB21;

LAB22:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB10:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 8438);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(88, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 50, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB23;

LAB24:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB11:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 8442);
    t3 = (t0 + 5200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(92, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2500, 16);
    t2 = (t9 + 12U);
    t10 = *((unsigned int *)t2);
    t10 = (t10 * 1U);
    t8 = (16U != t10);
    if (t8 == 1)
        goto LAB25;

LAB26:    t3 = (t0 + 5392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB4;

LAB12:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB4;

LAB13:    xsi_size_not_matching(16U, t10, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(16U, t10, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(16U, t10, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t10, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(16U, t10, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(16U, t10, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(16U, t10, 0);
    goto LAB26;

}

static void work_a_3763542327_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(102, ng0);

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


extern void work_a_3763542327_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3763542327_3212880686_p_0,(void *)work_a_3763542327_3212880686_p_1,(void *)work_a_3763542327_3212880686_p_2};
	xsi_register_didat("work_a_3763542327_3212880686", "isim/top_level_tb_isim_beh.exe.sim/work/a_3763542327_3212880686.didat");
	xsi_register_executes(pe);
}
