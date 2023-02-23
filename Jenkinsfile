pipeline {

        environment {
        
        
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'updated'
        DOCKERFILE_PATH = '/home/ubuntu/Dockerfile'
        DOCKER_TOKEN = credentials('dockertoken')
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
                        sh 'docker login -u mirzazam -p "${DOCKER_TOKEN}"'
                        sh 'docker push mirzazam/jenkins:updated'
                    }
                
            
        }

        
    }
}




