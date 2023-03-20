########################################################
##  This script run synthis on vivado project         ##
########################################################

open_proj project_testing_flow/project_testing_flow.xpr

synth_design -top artix_top -generic g_epoch=$epoch 
write_checkpoint -force $outputDir/post_synth
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_power -file $outputDir/post_synth_power.rpt
report_clock_interaction -delay_type min_max -file $outputDir/post_synth_clock_interaction.rpt
report_high_fanout_nets -fanout_greater_than 200 -max_nets 50 -file $outputDir/post_synth_high_fanout_nets.rpt

# #Create the debug core
source new_batch_insert_ila.tcl
batch_insert_ila 8192 $outputDir
#launch_runs synth_1
#wait_on_run synth_1
#open_run synth_1 -name netlist_1

# Generate a timing and power reports and write to disk
# Can create custom reports as required
#report_timing_summary -delay_type max -report_unconstrained -check_timing_verbose \
-max_paths 10 -input_pins -file syn_timing.rpt
#report_power -file syn_power.rpt
#
### Here we can add a script to automatically detect if there is hold/setup violation and this can be
