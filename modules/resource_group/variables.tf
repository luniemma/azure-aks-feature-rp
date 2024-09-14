# modules/resource_group/variables.tf# modules/resource_group/variables.tf

variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy the resource group"
  type        = string
}