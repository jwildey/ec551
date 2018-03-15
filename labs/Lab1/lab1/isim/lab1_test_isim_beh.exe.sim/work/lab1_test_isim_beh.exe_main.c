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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001410331388_3598138731_init();
    work_m_00000000001254427795_1452727384_init();
    work_m_00000000002060288389_1621107508_init();
    work_m_00000000002007289414_3146176434_init();
    work_m_00000000004112456271_2979166180_init();
    work_m_00000000001809596161_2596410368_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001809596161_2596410368");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
