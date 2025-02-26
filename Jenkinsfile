pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-app:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker stop my-app || true'  // Stops if running, ignores errors
                sh 'docker rm my-app || true'    // Removes if exists, ignores errors
                sh 'docker run -d --name my-app -p 3000:3000 my-app:latest'
            }
        }
    }
}
