pipeline {

        environment {
        
        DOCKERHUB_PASSWORD = credentials('credentials-id')
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'updated'
        DOCKERFILE_PATH = '/home/ubuntu/Dockerfile'
    }

    agent any
    stages {
        stage('Build the docker image') {
            steps {
                
                    sh 'docker build -t mirzazam/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .'
                
            }
        }

        stage('Push the docker image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", 'credentials-id') {
                        sh 'echo ${DOCKERHUB_PASSWORD_PSW} | -u ${DOCKERHUB_PASSWORD_USR} --password-stdin'
                        sh 'docker push mirzazam/jenkins:updated'
                    }
                }
            }
        }

        
    }
}




