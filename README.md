# Ibmcloud-workshop

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

Or you can run below command to install

    curl https://raw.githubusercontent.com/nicolas2lee/streaming-ibmcloud-workshop/master/env/play-with-kube/install.sh | sh

## Login with your ibm cloud account
    ibmcloud login (--sso(according to your case))

## Provision your needed ibm cloud service with terraform (if possible)

[Using terraform](terraform/README.md)

## Dockernize & deploy on kubernetes
* [Spring boot web flux example](https://github.com/nicolas2lee/streaming-springboot-webflux)
* [Akka stream kafka producer with IBM Event stream](https://github.com/nicolas2lee/kafka-event-stream-producer)
