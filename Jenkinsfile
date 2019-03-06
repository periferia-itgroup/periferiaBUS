node{
		    stage('Clone Repository GitHub') {
        	git url: 'https://github.com/404Solution/TestingSonar.git'
    		echo "Repository Cloned Success"
			}
	stage('Build Maven'){
	    
      bat "mvn clean install"
 
	}
	
	stage('Sonarqube') {
    environment {
        scannerHome = tool 'SonarQubeScanner'
    	}
    }
	
}
