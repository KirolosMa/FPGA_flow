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

# 3. 
update_compile_order 
