variable "location" {
  type    = string
  default = "westus2"
}

variable "resource_group_name" {
  type    = string
  default = "aks-ghr-rg"
}

variable "aks_cluster_name" {
  type    = string
  default = "aks-ghr"
}
