pipeline {
    environment {
        registry = "dockeruser/repo"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build image nginx from Docker file') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_TIMESTAMP"
                }
            }
        }
        stage('Test process nginx and port 80 in conteainer') {
            steps {
                echo 'Testing ....'
                sh 'dgoss run -p 8081:80 dockeruser/repo:"$BUILD_TIMESTAMP"'
            }
        }
        stage('Push image to DockerHub') {
            steps{
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
    post {
        success {
            mail to: 'some@gmail.com',
                subject: "Successed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Everything is OK with ${env.BUILD_URL}"
        }
        failure {
            mail to: 'somed@gmail.com',
                subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Something is wrong with ${env.BUILD_URL}"
        }
    }
}