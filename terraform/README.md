# Provision your needed ibm cloud service with terraform (if possible) & ibmcloud cli

1. Create api key for terraform
        
        ibmcloud iam api-key-create <api-key-name> -d 'ibmcloud api key for terraform' --file ibmcloud_apikey.json 
1. Create static tf variables

    provider.tf
    ```hcl-terraform    
        provider "ibm" {
          ibmcloud_api_key = "<api-key>"
        }
    ```
    Should replace the <api-key> by the value created in the previous step

[Example provider.tf](streaming/provider.tf)    
[Get started with terrafrom & ibm cloud](https://ibm-cloud.github.io/tf-ibm-docs/index.html#using-terraform-with-the-ibm-cloud-provider)
## Create kubernetes cluster with terraform
   main.tf
   ```hcl-terraform     
       resource "ibm_container_cluster" "streaming_kubernetes_cluster" {
         name            = "streaming"
         datacenter      = "dal10"
         machine_type    = "free"
         hardware        = "shared"
       }
   ```
[Example main.tf](streaming/main.tf)   
Init terraform env
    
    terraform init

Simulate wht you want to do, not execute in ibm cloud
    
    terraform plan

Execute what you define, and according to your payable or not resource, you may need to pay what you create, so be careful for what you do
    
    terraform apply
## Create namespace for private docker registry via ibmcloud cr plugin
Before run this command, make sure you have installed the plugin ibmcloud cr

    ibmcloud cr namespace-add <namespace>
## Ibm event stream
The free offer if only available in dallas region. No any possible way to create ibm event stream instance automatically. 
## Toolchain

# Terraform ibm cloud provider document
[Example & Doc](https://ibm-cloud.github.io/tf-ibm-docs/index.html)
