pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub')  // Docker Hub credentials
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    sh 'git --version'  // Check if git is available
                    sh 'git config --list'  // Check if git configuration is set
                    checkout scm  // Checkout from the configured repository
                }
            }
        }
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
