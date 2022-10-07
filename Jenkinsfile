pipeline {
 agent any
 stages {
  stage ('Build') {
   steps {
    sh 'printenv'
    sh 'docker build -S -t vcojocari/jenkinsdemo:""$BUILD_ID"" .'
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

