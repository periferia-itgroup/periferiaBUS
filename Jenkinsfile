pipeline{
    agent any
	tools{
		maven 'Maven 3.3.9'
		jdk 'jdk8'
	}
	
	stage('SCM Checkout'){
		git 'https://github.com/periferia-itgroup/periferiaBUS'
	}
	
	        stage('Initialize') { 
			 sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
        }
		
		        stage ('Build') {
            
                echo 'This is a minimal pipeline.'
            
}
}