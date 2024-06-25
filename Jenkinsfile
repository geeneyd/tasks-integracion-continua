pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Construir la imagen de Docker
                    sh 'docker-compose build'
                }
            }
        }
        stage('Start Containers') {
            steps {
                script {
                    // Iniciar los contenedores
                    sh 'docker-compose up -d'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Esperar a que los contenedores estén listos
                    sleep 20
                    
                    // Verificar si el servicio web está en funcionamiento
                    sh 'curl -f http://localhost:8080 || exit 1'
                }
            }
        }
        stage('Stop Containers') {
            steps {
                script {
                    // Detener y eliminar los contenedores
                    sh 'docker-compose down'
                }
            }
        }
    }
}
