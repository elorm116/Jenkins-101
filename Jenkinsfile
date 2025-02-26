pipeline {
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
                sh 'docker run my-app:latest'
            }
        }
    }
}
