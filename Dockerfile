FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli \
    --plugins \
    git \
    workflow-aggregator \
    blueocean \
    Nexus Artifact Uploader


EXPOSE 8080