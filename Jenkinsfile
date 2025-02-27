pipeline {
    agent any  // Use the Jenkins host directly
    agent {
        docker {
            image 'docker:latest'  // Use the official Docker image
            args '-v /var/run/docker.sock:/var/run/docker.sock'  // Mount Docker socket for Docker-in-Docker
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-app:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker stop my-app || true'
                sh 'docker rm my-app || true'
                sh 'docker run -d --name my-app -p 3000:3000 my-app:latest'
                sh 'docker run my-app:latest'
            }
        }
    }
}
