node("Windows Execution"){
		    stage('Clone Repository GitHub') {
        	git url: 'https://github.com/404Solution/TestingSonar.git'
    		echo "Repository Cloned Success"
			}
	stage('Build Maven'){
	    withMaven(...) {
 
      bat "mvn clean install"
 
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
	}
}






