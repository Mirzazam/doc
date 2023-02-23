pipeline {

        environment {
        DOCKERHUB_USERNAME = 'mirzazam'
        DOCKERHUB_PASS = credentials('dockerhub-credentials')
        DOCKER_IMAGE_NAME = 'jenkins'
        DOCKER_IMAGE_TAG = 'updated'
        DOCKERFILE_PATH = '/home/ubuntu/Dockerfile'
    }

    agent any
    stages {
        stage ('remove exsisting docker image'){
            steps {
                sh 'docker rmi mirzazam/jenkins:updated'

            }
        }
        stage('Build the docker image') {
            steps {
                
                    sh 'docker build -t mirzazam/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .'
                
            }
        }

        stage('Push the docker image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", '${DOCKERHUB_PASS}') {
                        dockerImage.push()
                    }
                }
            }
        }

        
    }
}




