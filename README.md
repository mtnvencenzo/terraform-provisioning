# Terraform Provisioning

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=flat&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=flat&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)

## 📋 Overview

This repository serves as a foundational Terraform project with elevated Azure permissions to provision and manage Azure resource groups and service principals for multiple downstream projects. Think of it as a "God-level" Terraform project that grants other projects specific resource groups and service principals, enabling those projects to provision their own resources through Terraform with appropriate permissions and isolation.

## Purpose

The primary objectives of this repository are:

- **Resource Group Provisioning**: Create isolated Azure resource groups for different projects and environments
- **Service Principal Management**: Provision service principals with specific permissions for each project
- **Access Control**: Grant downstream projects the necessary permissions to manage their own infrastructure
- **Infrastructure Foundation**: Establish the base Azure infrastructure that other projects depend on

## 🏗️ Architecture

```
terraform-provisioning (This Repository - God Access)
├── Provisions Resource Groups
├── Creates Service Principals
├── Assigns Permissions
└── Enables downstream projects:
    ├── Project A (Uses assigned Resource Group + Service Principal)
    ├── Project B (Uses assigned Resource Group + Service Principal)
    └── Project N (Uses assigned Resource Group + Service Principal)
```

## 📁 Project Structure

```
├── terraform/
│   ├── main.tf                    # Main Terraform configuration
│   ├── variables.tf               # Global variables
│   ├── environment_vars/          # Environment-specific variables
│   │   └── prd.tfvars            # Production environment variables
│   └── projects/                  # Project-specific configurations
│       └── latest/                # Latest project infrastructure
│           ├── providers.tf       # Provider configurations
│           ├── variables.tf       # Project-specific variables
│           ├── acr.tf            # Azure Container Registry
│           ├── appr-latest-project.tf  # Service principal and app registration
│           ├── resource-group-*.tf     # Resource group definitions
│           └── terraform-storage-*.tf  # Terraform state storage containers
├── terraform.md                  # Terraform documentation
├── README.md                     # This file
└── LICENSE                       # License information
```

## 🚀 Current Projects

### Latest Project

The "latest" project currently provisions:

#### Resource Groups
- **Cocktails (Global)**: `rg-vec-glo-cocktails-001` - Global cocktails application resources
- **Cocktails (Production)**: `rg-vec-prd-cocktails-001` - Production cocktails application resources
- **Network (Global)**: `rg-vec-glo-network-001` - Global networking resources
- **Shared (Global)**: `rg-vec-glo-shared-001` - Shared global resources
- **NuGet (Global)**: `rg-vec-glo-nuget-001` - NuGet package management resources
- **Storybook (Production)**: `rg-vec-prd-storybook-001` - Storybook deployment resources

#### Service Principal
- **Application Registration**: `appr-vec-devops-project-latest`
- **Permissions**: Contributor access to Terraform storage account and assigned resource groups

#### Additional Resources
- Azure Container Registry (ACR)
- Terraform state storage containers for each component

## ✅ Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) configured with appropriate permissions
- Azure subscription with Owner or Contributor access
- Azure DevOps organization (for service principal management)

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/mtnvencenzo/terraform-provisioning.git
cd terraform-provisioning
```

### 2. Configure Azure Authentication

```bash
# Login to Azure
az login

# Set your subscription
az account set --subscription "your-subscription-id"
```

### 3. Initialize Terraform

```bash
cd terraform
terraform init
```

### 4. Configure Variables

Review and update the variables in `variables.tf` and `environment_vars/prd.tfvars` as needed:

```terraform
# Example variable values
global_environment = "glo"    # Global environment identifier
location           = "East US" # Azure region
sub               = "vec"     # Subscription short identifier
sequence          = "001"     # Resource sequence number
```

### 5. Plan and Apply

```bash
# Review the planned changes
terraform plan -var-file="environment_vars/prd.tfvars"

# Apply the configuration
terraform apply -var-file="environment_vars/prd.tfvars"
```

## 💡 Usage Examples

### Adding a New Project

To add a new project (e.g., "api-project"):

1. Create a new module directory: `terraform/projects/api-project/`
2. Define the required resource groups and service principals
3. Add the module reference to `main.tf`:

```terraform
module "api_project" {
  source             = "./projects/api-project"
  global_environment = var.global_environment
  location          = var.location
  sub               = var.sub
  sequence          = var.sequence

  providers = {
    azurerm     = azurerm,
    azuredevops = azuredevops
  }
}
```

## 🔒 Security Considerations

- Service principals are created with minimum required permissions
- Resource groups provide isolation between projects
- Terraform state is stored securely in Azure Storage
- All resources include lifecycle rules to prevent accidental deletion


## 🌐 Community & Support

- 🤝 **Contributing Guide** – review expectations and workflow in [CONTRIBUTING.md](./.github/CONTRIBUTING.md)  
- 🤗 **Code of Conduct** – help us keep the community welcoming by reading [CODE_OF_CONDUCT.md](./.github/CODE_OF_CONDUCT.md)  
- 🆘 **Support Guide** – find help channels in [SUPPORT.md](./.github/SUPPORT.md)  
- 🔒 **Security Policy** – report vulnerabilities responsibly via [SECURITY.md](./.github/SECURITY.md) 


## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.