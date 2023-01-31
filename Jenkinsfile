pipeline {
    agent any 
    
    parameters {
	  choice choices: ['vivado', 'quartus'], description: 'Please choose ur vendor from this list', name: 'Tool'
	  }

	environment {
	    DISABLE_AUTH = 'true'
	    DB_ENGINE    = 'sqlite'
	    LM_LICENSE_FILE = '/zin/tools/master.licenses/mentor/license.dat'
	    PATH = "/wv/syntools/pnr/xilinx/vivado/2019.2/ixl-x64/Vivado/2019.2/bin/:${env.PATH}"
	}


	stages {
        stage('Create_Project') { 
            steps {
			  if (params.Tool == 'vivado') {
                 echo "##-----------------creating project-----------------##"
			     sh '''
			        vivado -mode tcl -source  ./scripts/create_project.tcl 
			     '''
			   } else {
			     echo " Creating project for Quartus "
			   }
            }
        }
        stage('Check Syntax') { 
            steps {
               echo "syntax"                
            }
        }
        stage('Synth') { 
            steps {
                 echo "Synth"
            }
        }
    }
}
