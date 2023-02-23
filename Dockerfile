FROM jenkins/jenkins:lts-jdk11
RUN sudo apt update -y
RUN sudo apt install maven -y 
RUN /usr/local/bin/install-plugins.sh github
RUN /usr/local/bin/install-plugins.sh slack
