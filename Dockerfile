FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli \
    --plugins \
    git \
    workflow-aggregator \
    blueocean

EXPOSE 8080