# provision your needed ibm cloud service with terraform (is possible)

1. create api key for terraform
        
        ibmcloud iam api-key-create <api-key-name> -d 'ibmcloud api key for terraform' --file ibmcloud_apikey.json 
1. create static tf variables

    provider.tf
    ```hcl-terraform    
        provider "ibm" {
          ibmcloud_api_key = "<api-key>"
        }
    ```
[Terrafrom ibm cloud doc ref](https://ibm-cloud.github.io/tf-ibm-docs/index.html#using-terraform-with-the-ibm-cloud-provider)
## kubernetes cluster
## namespace for docker registry
## toolchain