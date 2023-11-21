# MediaWiki Project

This repository contains configurations and files for deploying MediaWiki.

This is code deployment for Mediawiki which uses Docker file downloaded from 
https://github.com/wikimedia/mediawiki-docker/blob/fdf347f62615dad789d0e703fc2f6d628c43d4e1/1.40/apache/Dockerfile


Creating a flovour of Redhat mediawiki requires Redhat to be registered. Hence using available image

**File Layout**


## Infra Folder

The `Infra` folder contains Terraform configurations and other infrastructure-related files.

- **main.tf**: Main Terraform configuration file.
- **variables.tf**: Terraform variable definitions.
- **provider.tf**: Terraform provider configurations.
- **terraform.tfvars**: Terraform variable values (customize as needed).
- **azure-pipeline.yml**: Azure Pipelines configuration for CI/CD.


## Kubernetes Folder

The `Kubernetes` folder contains Kubernetes configurations for deploying MediaWiki.

- **deployment.yml**: Kubernetes Deployment configuration.
- **service.yml**: Kubernetes Service configuration.
- **Dockerfile**: Dockerfile for building the MediaWiki Docker image.
- **azure-pipeline.yml**: Azure Pipelines configuration for CI/CD.

## README.md

The main documentation file providing information about the project, its structure, and usage instructions.

Feel free to customize and expand this structure based on your project's specific needs.


**Prerequisite:**

No backend configured here as RG is created on the go.
Need to create RG and storage account to have backend. This is code is ideal for one time run

1. Azure subscription with Sub ID, Client Secret, Client ID and Tenant ID

 ##  Work Flow.

1.   Deploy Infra pipeline to deploy RG, AKS, ACR

2. Create AKS and ACR service connection in devops

    Run the Kubernetes pipeline which build the container image and push it to acr and then the application is deployed in AKS cluster
