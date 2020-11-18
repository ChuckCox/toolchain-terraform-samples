resource "random_string" "random" {
  length = 4
  min_lower = 4
}


module "ibm-kubernetes-toolchain" {
  source            = "github.com/triceam/ibm-kubernetes-toolchain-module"
  ibmcloud_api_key  = var.ibmcloud_api_key
  region            = "us-south"
  toolchain_name    = "terraform-toolchain-${random_string.random.result}"
  application_repo  = "https://github.com/ChuckCox/nodejs-express-app"
  resource_group    = var.resource_group
  cluster_name      = var.cluster_name
  cluster_namespace = var.cluster_namespace
  container_registry_namespace = var.container_registry_namespace
}
