# Streaming-ibmcloud-workshop

## Prerequisite
* ibmcloud cli
* ibmcloud plugin container-service container-reigstry
* docker
* kubernetes
* helm
* terraform
* terraform ibm cloud plugin

### Play with kube
* docker, kubernete preinstalled
* use /env/install.sh to install the rest

## Login with your ibm cloud account
    ibmcloud login (--sso(according to your case))

## Provision your needed ibm cloud service with terraform (if possible)

[Reference for this part](terraform/README.md)

## Dockernize & deploy on kubernetes
[Reference for this part](https://github.com/nicolas2lee/kafka-event-stream-producer)

# Helm
https://www.ibm.com/cloud/garage/content/course/helm-fundamentals/10

https://cloud.ibm.com/docs/containers?topic=containers-helm