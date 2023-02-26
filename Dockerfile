FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli \
    --plugins \
    git \
    slack \
    publish-over-ssh \
    nexus-artifact-uploader \
    maven-integration 



EXPOSE 8080