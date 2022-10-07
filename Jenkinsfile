pipeline {
 agent any
 stages {
  stage ('Build') {
   steps {
    sh 'printenv'
    sh 'sudo docker build -t vcojocari/jenkinsdemo:""$BUILD_ID"" .'
   }
  }
  stage('Pushing Docker Image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                        docker.image("vcojocari/jenkinsdemo:${TAG}").push()
                        docker.image("vcojocari/jenkinsdemo:${TAG}").push("latest")
                    }
                }
            }
        }
   }
  }

