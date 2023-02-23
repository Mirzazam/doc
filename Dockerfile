FROM jenkins/jenkins:lts
RUN jenkins-plugin-cli \
    --plugins \
    git \
    workflow-aggregator \
    blueocean 
USER root
RUN apt install maven -y
USER jenkins

EXPOSE 8080