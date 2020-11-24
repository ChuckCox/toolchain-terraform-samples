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

variable "cluster_namespace" {
  type        = string
  description = "Kubernetes namespace to deploy into"
}

variable "container_registry_namespace" {
  type        = string
  description = "IBM Container Registry namespace to save image into"
}

variable "language" {
  type        = string
  description = "Language of app to be deployed with the toolchain. Available options: 'nodejs-express-app', 'java-liberty-app', 'java-spring-app'"
  default = "nodejs-express-app"
}
