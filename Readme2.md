# Azure AKS Terraform Configuration

This project contains Terraform configurations to create an Azure Resource Group and an Azure Kubernetes Service (AKS) cluster with 2 nodes. It follows best practices by using modules, variables, and outputs.

## Project Structure

```
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── modules
    ├── resource_group
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── aks
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (version 0.14.9 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- An Azure account with necessary permissions to create resources

## Configuration

1. Clone this repository:
   ```
   git clone https://github.com/your-username/azure-aks-terraform.git
   cd azure-aks-terraform
   ```

2. Log in to Azure:
   ```
   az login
   ```

3. Create a `terraform.tfvars` file in the root directory and set your specific variable values:
   ```hcl
   resource_group_name = "my-rg"
   location            = "East US"
   cluster_name        = "my-aks-cluster"
   dns_prefix          = "myakscluster"
   node_count          = 2
   ```

## Usage

1. Initialize Terraform:
   ```
   terraform init
   ```

2. Preview the changes:
   ```
   terraform plan
   ```

3. Apply the configuration:
   ```
   terraform apply
   ```

4. When you're done, you can destroy the resources:
   ```
   terraform destroy
   ```

## Modules

### Resource Group

This module creates an Azure Resource Group.

### AKS

This module creates an Azure Kubernetes Service (AKS) cluster with the specified number of nodes.

## Customization

You can customize this configuration by:
- Modifying the variables in `terraform.tfvars`
- Adding more variables in `variables.tf`
- Adjusting the AKS settings in `modules/aks/main.tf`
- Adding additional Azure resources as needed

## Outputs

After applying the Terraform configuration, you'll see outputs for:
- Resource Group name
- AKS Cluster name

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or find any bugs.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.