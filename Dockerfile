FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli \
    --plugins \
    git \
    workflow-aggregator \
    blueocean 
USER root
RUN sudo apt-get update && apt-get install maven -y
USER jenkins

EXPOSE 8080