# 📝 Description

*Please include a summary of the infrastructure changes and the related issue. Please also include relevant motivation and context. List any dependencies that are required for this change.*

- Issue # (issue)

## 🔧 Type of change

What type of change was this related to?

- [ ] New infrastructure (non-breaking change which adds Azure resources)
- [ ] Bug fix (non-breaking change which fixes an infrastructure issue)
- [ ] Breaking change (fix or feature that would cause existing infrastructure to not work as expected)
- [ ] Documentation update
- [ ] Pipeline and workflow change
- [ ] Chore / Misc

<br/>

## 🧪 How Has This Been Tested?

*Please describe the tests that you ran to verify your changes. Provide instructions so we can reproduce. Please also list any relevant details for your test configuration*

- [ ] Terraform validate passed
- [ ] Terraform plan successful
- [ ] Terraform fmt applied
- [ ] Manual testing in dev environment
- [ ] Security review completed

<br/>

## ✅ Infrastructure Checklist:

- [ ] My code follows the Terraform style guidelines of this project
- [ ] I have performed a self-review of my infrastructure code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings or security issues
- [ ] I have added proper resource naming following the convention
- [ ] New resources include appropriate lifecycle rules
- [ ] Any dependent changes have been merged and published in downstream modules

<br/>

## 🚀 Deployment Notes

*Any special deployment considerations*

- [ ] Has new Azure resource groups
- [ ] Has new service principals
- [ ] Requires specific Azure permissions
- [ ] Has configuration changes (variables, etc)
- [ ] Can be deployed independently
- [ ] Requires coordinated deployment

<br/>

## 🔒 Security Considerations

*Please describe any security implications of these changes*

- [ ] No sensitive data exposed
- [ ] Service principals follow least privilege principle
- [ ] Resource groups provide proper isolation
- [ ] No secrets in code (using Azure Key Vault)

<br/>

## 📊 Impact Assessment

*Please describe the impact of these changes*

- **Resource Groups Affected**: 
- **Service Principals Created/Modified**: 
- **Cost Impact**: 
- **Dependencies**: 

<br/>

## 📸 Screenshots or other relevant information

*Please provide any screenshots of Terraform plans, Azure portal views, or other relevant information that will aid the reviewer in understanding the changes.*