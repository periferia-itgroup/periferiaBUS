pipeline {
	agent any

	parameters {   
	string( name: 'REQUIREMENT', 
	    defaultValue: '0', 
	    description: 'ID del requerimiento de la forma RQXXXXX')
	string( name: 'COMPONENT',
	    defaultValue: '', 
	    description: 'Por defecto en vacío para que procese todos los componentes, especificar DB, DP, BAR o MQ')
	string( name: 'USER', 
	    defaultValue: '', 
	    description: 'Correo electronico')
	}
	
	environment{
		gitCommit='noCommit'
		gitMessage='noMessage'
		action='noAction'
		requerimiento='noRQ'
		emailTo='noEmail'
	}
	
	stages{
		stage('CLEAN WORKSPACE'){
			steps{
				step([$class: 'WsCleanup'])
			}
		}
		stage('1. Allocate workspace') { 
			steps{
				echo "Valor inicial del requerimiento: "+params["REQUIREMENT"]
				script{
					if (params["REQUIREMENT"] != "0") {
						def extWorkspace = exwsAllocate 'diskpool1'
						node (''){
							def step=1;
							exws(extWorkspace) {
								
								action = params["ACTION"];
								if ((params["COMPONENT"] == '')) {
									action = ""
								}

								step++ 
							}
						}
					}		
				}
			}
		}
		stage('2. Checkout') {
			steps{
				script{
					checkout changelog: false, poll: false,
						scm: [$class : 'GitSCM', branches: [[name: '*/master']],
							  extensions : [[$class: 'SparseCheckoutPaths',
											 sparseCheckoutPaths: [[path: 'MODEL']]]],
							  userRemoteConfigs: [[credentialsId: 'GitHub token ugithub', url: 'https://github.com/periferia-itgroup/periferiaBUS.git']]]
										
					gitCommit = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
					gitMessage = sh(returnStdout: true, script: 'git log -1 | grep RQ || true').trim()
					gitRequirement=sh(returnStdout: true, script: "git log -1 | grep RQ | sed 's/:.*//'|| true").trim()
					gitEmail=sh(returnStdout: true, script: "git log -1 | grep RQ | cut -d ':' -f2 || true").trim()
					
					step([$class: 'WsCleanup'])
					
					if (params["REQUIREMENT"] != "0") {//si no se especifica se emplea el del commit
						requerimiento=params["REQUIREMENT"]
						emailTo=params["USER"]
					}else{
						requerimiento=gitRequirement
						emailTo=gitEmail
					}
					
					shell('pwd')
					checkout changelog: false, poll: false,
							scm: [$class : 'GitSCM', branches: [[name: '*/master']],
								  extensions : [[$class: 'SparseCheckoutPaths',
												 sparseCheckoutPaths: [[path: 'MODEL'], [path: requerimiento]]]],
								  userRemoteConfigs: [[credentialsId: 'GitHub token ugithub', url: 'https://github.com/periferia-itgroup/periferiaBUS.git']]]

					echo 'Mensaje de commit: ' + gitMessage
					echo 'Requerimiento: ' + gitRequirement
					echo 'Email: ' + gitEmail
					
					sh('cp MODEL/pom.xml pom.xml')
						
				}
			}
		}

	}

post {
        success {
            script {
                try {
			emailext(
				    to: emailTo,
				    subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' REQ:" + requerimiento,
				    body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} Version: ${gitCommit}.${env.BUILD_NUMBER}':</p>
				    <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>"""
			    )
                } catch (e) {
			emailext(
				    to: emailTo,
				    subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' REQ:" + requerimiento,
				    body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} Version: ${gitCommit}.${env.BUILD_NUMBER}':</p>
				    <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>"""
			    )
                }
            }

        }
        failure {
            script {
                try {
		    emailext(
			    to: emailTo,
			    subject: "FAILED: Job '${env.JOB_NAME} [" + rev + "]' REQ:" + requerimiento,
			    body: """<p>FAILED: Job '${env.JOB_NAME} Version: ${gitCommit}.${env.BUILD_NUMBER}':</p>
			    <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>""",
			    attachLog: true
		    )
                } catch (e) {
		    emailext(
			    to: emailTo,
			    subject: "FAILED: Job '${env.JOB_NAME} [" + rev + "]' REQ:" + requerimiento,
			    body: """<p>FAILED: Job '${env.JOB_NAME} Version: ${gitCommit}.${env.BUILD_NUMBER}':</p>
			    <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>""",
			    attachLog: true
		    )
                }
            }
        } 
    }
}
