pipeline {

        environment {
        DOCKERHUB_USERNAME = 'mirzazam'
        DOCKERHUB_PASS = credentials('credentials-id')
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
                        sh 'docker login -u "${DOCKERHUB_USERNAME}" -p "N3aa3h773h!" docker.io'
                        sh 'docker push mirzazam/jenkins:updated'
                    }
                }
            }
        }

        
    }
}




