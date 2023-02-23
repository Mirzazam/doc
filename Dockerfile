FROM jenkins/jenkins:lts-jdk11
RUN apt update -y && apt-get install maven -y
RUN /usr/local/bin/install-plugins.sh github
RUN /usr/local/bin/install-plugins.sh slack
