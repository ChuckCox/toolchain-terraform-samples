variable "ibmcloud_api_key" {
  type        = string
  description = "The IAM API Key for IBM Cloud access"
}

variable "resource_group" {
  type        = string
  description = "Resource group name where the toolchain should be created"
}

variable "cluster_name" {
  type        = string
  description = "Name of Kubernetes Cluster to deploy into"
}

variable "resource_group_id" {
   default = ""
}

variable "machine_type" {
   default = "b2c.4x16"
}
variable "hardware" {
   default = "shared"
}

variable "datacenter" {
  default = "dal10"
}

variable "default_pool_size" {
  default = "1"
}

variable "private_vlan_id" {
  default = ""
}

variable "public_vlan_id" {
  default = ""
}

variable kube_version {
  #default = "3.11.104_openshift"
  default = "1.17"
}






variable "cluster_namespace" {
  type        = string
  description = "Kubernetes namespace to deploy into"
}

variable "container_registry_namespace" {
  type        = string
  description = "IBM Container Registry namespace to save image into"
}