################################################
## This tcl file is for creating a new project##
## using vivado                               ##
## Author: Kirolos Magdy                      ##
################################################ 

# 1. Create a project with a name 
create_project -force project_testing_flow ./project_testing_flow 

# 2. Add files 
add_files {./src/}

import_files -force
# A place holder for a script that will detect
# Library for each hdl file. 
# This script will return dict with name of Library
# And the associated hdl file given a directory of 
# source files 

et TIME_start [clock clicks -milliseconds]

#
# STEP#0: define output directory area and set part
#
set outputDir ../output             
file mkdir $outputDir
#source directory
set prj_src_dir ../src
#set_part xc7k70tfbg484-2
set_part xc7a200tffg1156-1
#
# STEP#1: setup design sources and constraints
#
read_vhdl -library ces_util_lib [ glob $prj_src_dir/hdl/ces_util/*.vhd ]         
read_vhdl -library ces_io_lib [ glob $prj_src_dir/hdl/ces_io/*.vhd ]         
read_vhdl -library ces_hw_lib [ glob $prj_src_dir/hdl/ces_hw/*.vhd ] 
read_vhdl -library eres_lib $prj_src_dir/hdl/cassini_drive_lvds_revert.vhd
read_vhdl -library eres_lib $prj_src_dir/hdl/cassini_status_collector.vhd
read_vhdl -library eres_lib $prj_src_dir/hdl/aurora_generic_frame_gen.vhd
read_vhdl -library eres_lib $prj_src_dir/hdl/aurora_8b10b_frame_receive.vhd

# Aurora LINE 0
read_ip $prj_src_dir/ipcores/aurora_8b10b_113/aurora_8b10b_113.xci
# Aurora LINE 1
read_ip $prj_src_dir/ipcores/aurora_8b10b_113_1/aurora_8b10b_113_1.xci
# Aurora LINE 2
read_ip $prj_src_dir/ipcores/aurora_8b10b_113_2/aurora_8b10b_113_2.xci
# Aurora LINE 3
read_ip $prj_src_dir/ipcores/aurora_8b10b_113_3/aurora_8b10b_113_3.xci
# READ XADC
read_ip $prj_src_dir/ipcores/xadc_wiz/xadc_wiz.xci
# 3.Update orded  

update_compile_order -fileset sources_1
