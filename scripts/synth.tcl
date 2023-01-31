########################################################
##  This script run synthis on vivado project         ##
########################################################

open_proj project_testing_flow/project_testing_flow.xpr

launch_runs synth_1
wait_on_run synth_1
open_run synth_1 -name netlist_1

# Generate a timing and power reports and write to disk
# Can create custom reports as required
report_timing_summary -delay_type max -report_unconstrained -check_timing_verbose \
-max_paths 10 -input_pins -file syn_timing.rpt
report_power -file syn_power.rpt
#
### Here we can add a script to automatically detect if there is hold/setup violation and this can be
