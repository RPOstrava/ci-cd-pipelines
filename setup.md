Introduction

This project automates the process of building a Docker image, pushing it to Docker Hub, and deploying it to a Kubernetes cluster. The entire process ensures that any changes in the code go through automated testing, building, and deployment without manual intervention.

Requirements
Docker
Docker Hub account
Kubernetes cluster
GitHub Actions (for CI/CD pipeline)
Jenkins (optional for more complex CI/CD pipelines)


Step-by-step Guide


1. Clone the Project
First, download this project from GitHub:


git clone https://github.com/username/ci-cd-pipelines.git
cd ci-cd-pipelines


2. Build Docker Image
To build the Docker image, use the following command:


docker build -t myapp .


3. Run Docker Container
To run the application in a Docker container, use this command:


docker run -d -p 8000:8000 myapp
Verify that the application is running at http://localhost:8000.

4. Jenkins Setup
If you're using Jenkins for CI/CD, follow these steps:

Start the Jenkins container:

docker run -d -p 8080:8080 -v /var/jenkins_home jenkins/jenkins:lts
Open Jenkins at http://localhost:8080.

Log in using the following password:

cat /var/jenkins_home/secrets/initialAdminPassword

Create a new project and add steps for building and deploying.

5. CI/CD Pipeline Using GitHub Actions
This project uses GitHub Actions to automate the process of building, pushing, and deploying the application.

The configuration for the CI/CD pipeline is located in .github/workflows/ci-cd.yml.
The pipeline performs the following steps:
Build the Docker image.
Push the Docker image to Docker Hub.
Deploy to the Kubernetes cluster.


6. Deploy to Kubernetes
If you have a Kubernetes cluster, you can deploy the application using the deployment.yaml and service.yaml manifests:


kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

Verify that the application is running in the Kubernetes cluster using:


kubectl get pods
kubectl get services


Conclusion
The project is now fully deployed and automated through a CI/CD pipeline. Any changes in the code will go through automated testing, building, and deployment to the production environment.