# modules/aks/outputs.tf

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}