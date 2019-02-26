pipeline {
    agent any
    tools {
        maven 'Maven 3.5.0'
        jdk 'jdk1.8.0_111'
    }
    stages {
				    stage('Clone Repository') {
        		git url: 'https://github.com/periferia-itgroup/periferiaBUS.git'
    		}
			
        stage('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

    }
}