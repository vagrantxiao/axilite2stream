# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name triangle_2d_x0_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_x0_V \
    op interface \
    ports { triangle_2d_x0_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name triangle_2d_y0_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_y0_V \
    op interface \
    ports { triangle_2d_y0_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name triangle_2d_x1_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_x1_V \
    op interface \
    ports { triangle_2d_x1_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name triangle_2d_y1_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_y1_V \
    op interface \
    ports { triangle_2d_y1_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name triangle_2d_x2_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_x2_V \
    op interface \
    ports { triangle_2d_x2_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name triangle_2d_y2_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_y2_V \
    op interface \
    ports { triangle_2d_y2_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name triangle_2d_z_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_triangle_2d_z_V \
    op interface \
    ports { triangle_2d_z_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name Output_1_V_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Output_1_V_V \
    op interface \
    ports { Output_1_V_V { O 32 vector } Output_1_V_V_ap_vld { O 1 bit } Output_1_V_V_ap_ack { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


