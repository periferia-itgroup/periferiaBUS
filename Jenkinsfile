node{
	stage('SCM Checkout'){
		git 'https://github.com/periferia-itgroup/periferiaBUS'
	}
	stage('Compile-Package'){
		sh 'mvn package'
	}
}