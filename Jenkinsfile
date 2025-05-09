pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/karthikk-77/pclone'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t karthik792/pinterest-clone:latest .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'your-dockerhub-credentials-id', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh """
                        echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                        docker push karthik792/pinterest-clone:latest
                    """
                }
            }
        }
    }
}
