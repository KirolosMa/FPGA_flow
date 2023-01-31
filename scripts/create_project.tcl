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


# 3.Update orded  
update_compile_order -fileset sources_1
