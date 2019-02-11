node {
    // reference to maven
    // ** NOTE: This 'maven-3.5.2' Maven tool must be configured in the Jenkins Global Configuration.   
    def mvnHome = tool 'maven3.6.0'

	stages{
		
    stage('Deploy Docker Image'){
      
      // deploy docker image to nexus

      echo "Docker Image Tag Name: ${dockerImageTag}"

      sh "docker login -u mahi4847 -p Mahi@4847 ${dockerRepoUrl}"
      sh "docker tag ${dockerImageName} ${dockerImageTag}"
      sh "docker push ${dockerImageTag}"
    }
	}
}
