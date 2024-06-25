pipeline {
    agent { docker { image 'php:8.3.8-alpine3.20' } }
    stages {
        stage('build') {
            steps {
                sh 'php --version'
            }
        }
    }
}