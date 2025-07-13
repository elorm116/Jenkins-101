
pipeline {
    agent {
        docker { image 'node:16-alpine' }
        label 'docker'

    }
    stages {
        stage('Test') {
        steps {
            sh 'node --version'
        }
        }
        stage('Build') {
            steps {
                sh 'echo "Building the application..."'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the application..."'
    }
}
        }

}

// This Jenkinsfile defines a pipeline that uses a Docker agent with Node.js 16 on Alpine Linux.
// It includes three stages: Test, Build, and Deploy.
// The Test stage checks the Node.js version, the Build stage simulates building the application,
// and the Deploy stage simulates deploying the application.
// The pipeline is designed to run on a Jenkins server with Docker support enabled.
// The 'docker' label ensures that the pipeline runs on a node with Docker installed.
// The 'node:16-alpine' image provides a lightweight Node.js environment for the pipeline
// to execute the defined steps.
