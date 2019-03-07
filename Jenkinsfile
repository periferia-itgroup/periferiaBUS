node{
		    stage('Clone Repository GitHub') {
        	git url: 'https://github.com/404Solution/TestingSonar.git'
    		echo "Repository Cloned Success"
			}
	stage('Build Maven'){
	    
      bat "mvn clean install"
 
	}
	
	stage('Scanner Sonarqube') {
    environment {
        scannerHome = tool 'SonarQubeScanner'
    	}
    }
	    stage('Build Sonar Sacanner'){
		    
	    
        withSonarQubeEnv('Sonarqube') {
            sh "${scannerHome}/SONAR-COMPLETE/sonar-scanning-examples/sonar-scanner"
	}
    }
}
