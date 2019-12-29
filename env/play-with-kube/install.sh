#bin/bash
#========== install ibmcloud standalone cli ==========
#========== ref doc: https://cloud.ibm.com/docs/cli?topic=cloud-cli-install-ibmcloud-cli&locale=en-us
curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

#========== install ibmcloud plugin container-service, container-registry, dev, event-streams ==========
ibmcloud plugin install container-service
ibmcloud plugin install container-registry
ibmcloud plugin install dev
ibmcloud plugin install event-streams

#========== workaround for installing analytics engine into docker container ==========
#========== https://stackoverflow.com/questions/34729748/installed-go-binary-not-found-in-path-on-alpine-linux-docker ==========
mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
ibmcloud plugin install analytics-engine

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