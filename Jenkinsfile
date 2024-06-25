pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        checkout scm
        sh 'docker build -t tasks-integracion-continua-web .'
        sh 'docker-compose up -d'
      }
    }
  }
}
