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
[Spring boot web flux example](https://github.com/nicolas2lee/streaming-springboot-webflux)
[Reference for this part](https://github.com/nicolas2lee/kafka-event-stream-producer)
