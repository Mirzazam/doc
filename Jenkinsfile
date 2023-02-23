pipeline {

        environment {
        DOCKERHUB_USERNAME = 'mirzazam'
        DOCKERHUB_PASS = 'N3aa3h773h!'
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'updated'
    }

    agent any
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




