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

        stage('login to docker hosted repo') {
            steps {
                script {
                    docker.withRegistry( '', registryCredentials) {
                        sh 'docker push ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ' 
                    }
                }
                    
                    } 
        }
        stage('logout from docker'){
            steps{
                sh 'docker logout'
            }
        }


    }

}




