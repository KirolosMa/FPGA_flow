########################################
## This procedure to check for syntax ##
## errors in the project and return   ##
## the error message if any           ##
########################################


open_proj project_testing_flow/project_testing_flow.xpr 
 
set msg [check_syntax  -fileset sources_1 -return_string]
set ret_val 0
  
if {$msg != ""} {
  set ret_val 1
}
	 
puts $msg
exit $ret_val
