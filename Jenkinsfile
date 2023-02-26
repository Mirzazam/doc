pipeline {

        environment {
        
        DOCKERHUB_USERNAME = 'mirzazam'
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'latest'
        DOCKER_TOKEN = credentials('dockertoken')
    }

    agent any
    stages {
        stage('Build the docker image') {
            steps {
                
                    sh 'docker build -t ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .'
                
            }
        }

        stage('Push the docker image') {
            steps {
                        sh 'docker login -u "${DOCKERHUB_USERNAME}" -p "${DOCKER_TOKEN}"'
                        sh 'docker push  "${DOCKERHUB_USERNAME}"/"${DOCKER_IMAGE_NAME}":"${DOCKER_IMAGE_TAG}"'
                    }
                
            
        }

        
    }
}




