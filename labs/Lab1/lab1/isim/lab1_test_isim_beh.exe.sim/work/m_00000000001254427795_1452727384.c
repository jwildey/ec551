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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/School/EC551/Lab1/lab1/seg_display.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {192U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {249U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {164U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {176U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {153U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {146U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {130U, 0U};
static int ng15[] = {7, 0};
static unsigned int ng16[] = {248U, 0U};
static int ng17[] = {8, 0};
static unsigned int ng18[] = {128U, 0U};
static int ng19[] = {9, 0};
static unsigned int ng20[] = {144U, 0U};
static int ng21[] = {10, 0};
static unsigned int ng22[] = {136U, 0U};
static int ng23[] = {11, 0};
static unsigned int ng24[] = {0U, 0U};
static int ng25[] = {12, 0};
static unsigned int ng26[] = {198U, 0U};
static int ng27[] = {13, 0};
static unsigned int ng28[] = {64U, 0U};
static int ng29[] = {14, 0};
static unsigned int ng30[] = {134U, 0U};
static int ng31[] = {15, 0};
static unsigned int ng32[] = {142U, 0U};
static int ng33[] = {100, 0};
static unsigned int ng34[] = {1U, 0U};
static unsigned int ng35[] = {7U, 0U};
static unsigned int ng36[] = {11U, 0U};
static unsigned int ng37[] = {13U, 0U};
static unsigned int ng38[] = {14U, 0U};



static int sp_display_digit(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t5 = (t1 + 2840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);

LAB6:    t8 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t4 = ((char*)((ng3)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t4 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t4 = ((char*)((ng7)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t4 = ((char*)((ng9)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t4 = ((char*)((ng11)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:    t4 = ((char*)((ng13)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB19;

LAB20:    t4 = ((char*)((ng15)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB21;

LAB22:    t4 = ((char*)((ng17)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB23;

LAB24:    t4 = ((char*)((ng19)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB25;

LAB26:    t4 = ((char*)((ng21)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB27;

LAB28:    t4 = ((char*)((ng23)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB29;

LAB30:    t4 = ((char*)((ng25)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB31;

LAB32:    t4 = ((char*)((ng27)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB33;

LAB34:    t4 = ((char*)((ng29)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB35;

LAB36:    t4 = ((char*)((ng31)));
    t9 = xsi_vlog_unsigned_case_compare(t7, 4, t4, 32);
    if (t9 == 1)
        goto LAB37;

LAB38:
LAB39:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(68, ng0);
    t10 = ((char*)((ng2)));
    t11 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t11, t10, 0, 0, 8, 0LL);
    goto LAB39;

LAB9:    xsi_set_current_line(69, ng0);
    t5 = ((char*)((ng4)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB11:    xsi_set_current_line(70, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB13:    xsi_set_current_line(71, ng0);
    t5 = ((char*)((ng8)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB15:    xsi_set_current_line(72, ng0);
    t5 = ((char*)((ng10)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB17:    xsi_set_current_line(73, ng0);
    t5 = ((char*)((ng12)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB19:    xsi_set_current_line(74, ng0);
    t5 = ((char*)((ng14)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB21:    xsi_set_current_line(75, ng0);
    t5 = ((char*)((ng16)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB23:    xsi_set_current_line(76, ng0);
    t5 = ((char*)((ng18)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB25:    xsi_set_current_line(77, ng0);
    t5 = ((char*)((ng20)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB27:    xsi_set_current_line(78, ng0);
    t5 = ((char*)((ng22)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB29:    xsi_set_current_line(79, ng0);
    t5 = ((char*)((ng24)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB31:    xsi_set_current_line(80, ng0);
    t5 = ((char*)((ng26)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB33:    xsi_set_current_line(81, ng0);
    t5 = ((char*)((ng28)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB35:    xsi_set_current_line(82, ng0);
    t5 = ((char*)((ng30)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

LAB37:    xsi_set_current_line(83, ng0);
    t5 = ((char*)((ng32)));
    t6 = (t1 + 2040);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB39;

}

static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2360);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 7);
    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2520);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2680);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);

LAB1:    return;
}

static void Always_38_1(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4576);
    *((int *)t2) = 1;
    t3 = (t0 + 4040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 2360);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng33)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);

LAB18:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng34)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 7, t4, 7, t5, 7);
    t6 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 7, 0LL);

LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t30 = ((char*)((ng1)));
    t31 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 7, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t4 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t5) == 0)
        goto LAB14;

LAB16:    t6 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t6) = 1;

LAB17:    t7 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 1, 0LL);
    goto LAB12;

LAB14:    *((unsigned int *)t8) = 1;
    goto LAB17;

}

static void Always_47_2(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 4256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4592);
    *((int *)t2) = 1;
    t3 = (t0 + 4288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 2680);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng34)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 2, t6, 2, t7, 2);
    t9 = (t0 + 2680);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB9;

LAB6:    if (t19 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t22 = (t8 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t8);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB23;

LAB20:    if (t19 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t8) = 1;

LAB23:    t22 = (t8 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t8);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB37;

LAB34:    if (t19 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t8) = 1;

LAB37:    t22 = (t8 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t8);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(58, ng0);

LAB48:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng38)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t5 = (t0 + 4064);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t9 = (t0 + 2840);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);

LAB51:    t22 = (t0 + 4160);
    t28 = *((char **)t22);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t28);

LAB53:    if (t35 != 0)
        goto LAB54;

LAB49:    t28 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB50:    t36 = (t0 + 4160);
    t37 = *((char **)t36);
    t36 = (t0 + 848);
    t38 = (t0 + 4064);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);

LAB40:
LAB26:
LAB12:    goto LAB2;

LAB8:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);

LAB13:    xsi_set_current_line(50, ng0);
    t28 = ((char*)((ng35)));
    t29 = (t0 + 2200);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 12);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 12);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t5 = (t0 + 4064);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t9 = (t0 + 2840);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);

LAB16:    t22 = (t0 + 4160);
    t28 = *((char **)t22);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t28);

LAB18:    if (t35 != 0)
        goto LAB19;

LAB14:    t28 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB15:    t36 = (t0 + 4160);
    t37 = *((char **)t36);
    t36 = (t0 + 848);
    t38 = (t0 + 4064);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    goto LAB12;

LAB17:;
LAB19:    t22 = (t0 + 4256U);
    *((char **)t22) = &&LAB16;
    goto LAB1;

LAB22:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(52, ng0);

LAB27:    xsi_set_current_line(53, ng0);
    t28 = ((char*)((ng36)));
    t29 = (t0 + 2200);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 8);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 8);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t5 = (t0 + 4064);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t9 = (t0 + 2840);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);

LAB30:    t22 = (t0 + 4160);
    t28 = *((char **)t22);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t28);

LAB32:    if (t35 != 0)
        goto LAB33;

LAB28:    t28 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB29:    t36 = (t0 + 4160);
    t37 = *((char **)t36);
    t36 = (t0 + 848);
    t38 = (t0 + 4064);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    goto LAB26;

LAB31:;
LAB33:    t22 = (t0 + 4256U);
    *((char **)t22) = &&LAB30;
    goto LAB1;

LAB36:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(55, ng0);

LAB41:    xsi_set_current_line(56, ng0);
    t28 = ((char*)((ng37)));
    t29 = (t0 + 2200);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 4);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 4);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t5 = (t0 + 4064);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t9 = (t0 + 2840);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);

LAB44:    t22 = (t0 + 4160);
    t28 = *((char **)t22);
    t29 = (t28 + 80U);
    t30 = *((char **)t29);
    t31 = (t30 + 272U);
    t32 = *((char **)t31);
    t33 = (t32 + 0U);
    t34 = *((char **)t33);
    t35 = ((int  (*)(char *, char *))t34)(t0, t28);

LAB46:    if (t35 != 0)
        goto LAB47;

LAB42:    t28 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t28);

LAB43:    t36 = (t0 + 4160);
    t37 = *((char **)t36);
    t36 = (t0 + 848);
    t38 = (t0 + 4064);
    t39 = 0;
    xsi_delete_subprogram_invocation(t36, t37, t0, t38, t39);
    goto LAB40;

LAB45:;
LAB47:    t22 = (t0 + 4256U);
    *((char **)t22) = &&LAB44;
    goto LAB1;

LAB52:;
LAB54:    t22 = (t0 + 4256U);
    *((char **)t22) = &&LAB51;
    goto LAB1;

}


extern void work_m_00000000001254427795_1452727384_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Always_38_1,(void *)Always_47_2};
	static char *se[] = {(void *)sp_display_digit};
	xsi_register_didat("work_m_00000000001254427795_1452727384", "isim/lab1_test_isim_beh.exe.sim/work/m_00000000001254427795_1452727384.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
