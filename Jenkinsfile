pipeline {
 agent any
 stages {
  stage ('Build') {
   steps {
    sh 'printenv'
    sh 'sudo docker build -t vcojocari/jenkinsdemo:""BUILD_ID"" .'
   }
  }
  stage ('Publish') {
   steps {
    withDockerRegistry([credentialsId: "docker-hub", url: ""]) {
     sh 'sudo docker push vcojocari/jenkinsdemo:""BUILD_ID""'
      }
     }
    }
   }
  }

