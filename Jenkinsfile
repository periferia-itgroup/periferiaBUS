node{
	stage('SCM Checkout'){
		git 'https://github.com/periferia-itgroup/periferiaBUS'
	}
	stage('Compile-Package'){
		def mvnHome = tool name: '4.0.0', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
}