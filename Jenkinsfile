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
	string( name: 'ID_JIRA', 
	    defaultValue: '', 
	    description: 'Identificador ID requerimiento Jira')
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
