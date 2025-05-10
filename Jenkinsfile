pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub')  // Reference the correct credentials
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t karthik792/pinterest-clone:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([ credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/' ]) {
                    sh 'docker push karthik792/pinterest-clone:latest'
                }
            }
        }
    }
}
