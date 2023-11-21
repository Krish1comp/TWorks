This is code deployment for Mediawiki which uses Docker file downloaded from 
https://github.com/wikimedia/mediawiki-docker/blob/fdf347f62615dad789d0e703fc2f6d628c43d4e1/1.40/apache/Dockerfile


Creating a flovour of Redhat mediawiki requires Redhat to be registered. Hence using available image

**File Layout**
MediaWiki/
|-- Infra/
|   
|     |-- main.tf
|     |-- variables.tf
|     |-- provider.tf
|     |-- terraform.tfvars
|     |-- azure-pipeline.yml
|-- Kubernetes/
|   |-- deployment.yml
|   |-- service.yml
|   |-- Dockerfile
|   |-- azure-pipeline.yml
|-- README.md
|-- ...


Prerequisite:

No backend configured here as RG is created on the go.
Need to create RG and storage account to have backend. This is code is ideal for one time run

1. Azure subscription with Sub ID, Client Secret, Client ID and Tenant ID

   Work Flow.

   Deploy Infra pipeline to deploy RG, AKS, ACR

2. Create AKS and ACR service connection in devops

    Run the Kubernetes pipeline which build the container image and push it to acr and then the application is deployed in AKS cluster
