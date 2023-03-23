def skipSynth = false
def skipPnR   = false 
def EmailText = "Build Status Info"

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
	    EMAIL_TO         = 'Kirolos.mikhael97@gmail.com'
        PROJECT_NAME     = 'fpga_flow'
	    
	}


	stages {
        stage('Create_Project') { 
            steps {
			  script {
			    if ( params.Tool == 'vivado') {
                   echo "##-----------------creating project-----------------##"
			       sh '''
			          vivado -mode tcl -source  ./scripts/create_project.tcl 
			       '''
			     } else {
			       echo " Creating project for Quartus "
			   }
              }
			}
        }
        
		// Stage two for checking the syntax 
		stage('Check Syntax') { 
            steps {
			  script {
                 echo "##------------------ Checking syntax --------------------##"
			     if ( params.Tool == 'vivado') {
				   sh '''
				      vivado -mode tcl -source ./scripts/check_syntax.tcl 
				   '''
				 } else {
				   echo " Checking Syntax for Quartus "
				 }
			  }
            }
        }


        stage('Synth') { 
            steps {
                 echo "Synth"
            }
        }
        
		stage('Simulation') {
		   steps {
		     script {
			 	echo "#------------------- Simulation ----------------##"

			 }
		   }
		}

		stage('PnR') {
		   steps {
		     script {
			 	echo "#------------------- Place and Route ----------------##"

			 }
		   }
		}
    }
    post {
        
        success {
            mail to: "${EMAIL_TO}",
            subject: "[CI]: Pipeline Completed -- ${env.JOB_NAME} - # ${env.BUILD_NUMBER}",
            body:  EmailText
        }   
    
        failure {
            mail to: "${EMAIL_TO}",
            subject: "[CI]: Pipeline Failed -- ${env.JOB_NAME} - # ${env.BUILD_NUMBER}",
            body:  EmailText 
        }
    }

}
