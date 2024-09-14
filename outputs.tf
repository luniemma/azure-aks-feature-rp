# outputs.tf

output "resource_group_name" {
  value = module.resource_group.name
}

output "kubernetes_cluster_name" {
  value = module.aks.cluster_name
}
