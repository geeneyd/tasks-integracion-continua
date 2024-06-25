pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                dockerBuild('tasks-integracion-continua-web')
                sh 'docker-compose up -d'
                sh 'docker exec -it web phpunit src/tests'
            }
        }
    }
}