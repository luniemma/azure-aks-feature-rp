# terraform.tfvars

resource_group_name = "emma-mastermind-aks-sanbox-rg"
location            = "East US"
cluster_name        = "mastermind-aks"
dns_prefix          = "mastermind-aks"
node_count          = 2
node_vm_size        = "Standard_DS2_v2"
environment         = "Development"