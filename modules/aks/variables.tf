# modules/aks/variables.tf

variable "name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region for the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default = 2
}

variable "node_vm_size" {
  description = "VM size for the nodes"
  type        = string
}

variable "environment" {
  description = "Environment tag for the AKS cluster"
  type        = string
}
