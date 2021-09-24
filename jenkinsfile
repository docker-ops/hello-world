pipeline {
agent any 
tools {maven "maven-3.8.2"}
stages {
stage('Cloning the Repository') {
steps {
url: 'https://github.com/docker-ops/hello-world.git'
}
}
stage('Code Quality Check via Sonarqube') {
steps {
 script {
 def scannerHome = tool 'sonarqube';
   withSonarQubeEnv("sonarqube-container") {
   sh "${tool("sonarqube")}/bin/sonar-scanner \
   mvn sonar:sonar \
  -Dsonar.projectKey=hello-world \
  -Dsonar.host.url=http://13.235.94.195:9000 \
  -Dsonar.login=2d9a97865111ec69ac142f3e995af4d6c5b1096d \
  -Dsonar.sources=/server/src/main/java/com/example \
   }
   }
   }
   }
   stage("Install Project Dependencies") {
   steps {
   maven(MavenInstallationName:'maven-3.8.2') {
   sh "mvn verify"
   }
   }
   }
   }
   }




