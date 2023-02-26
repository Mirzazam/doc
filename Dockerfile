FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli \
    --plugins \
    git \
    slack \
    nexus-artifact-uploader \
    maven-integration:3.20

EXPOSE 8080