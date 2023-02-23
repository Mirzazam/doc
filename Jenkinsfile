pipeline {
    agent any
    

    environment {
        DOCKERHUB_USERNAME = credentials('dockerhub_username')
        DOCKERHUB_PASS = credentials('dockerhub-pass')
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'updated'
    }
    
    stages {
        stage('Build the docker image') {
            steps {
                script {
                    docker.build("mirzazam/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
                }
            }
        }

        stage('Push the docker image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", "dockerhub-credentials") {
                        dockerImage.push()
                    }
                }
            }
        }

        
    }
}




