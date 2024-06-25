pipeline {
    agent {
        docker {
            image 'docker:stable-dind'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh '''
                    apk add --no-cache docker-compose
                    docker-compose build
                    '''
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
