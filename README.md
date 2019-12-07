# streaming-ibmcloud-workshop

## prerequisite
* ibmcloud cli
* ibmcloud plugin container-service container-reigstry
* docker
* kubernetes
* helm
* terraform
* terraform ibm cloud plugin

### play with kube
* docker, kubernete preinstalled
* use /env/install.sh to install the rest

## login with your ibm cloud account
    ibmcloud login (--sso(according to your case))

## provision your needed ibm cloud service with terraform (is possible)

1. create api key for terraform
        
        ibmcloud iam api-key-create <api-key-name> -d 'ibmcloud api key for terraform' --file ibmcloud_apikey.json 
1. create static tf variables

    provider.tf
    ```hcl-terraform    
        provider "ibm" {
          ibmcloud_api_key = "<api-key>"
        }
    ```
### kubernetes cluster
### namespace for docker registry
### toolchain