# Použijeme oficiální obraz pro Jenkins
FROM jenkins/jenkins:lts

# Instalace Dockeru v Jenkinsu
USER root
RUN apt-get update && apt-get install -y docker.io
USER jenkins
