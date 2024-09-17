# to-do-app-gcp-cloudrun
GCP Cloud Run Python App with Kubernetes
This project demonstrates how to deploy a Python application to Google Cloud Run using Kubernetes.
Prerequisites

Google Cloud Platform account
gcloud CLI installed and configured
kubectl installed
Docker installed
Python 3.7+

Project Structure
Copy/
├── app/
│   ├── main.py
│   └── requirements.txt
├── Dockerfile
├── kubernetes/
│   └── deployment.yaml
└── README.md
Setup

Clone this repository:
Copygit clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name

Create a new project in Google Cloud Console or select an existing one.
Enable the following APIs:

Cloud Run API
Container Registry API
Kubernetes Engine API


Set up authentication:
Copygcloud auth login
gcloud config set project YOUR_PROJECT_ID


Building and Pushing the Docker Image

Build the Docker image:
Copydocker build -t gcr.io/YOUR_PROJECT_ID/your-app-name .

Push the image to Google Container Registry:
Copydocker push gcr.io/YOUR_PROJECT_ID/your-app-name


Deploying to Cloud Run with Kubernetes

Create a GKE cluster (if not already created):
Copygcloud container clusters create your-cluster-name --zone us-central1-a

Get credentials for your cluster:
Copygcloud container clusters get-credentials your-cluster-name --zone us-central1-a

Apply the Kubernetes deployment:
Copykubectl apply -f kubernetes/deployment.yaml

Get the external IP of your service:
Copykubectl get services


Cleaning Up
To avoid incurring charges, delete your resources when you're done:

Delete the GKE cluster:
Copygcloud container clusters delete your-cluster-name --zone us-central1-a

Delete the Container Registry image:
Copygcloud container images delete gcr.io/YOUR_PROJECT_ID/your-app-name


Contributing
Contributions are welcome! Please feel free to submit a Pull Request.
