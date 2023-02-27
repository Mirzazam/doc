pipeline {

        environment {
        
        DOCKERHUB_USERNAME= 'mirzazam'
        DOCKER_IMAGE_NAME= 'jenkins'
        DOCKER_IMAGE_TAG= 'latest'
        registryCredentials= 'dockertoken'
    }

    agent any
    stages {
        stage('Build the docker image') {
            steps {
                sh 'docker build -t ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .'
            }
        }

        stage('login to docker hub'){
            steps{
                script {
                    docker.withRegistry(DOCKERHUB_USERNAME , registryCredentials ){
                        
                    }
                }
            }
        }

        stage('push the image to hub'){
            steps{
                sh 'docker push ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}'
            }
        }


    }

}




