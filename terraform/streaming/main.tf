resource "ibm_container_cluster" "streaming_kubernetes_cluster" {
  name            = "streaming"
  datacenter      = "dal10"
  machine_type    = "free"
  hardware        = "shared"

}