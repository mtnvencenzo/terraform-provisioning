# �️ Contributing to Terraform Provisioning

Thank you for your interest in contributing to the Terraform Provisioning project! We welcome contributions that help improve our Azure infrastructure foundation and resource management.

## 📋 Table of Contents

- [Getting Started](#-getting-started)
- [Development Setup](#-development-setup)
- [Contributing Process](#-contributing-process)
- [Code Standards](#-code-standards)
- [Testing](#-testing)
- [Getting Help](#-getting-help)

## 🚀 Getting Started

### 🧰 Prerequisites

Before you begin, ensure you have the following installed:
- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Git
- Azure subscription with appropriate permissions

### 🗂️ Project Structure

```
├── terraform/              # Main Terraform configurations
│   ├── main.tf             # Root configuration
│   ├── variables.tf        # Global variables
│   ├── environment_vars/   # Environment-specific variables
│   └── projects/           # Project-specific modules
│       └── latest/         # Latest project infrastructure
├── .github/                # GitHub workflows and templates
├── terraform.md            # Terraform documentation
└── README.md               # Project overview
```

## 💻 Development Setup

1. **Fork and Clone the Repository**
   ```bash
   git clone https://github.com/mtnvencenzo/terraform-provisioning.git
   cd terraform-provisioning
   ```

2. **Configure Azure Authentication**
   ```bash
   # Login to Azure
   az login
   
   # Set your subscription
   az account set --subscription "your-subscription-id"
   ```

3. **Initialize Terraform**
   ```bash
   cd terraform
   terraform init
   ```

4. **Validate Configuration**
   ```bash
   terraform validate
   terraform fmt -check
   ```

## 🔄 Contributing Process

### 1. 📝 Before You Start

- **Check for existing issues** to avoid duplicate work
- **Create or comment on an issue** to discuss your proposed changes
- **Wait for approval** from maintainers before starting work (required for this repository)

### 2. 🛠️ Making Changes

1. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

2. **Make your changes** following our [code standards](#-code-standards)

3. **Test your changes**
   ```bash
   # Validate Terraform syntax
   terraform validate
   
   # Format code
   terraform fmt
   
   # Plan changes (without applying)
   terraform plan -var-file="environment_vars/prd.tfvars"
   ```

4. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add new resource group for api project"
   ```
   
   Use [conventional commit format](https://www.conventionalcommits.org/):
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `refactor:` for code refactoring
   - `chore:` for maintenance tasks

### 3. 📬 Submitting Changes

1. **Push your branch**
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create a Pull Request**
   - Use our [PR template](pull_request_template.md)
   - Fill out all sections completely
   - Link related issues using `Closes #123` or `Fixes #456`
   - Request review from maintainers

## 📏 Code Standards

### 🏗️ Terraform Best Practices

- **Resource Naming**: Follow the established naming convention (`rg-{sub}-{env}-{purpose}-{sequence}`)
- **Variables**: Define all variables in appropriate `variables.tf` files
- **Documentation**: Document all resources and modules with descriptions
- **State Management**: Never commit `.tfstate` files or `.terraform` directories
- **Lifecycle Rules**: Use `prevent_destroy = true` for critical resources

### 🧪 Code Quality

```bash
# Format Terraform code
terraform fmt -recursive

# Validate configuration
terraform validate

# Check for security issues (if tfsec is installed)
tfsec .

# Plan without applying
terraform plan -var-file="environment_vars/prd.tfvars"
```

### 📂 File Organization

- **One resource type per file** when possible (e.g., `resource-group-*.tf`)
- **Logical grouping** for related resources
- **Clear file names** that describe the purpose
- **Consistent variable names** across modules

## 🧪 Testing

### 🔍 Validation Tests
```bash
# Syntax validation
terraform validate

# Formatting check
terraform fmt -check

# Plan validation
terraform plan -var-file="environment_vars/prd.tfvars"
```

### 📏 Test Requirements

- **Validation**: All Terraform code must pass `terraform validate`
- **Formatting**: Code must be properly formatted with `terraform fmt`
- **Planning**: Changes must plan successfully without errors
- **Documentation**: New resources must include proper descriptions

## 🆘 Getting Help

### 📡 Communication Channels

- **Issues**: Use GitHub issues for bugs and feature requests
- **Discussions**: Use GitHub Discussions for questions and ideas
- **Email**: Contact maintainers directly for sensitive issues

### 📄 Issue Templates

Use our issue templates for:
- [Task Stories](./ISSUE_TEMPLATE/task-template.md)
- [User Stories](./ISSUE_TEMPLATE/user-story-template.md)

## 📜 License

By contributing to this project, you agree that your contributions will be licensed under the same license as the project (see [LICENSE](../LICENSE)).

---

**Happy Infrastructure Building! �️**

For any questions about this contributing guide, please open an issue or contact the maintainers.
