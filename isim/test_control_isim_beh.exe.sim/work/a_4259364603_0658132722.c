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
static const char *ng0 = "E:/CELT_2.1/control.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_4259364603_0658132722_p_0(char *t0)
{
    char t8[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4376);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1672U);
    t9 = *((char **)t4);
    t4 = (t0 + 6652U);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t8, t9, t4, (unsigned char)3);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (32U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 4504);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 6652U);
    t1 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t4, t2, 50000);
    if (t1 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6684U);
    t5 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t8, t4, t2, (unsigned char)3);
    t9 = (t8 + 12U);
    t12 = *((unsigned int *)t9);
    t13 = (1U * t12);
    t1 = (32U != t13);
    if (t1 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 4632);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 32U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6684U);
    t1 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t4, t2, 25000000);
    if (t1 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t13, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 1832U);
    t9 = *((char **)t5);
    t5 = (t0 + 6668U);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t8, t9, t5, (unsigned char)3);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t3 = (2U != t13);
    if (t3 == 1)
        goto LAB13;

LAB14:    t15 = (t0 + 4568);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(37, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 4504);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB11;

LAB13:    xsi_size_not_matching(2U, t13, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t13, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(42, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t3 = *((unsigned char *)t9);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 4696);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t6;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(43, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 4632);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB18;

}

static void work_a_4259364603_0658132722_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4760);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4392);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4259364603_0658132722_p_2(char *t0)
{
    char t5[16];
    char t21[16];
    char t36[16];
    char t51[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t37;
    char *t38;
    int t39;
    unsigned char t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t52;
    char *t53;
    int t54;
    unsigned char t55;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6668U);
    t3 = (t0 + 6776);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t17 = (t0 + 6668U);
    t19 = (t0 + 6782);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (1 - 0);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t25 != 0)
        goto LAB5;

LAB6:    t32 = (t0 + 1832U);
    t33 = *((char **)t32);
    t32 = (t0 + 6668U);
    t34 = (t0 + 6788);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 1;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (1 - 0);
    t9 = (t39 * 1);
    t9 = (t9 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t9;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t33, t32, t34, t36);
    if (t40 != 0)
        goto LAB7;

LAB8:    t47 = (t0 + 1832U);
    t48 = *((char **)t47);
    t47 = (t0 + 6668U);
    t49 = (t0 + 6794);
    t52 = (t51 + 0U);
    t53 = (t52 + 0U);
    *((int *)t53) = 0;
    t53 = (t52 + 4U);
    *((int *)t53) = 1;
    t53 = (t52 + 8U);
    *((int *)t53) = 1;
    t54 = (1 - 0);
    t9 = (t54 * 1);
    t9 = (t9 + 1);
    t53 = (t52 + 12U);
    *((unsigned int *)t53) = t9;
    t55 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t48, t47, t49, t51);
    if (t55 != 0)
        goto LAB9;

LAB10:
LAB2:    t62 = (t0 + 4408);
    *((int *)t62) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 6778);
    t12 = (t0 + 4824);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t23 = (t0 + 6784);
    t27 = (t0 + 4824);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t23, 4U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB7:    t38 = (t0 + 6790);
    t42 = (t0 + 4824);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t38, 4U);
    xsi_driver_first_trans_fast_port(t42);
    goto LAB2;

LAB9:    t53 = (t0 + 6796);
    t57 = (t0 + 4824);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    memcpy(t61, t53, 4U);
    xsi_driver_first_trans_fast_port(t57);
    goto LAB2;

}

static void work_a_4259364603_0658132722_p_3(char *t0)
{
    char t5[16];
    char t21[16];
    char t34[16];
    char t47[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t48;
    char *t49;
    int t50;
    unsigned char t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6668U);
    t3 = (t0 + 6800);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t17 = (t0 + 6668U);
    t19 = (t0 + 6802);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (1 - 0);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t25 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 1832U);
    t31 = *((char **)t30);
    t30 = (t0 + 6668U);
    t32 = (t0 + 6804);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t9 = (t37 * 1);
    t9 = (t9 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t9;
    t38 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t38 != 0)
        goto LAB7;

LAB8:    t43 = (t0 + 1832U);
    t44 = *((char **)t43);
    t43 = (t0 + 6668U);
    t45 = (t0 + 6806);
    t48 = (t47 + 0U);
    t49 = (t48 + 0U);
    *((int *)t49) = 0;
    t49 = (t48 + 4U);
    *((int *)t49) = 1;
    t49 = (t48 + 8U);
    *((int *)t49) = 1;
    t50 = (1 - 0);
    t9 = (t50 * 1);
    t9 = (t9 + 1);
    t49 = (t48 + 12U);
    *((unsigned int *)t49) = t9;
    t51 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t44, t43, t45, t47);
    if (t51 != 0)
        goto LAB9;

LAB10:
LAB2:    t56 = (t0 + 4424);
    *((int *)t56) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1992U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t7 = (t0 + 4888);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t23 = (t0 + 4888);
    t26 = (t23 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB2;

LAB7:    t36 = (t0 + 4888);
    t39 = (t36 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB9:    t49 = (t0 + 4888);
    t52 = (t49 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    *((unsigned char *)t55) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t49);
    goto LAB2;

}


extern void work_a_4259364603_0658132722_init()
{
	static char *pe[] = {(void *)work_a_4259364603_0658132722_p_0,(void *)work_a_4259364603_0658132722_p_1,(void *)work_a_4259364603_0658132722_p_2,(void *)work_a_4259364603_0658132722_p_3};
	xsi_register_didat("work_a_4259364603_0658132722", "isim/test_control_isim_beh.exe.sim/work/a_4259364603_0658132722.didat");
	xsi_register_executes(pe);
}
