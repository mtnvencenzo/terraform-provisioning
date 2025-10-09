# 🆘 Support

Need help with Terraform Provisioning? We're here to help! This document provides information about how to get support for the project.

## 📋 Table of Contents

- [Getting Help](#-getting-help)
- [Bug Reports](#-bug-reports)
- [Feature Requests](#-feature-requests)
- [Contributing](#-contributing)
- [Community](#-community)
- [Commercial Support](#-commercial-support)

## 🙋 Getting Help

### 📚 Documentation First

Before asking for help, please check our documentation:

- 📖 **[README](../README.md)** - Project overview and quick start
- 🤝 **[Contributing Guide](./CONTRIBUTING.md)** - How to contribute to the project
- 🤗 **[Code of Conduct](./CODE_OF_CONDUCT.md)** - Community guidelines and expectations
- 🔒 **[Security Policy](./SECURITY.md)** - Security guidelines and reporting
- 📝 **[Terraform Documentation](../terraform.md)** - Terraform-specific documentation

### 💬 Ask Questions

If you have questions about using Terraform Provisioning:

1. **GitHub Discussions** 💬
   - [Start a discussion](../../discussions)
   - Browse existing discussions
   - Best for: General questions, ideas, architecture discussions

2. **GitHub Issues** 🐛
   - [Create an issue](../../issues/new/choose)
   - Use our issue templates
   - Best for: Bug reports and infrastructure requests

### 📞 Response Times

We aim to respond to:
- 🚨 **Security issues**: Within 48 hours
- 🐛 **Bug reports**: Within 1-2 business days
- ✨ **Infrastructure requests**: Within 1 week
- 💬 **General questions**: Within 1 week

## 🐛 Bug Reports

Found a bug? Help us fix it!

### 📝 Before Reporting

1. **Search existing issues** to avoid duplicates
2. **Update to the latest version** to see if it's already fixed
3. **Check the documentation** to ensure it's actually a bug

### 📮 How to Report

1. Use our **[Bug Report Template](../../issues/new?template=bug_report.md)**
2. Provide detailed information:
   - Terraform version
   - Azure CLI version
   - Steps to reproduce
   - Expected behavior
   - Actual behavior
   - Terraform configuration (sanitized)
   - Error messages

### 🔄 What Happens Next

1. 🏷️ **Triage**: We'll label and prioritize your issue
2. 🔍 **Investigation**: We'll investigate and may ask for more details
3. 🛠️ **Fix**: We'll work on a fix if confirmed as a bug
4. ✅ **Resolution**: We'll notify you when it's fixed

## ✨ Infrastructure Requests

Need additional Azure resources or infrastructure changes?

### 🧠 Before Requesting

1. **Check existing issues** for similar requests
2. **Consider the scope** - does it fit the project's goals?
3. **Think about security** - what permissions are needed?

### 📨 How to Request

1. Use our **[Infrastructure Request Template](../../issues/new?template=infrastructure-request.md)**
2. Provide clear information:
   - What resources do you need?
   - Which project is this for?
   - What permissions are required?
   - Why is it important?
   - Any specific configuration requirements?

### 📊 Evaluation Process

1. 📋 **Review**: We'll review your request
2. 💬 **Discussion**: We may ask questions or start a discussion
3. 🎯 **Prioritization**: We'll prioritize based on impact and effort
4. 🚀 **Implementation**: Approved requests will be added to our roadmap

## 🤝 Contributing

Want to contribute infrastructure code, documentation, or other improvements?

### 🚀 Get Started

1. 📖 **Read our [Contributing Guide](./CONTRIBUTING.md)**
2. 🍴 **Fork the repository**
3. 💻 **Make your changes**
4. 📬 **Submit a pull request**

### 🧾 Types of Contributions

- 🐛 **Bug fixes**
- ✨ **New resource groups**
- 📚 **Documentation improvements**
- 🧪 **Terraform validation**
- �️ **Infrastructure improvements**
- 🔧 **Build and tooling**

### ✅ Approval Process

⚠️ **Important**: Contributors must be approved by maintainers before making changes to this repository.

## 🌐 Community

Join our community of infrastructure engineers and developers!

### 📣 Stay Updated

- ⭐ **Star the repository** to show support
- 👀 **Watch releases** for updates
- 🐦 **Follow updates** on infrastructure changes

### 🤗 Code of Conduct

We're committed to providing a welcoming and inclusive experience for everyone. Please be respectful and constructive in all interactions.

## 💼 Commercial Support

Need professional infrastructure consulting or custom development?

### 📬 Contact Options

- 📧 **Email**: Contact [@mtnvencenzo](https://github.com/mtnvencenzo)
- 💼 **Business Inquiries**: Available upon request

### 🛠️ Services Available

- 🛠️ **Custom Infrastructure Development**
- 🏗️ **Azure Architecture Consulting**
- 🎓 **Terraform Training and Workshops**
- 🚀 **Infrastructure Migration Support**
- 🔧 **Ongoing Infrastructure Maintenance**

## 📊 Project Status

- 🚀 **Status**: Active development
- 🎯 **Maintainer**: [@mtnvencenzo](https://github.com/mtnvencenzo)
- 📈 **Roadmap**: See [Issues](../../issues) and [Projects](../../projects)

## ❓ Common Questions

**Q: How do I add a new project?**
A: Create a new module in `terraform/projects/` following the `latest` project pattern, then reference it in `main.tf`.

**Q: Can I request additional Azure resources?**
A: Yes! Create an infrastructure request issue with details about what you need and why.

**Q: How do I get access to the provisioned resources?**
A: Service principals are created with appropriate permissions. Contact the maintainer for access details.

**Q: What's the approval process for changes?**
A: All changes require maintainer approval. Create an issue first to discuss your needs.

## 🙏 Thank You

Thank you for your interest in Terraform Provisioning! Whether you're reporting bugs, requesting infrastructure, or contributing code, your involvement helps build better Azure infrastructure for everyone.

---

**Here's to robust infrastructure! �️**

*Last updated: October 2025*