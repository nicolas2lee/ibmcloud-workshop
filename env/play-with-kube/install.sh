#bin/bash
#========== install ibmcloud standalone cli ==========
#========== ref doc: https://cloud.ibm.com/docs/cli?topic=cloud-cli-install-ibmcloud-cli&locale=en-us
curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

#========== install ibmcloud plugin container-service, container-registry ==========
ibmcloud plugin install container-service
ibmcloud plugin install container-registry

#========== install helm ==========
#========== ref doc: https://helm.sh/docs/intro/install/ ==========
yum install -y openssl which
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh


#========== install terraform ==========
#========== ref doc: https://developer.ibm.com/recipes/tutorials/infrastructure-automation-with-terraform-on-ibm-cloud-iaas/ ==========
yum install -y wget unzip
wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
unzip terraform_0.12.17_linux_amd64.zip
mv terraform /usr/local/bin/terraform

#========== install terraform ibm cloud provider==========
#========== ref doc: https://github.com/IBM-Cloud/terraform-provider-ibm/releases ==========
wget https://github.com/IBM-Cloud/terraform-provider-ibm/releases/download/v1.0.0/linux_amd64.zip
mkdir -p $HOME/.terraform.d/plugins
unzip linux_amd64.zip
mv terraform-provider-ibm_v1.0.0 $HOME/.terraform.d/plugins/terraform-provider-ibm_v1.0.0