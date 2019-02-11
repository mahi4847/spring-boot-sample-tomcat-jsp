  pipeline {
    agent any
    tools {
            maven 'maven'
      }

	stages{
		
    stage('Deploy Docker Image'){
      
                
            steps {
                script {
      echo "Docker Image Tag Name: ${dockerImageTag}"

      sh "docker login -u mahi4847 -p Mahi@4847 ${dockerRepoUrl}"
      sh "docker tag ${dockerImageName} ${dockerImageTag}"
      sh "docker push ${dockerImageTag}"
		}
    }
    }
	}
}
