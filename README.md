# ci-cd-pipelines
ci-cd-pipelines Continuous Integration/Continuous Deployment pipeline for Kubernetes using a tool like GitHub Actions, Jenkins or ArgoCD

Prepare a basic Docker image for the application, e.g. a simple Nginx server. Kubernetes deployment manifests. Deploy on Azure (e.g. EKS or Lightsail). Share YAML manifests, CI/CD configurations, and a sample workflow on GitHub.

Project Goal: Create a simple Docker image (Nginx). Deploy the application to a Kubernetes cluster. Set up a CI/CD pipeline (using GitHub Actions) for automatic deployment when code changes occur.

Environment preparation

Docker Desktop Minikube (for local Kubernetes cluster). Kubectl (for Kubernetes cluster management). Git (for code versioning). GitHub account (for hosting your project).

The original plan was to deploy the project on Azure AKS, but due to technical reasons (lack of quotas), the project is now being developed locally with Docker Desktop.

Maybe Azure will be in another branch. We will see...


