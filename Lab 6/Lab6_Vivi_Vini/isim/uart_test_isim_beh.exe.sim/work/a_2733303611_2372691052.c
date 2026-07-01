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
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
static const char *ng2 = "C:/Users/aula2.ELE/Desktop/Lab6_Vivi_Vini/Lab6_Vivi_Vini/uart_test.vhd";



void work_a_2733303611_2372691052_sub_2854511844_4163069965(char *t0, char *t1, char *t2, char *t3, unsigned int t4, unsigned int t5, char *t6)
{
    char t8[24];
    char t9[16];
    char t30[16];
    char t31[16];
    char t32[16];
    char t34[16];
    char t35[16];
    char t38[16];
    char t52[16];
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    int t33;
    char *t36;
    int t37;
    char *t39;
    int t40;
    char *t41;
    int t42;
    int t43;
    char *t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t8 + 4U);
    t14 = (t2 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t8 + 12U);
    *((char **)t15) = t9;
    t16 = (t0 + 6424);
    xsi_report(t16, 9U, (unsigned char)0);
    t13 = (0 + t4);
    t10 = (t6 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 2088U);
    t16 = *((char **)t10);
    t19 = *((int64 *)t16);
    xsi_process_wait(t1, t19);

LAB7:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 2480U);
    *((unsigned int *)t18) = 1U;
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB8;

LAB9:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB5:
LAB6:
LAB4:    t12 = 7;
    t29 = 0;

LAB10:    if (t12 >= t29)
        goto LAB11;

LAB13:    t10 = (t0 + 6440);
    xsi_report(t10, 8U, (unsigned char)0);
    t13 = (0 + t4);
    t10 = (t6 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 2088U);
    t16 = *((char **)t10);
    t19 = *((int64 *)t16);
    xsi_process_wait(t1, t19);

LAB24:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 2480U);
    *((unsigned int *)t18) = 1U;
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB25;

LAB26:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB22:
LAB23:
LAB21:    t10 = (t0 + 2088U);
    t16 = *((char **)t10);
    t19 = *((int64 *)t16);
    xsi_process_wait(t1, t19);

LAB30:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 2480U);
    *((unsigned int *)t18) = 1U;
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB31;

LAB32:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB28:
LAB29:
LAB27:
LAB1:    return;
LAB3:    *((char **)t11) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t10 = (t0 + 6433);
    t17 = ((STD_STANDARD) + 384);
    t18 = xsi_int_to_mem(t12);
    t20 = xsi_string_variable_get_image(t30, t17, t18);
    t22 = ((STD_STANDARD) + 1008);
    t23 = (t32 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 1;
    t24 = (t23 + 4U);
    *((int *)t24) = 4;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t33 = (4 - 1);
    t13 = (t33 * 1);
    t13 = (t13 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t13;
    t21 = xsi_base_array_concat(t21, t31, t22, (char)97, t10, t32, (char)97, t20, t30, (char)101);
    t24 = (t0 + 6437);
    t27 = ((STD_STANDARD) + 1008);
    t28 = (t35 + 0U);
    t36 = (t28 + 0U);
    *((int *)t36) = 1;
    t36 = (t28 + 4U);
    *((int *)t36) = 3;
    t36 = (t28 + 8U);
    *((int *)t36) = 1;
    t37 = (3 - 1);
    t13 = (t37 * 1);
    t13 = (t13 + 1);
    t36 = (t28 + 12U);
    *((unsigned int *)t36) = t13;
    t26 = xsi_base_array_concat(t26, t34, t27, (char)97, t21, t31, (char)97, t24, t35, (char)101);
    t36 = ((IEEE_P_2592010699) + 3224);
    t39 = (t9 + 0U);
    t40 = *((int *)t39);
    t41 = (t9 + 8U);
    t42 = *((int *)t41);
    t43 = (t12 - t40);
    t13 = (t43 * t42);
    t44 = (t9 + 4U);
    t45 = *((int *)t44);
    xsi_vhdl_check_range_of_index(t40, t45, t42, t12);
    t46 = (1U * t13);
    t47 = (0 + t46);
    t48 = (t2 + t47);
    t14 = *((unsigned char *)t48);
    t49 = xsi_char_to_mem(t14);
    t50 = xsi_string_variable_get_image(t38, t36, t49);
    t53 = ((STD_STANDARD) + 1008);
    t51 = xsi_base_array_concat(t51, t52, t53, (char)97, t26, t34, (char)97, t50, t38, (char)101);
    t54 = (t30 + 12U);
    t55 = *((unsigned int *)t54);
    t56 = (4U + t55);
    t57 = (t56 + 3U);
    t58 = (t38 + 12U);
    t59 = *((unsigned int *)t58);
    t60 = (t57 + t59);
    xsi_report(t51, t60, (unsigned char)0);
    t10 = (t9 + 0U);
    t33 = *((int *)t10);
    t16 = (t9 + 8U);
    t37 = *((int *)t16);
    t40 = (t12 - t33);
    t13 = (t40 * t37);
    t17 = (t9 + 4U);
    t42 = *((int *)t17);
    xsi_vhdl_check_range_of_index(t33, t42, t37, t12);
    t46 = (1U * t13);
    t47 = (0 + t46);
    t18 = (t2 + t47);
    t14 = *((unsigned char *)t18);
    t55 = (0 + t4);
    t20 = (t6 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t14;
    xsi_driver_first_trans_delta(t6, t55, 1, 0LL);
    t10 = (t0 + 2088U);
    t16 = *((char **)t10);
    t19 = *((int64 *)t16);
    xsi_process_wait(t1, t19);

LAB17:    t10 = (t1 + 88U);
    t17 = *((char **)t10);
    t18 = (t17 + 2480U);
    *((unsigned int *)t18) = 1U;
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB18;

LAB19:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t12 == t29)
        goto LAB13;

LAB20:    t33 = (t12 + -1);
    t12 = t33;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

LAB31:    xsi_saveStackAndSuspend(t1);
    goto LAB32;

}

static void work_a_2733303611_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng2);
    t2 = (t0 + 3784);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng2);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng2);
    t2 = (t0 + 3784);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng2);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2733303611_2372691052_p_1(char *t0)
{
    char t10[8];
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng2);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng2);
    t2 = (t0 + 3848);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng2);
    t2 = (t0 + 3912);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng2);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(85, ng2);
    t2 = (t0 + 6448);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng2);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(87, ng2);
    t2 = (t0 + 3128);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    memcpy(t10, t5, 8U);
    t4 = (t0 + 1312U);
    t6 = (t0 + 3848);
    work_a_2733303611_2372691052_sub_2854511844_4163069965(t0, t2, t10, t4, 0U, 0U, t6);
    xsi_set_current_line(89, ng2);
    t2 = (t0 + 6456);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng2);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(91, ng2);
    t2 = (t0 + 3128);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    memcpy(t11, t5, 8U);
    t4 = (t0 + 1312U);
    t6 = (t0 + 3848);
    work_a_2733303611_2372691052_sub_2854511844_4163069965(t0, t2, t11, t4, 0U, 0U, t6);
    xsi_set_current_line(93, ng2);
    t2 = (t0 + 6464);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng2);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(95, ng2);
    t2 = (t0 + 3128);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    memcpy(t12, t5, 8U);
    t4 = (t0 + 1312U);
    t6 = (t0 + 3848);
    work_a_2733303611_2372691052_sub_2854511844_4163069965(t0, t2, t12, t4, 0U, 0U, t6);
    xsi_set_current_line(97, ng2);
    t2 = (t0 + 6472);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(98, ng2);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(99, ng2);
    t2 = (t0 + 3128);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    memcpy(t13, t5, 8U);
    t4 = (t0 + 1312U);
    t6 = (t0 + 3848);
    work_a_2733303611_2372691052_sub_2854511844_4163069965(t0, t2, t13, t4, 0U, 0U, t6);
    xsi_set_current_line(101, ng2);
    t2 = (t0 + 6480);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(102, ng2);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(103, ng2);
    t2 = (t0 + 3128);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    memcpy(t14, t5, 8U);
    t4 = (t0 + 1312U);
    t6 = (t0 + 3848);
    work_a_2733303611_2372691052_sub_2854511844_4163069965(t0, t2, t14, t4, 0U, 0U, t6);
    xsi_set_current_line(105, ng2);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3128);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(106, ng2);
    if ((unsigned char)0 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(107, ng2);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t2 = (t0 + 6488);
    xsi_report(t2, 16U, (unsigned char)3);
    goto LAB37;

LAB38:    goto LAB2;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

}


extern void work_a_2733303611_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2733303611_2372691052_p_0,(void *)work_a_2733303611_2372691052_p_1};
	static char *se[] = {(void *)work_a_2733303611_2372691052_sub_2854511844_4163069965};
	xsi_register_didat("work_a_2733303611_2372691052", "isim/uart_test_isim_beh.exe.sim/work/a_2733303611_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
