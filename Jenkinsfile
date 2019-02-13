pipeline{
    agent any
     tools{
        maven 'maven'
     }
    stages{
    	stage('Build'){
    		steps {
                echo 'Running build automation'
                //sh 'mvn -B -DskipTests clean package'
                sh 'mvn clean package'
                archiveArtifacts artifacts: 'target/spring-boot-sample-tomcat-jsp*.war'
    		}
    	}
        stage('SonarQube Code Analysis') {
            steps {
                //sh "mvn sonar:sonar -Dsonar.host.url=http://54.190.168.185:30002"
                sh "mvn sonar:sonar -Dsonar.host.url=http://54.190.168.185:30025"
              }
        }
        stage('Test and Publish Results') {
           steps {
                junit 'target/surefire-reports/*.xml'
              }
        }
        stage('Build Docker Image'){
    		steps{
    			script{
    				app = docker.build("mahi4847/monitoring-app")
    				app.inside{
    				//sh 'echo $(curl http://54.121.95.266:30001)'
    				}
    			}
    		}
    	}
    	stage('Push Docker Image'){
    		steps{
    			script{
    				docker.withRegistry('https://registry.hub.docker.com', 'git-docker-login'){
    					app.push("${env.BUILD_NUMBER}")
    					app.push("latest")
    				}
    			}
    		}
    	}
        /**stage('Stop App in kubernetes') {
            steps {
                //https://github.com/jenkinsci/kubernetes-cli-plugin/blob/master/README.md
                //https://github.com/jenkinsci/kubernetes-cd-plugin
                 withKubeConfig([credentialsId: '<credential-id>',
                    caCertificate: '<ca-certificate>',
                    serverUrl: '<api-server-address>',
                    contextName: '<context-name>',
                    clusterName: '<cluster-name>'
                    ]) {
                    //sh 'kubectl get pods --namespace=avengers'
                    sh 'kubectl delete -f /root/avengers/monitoring-app/deploy.yaml --namespace=avengers'
                    sh 'kubectl delete -f /root/avengers/monitoring-app/service.yaml --namespace=avengers'
                 }
              }
        }**/
        stage('Deploy kubernetes'){
          steps {
              kubernetesDeploy(
                kubeconfigId: 'kubeconfig',
                configs: 'application.yaml',
                enableConfigSubstitution: true)
                //echo 'App url: http://54.188.213.9:31008/'
          }
        }
    }
}
