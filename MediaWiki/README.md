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

