node{
		    stage('Clone Repository') {
        	git url: 'https://github.com/periferia-itgroup/periferiaBUS.git'
    		}
			stage('Build Maven'){
				 def MvnHome = tool name: '3.5.0', type: 'maven'
				sh "{MvnHome}/bin/mvn package"
			}
}