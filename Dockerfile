FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN apt-get update && apt-get install -y docker.io


