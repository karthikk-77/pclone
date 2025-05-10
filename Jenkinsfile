pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t karthik792/pinterest-clone:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([ credentialsId: "${DOCKER_HUB_CREDENTIALS}", url: "" ]) {
                    sh 'docker push karthik792/pinterest-clone:latest'
                }
            }
        }
    }
}

