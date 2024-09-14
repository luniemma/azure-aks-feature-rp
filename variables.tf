variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "mastermind-aks-rg"
}
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "mastermind-aks"
}
variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "mastermind-aks"
}
variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 2
}
variable "node_vm_size" {
  description = "VM size for the nodes"
  type        = string
  default     = "Standard_DS2_v2"
}
variable "environment" {
  description = "Environment tag for the resources"
  type        = string
  default     = "Development"
}