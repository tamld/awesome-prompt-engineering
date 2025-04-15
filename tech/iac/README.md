# Infrastructure as Code Prompts

This section contains prompts focused on Infrastructure as Code (IaC) tools and methodologies, including Terraform, Ansible, CloudFormation, and other automation frameworks.

## Table of Contents

- [Terraform Module Creator](#terraform-module-creator)
- [Ansible Playbook Generator](#ansible-playbook-generator)
- [IaC Security Reviewer](#iac-security-reviewer)
- [Multi-Cloud Migration Planner](#multi-cloud-migration-planner)

## Terraform Module Creator

### Prompt Template

```
Act as a Terraform expert with extensive experience in infrastructure as code. I need to create a Terraform module for [RESOURCE TYPE] with the following requirements:

- Cloud provider: [AWS/AZURE/GCP/ETC]
- Resource scope: [DETAILS]
- Configuration parameters: [DETAILS]
- Security requirements: [DETAILS]
- Compliance needs: [DETAILS]
- State management: [DETAILS IF SPECIFIC]

Please provide:
1. A complete, production-ready Terraform module including:
   - Well-structured main.tf, variables.tf, outputs.tf files
   - Clear documentation in README.md
   - Examples directory with common use cases
   - Appropriate use of Terraform features (for_each, count, dynamic blocks)
   - Comprehensive input variable validation
   - Meaningful outputs and descriptions

2. Best practices explanations for:
   - Module structure and organization
   - Variable naming and typing
   - Security considerations
   - Performance optimization
   - Maintainability and reusability
```

### Workflow Impact

This prompt helps you:

1. **Create Reusable Infrastructure**: Build modular, reusable Terraform components
2. **Apply Best Practices**: Implement Terraform patterns and practices
3. **Ensure Security**: Build security controls directly into infrastructure
4. **Document Effectively**: Generate clear documentation for infrastructure

![Terraform Module Workflow](https://via.placeholder.com/800x400?text=Terraform+Module+Workflow+Diagram)

### Tips for Best Results

- Provide details about the specific resources you need to manage
- Mention any existing Terraform code or patterns you already use
- Include specific security policies or compliance requirements
- Specify any integration needs with other systems or services

## Ansible Playbook Generator

### Prompt Template

```
Act as an Ansible automation expert. I need to create an Ansible playbook for [TASK DESCRIPTION] with these requirements:

- Target systems: [OS TYPE/VERSION]
- Authentication method: [SSH KEYS/PASSWORD/ETC]
- Idempotence requirements: [STRICT/MODERATE]
- Error handling approach: [STOP ON ERROR/CONTINUE/CUSTOM]
- Inventory structure: [DETAILS]
- Variables/secrets management: [DETAILS]

Please provide:
1. A complete, production-ready Ansible solution including:
   - Well-structured playbooks with appropriate roles and tasks
   - Necessary templates, files, and handlers
   - Variable definitions and defaults
   - Inventory examples if relevant
   - Tags for selective execution
   - Proper error handling and reporting

2. Best practices explanations for:
   - Task organization and role structure
   - Conditionals and loops usage
   - Performance optimization
   - Security considerations
   - Testing and validation approach
```

### Workflow Impact

This prompt helps you:

1. **Automate Configuration**: Create reliable, repeatable configuration management
2. **Structure Automation**: Organize Ansible code according to best practices
3. **Ensure Idempotence**: Build playbooks that can run safely multiple times
4. **Handle Edge Cases**: Manage errors and special conditions appropriately

### Tips for Best Results

- Describe the exact configuration changes you need to make
- Mention any existing Ansible code or patterns you already use
- Include details about your inventory structure and organization
- Specify any special requirements (e.g., needs to work without internet access)

## IaC Security Reviewer

### Prompt Template

```
Act as an infrastructure security specialist with expertise in IaC security. I need you to review [TERRAFORM/ANSIBLE/CLOUDFORMATION/ETC] code for security issues. The infrastructure is:

- Cloud platform: [AWS/AZURE/GCP/ETC]
- Resource types: [COMPUTE/NETWORK/STORAGE/ETC]
- Security requirements: [DETAILS]
- Compliance standards: [SOC2/HIPAA/PCI/ETC if applicable]
- Threat model: [ANY SPECIFIC THREATS TO ADDRESS]
- Current code: [PASTE SNIPPET OR DESCRIBE]

Please provide:
1. A comprehensive security review including:
   - Identification of security misconfigurations
   - Analysis of IAM/permissions issues
   - Network security and exposure assessment
   - Data protection evaluation
   - Encryption implementation review
   - Logging and monitoring gaps

2. Remediation recommendations with:
   - Specific code changes (actual corrected code)
   - Security best practices implementation
   - Defense-in-depth strategies
   - Compliance alignment improvements
```

### Workflow Impact

This prompt helps you:

1. **Identify Security Flaws**: Find vulnerabilities in infrastructure code
2. **Apply Security Best Practices**: Implement secure IaC patterns
3. **Meet Compliance**: Align infrastructure with compliance requirements
4. **Mitigate Risks**: Address security issues before deployment

### Tips for Best Results

- Share relevant sections of your infrastructure code
- Mention specific security concerns you're worried about
- Include details about your security requirements and standards
- Specify which compliance frameworks you need to adhere to

## Multi-Cloud Migration Planner

### Prompt Template

```
Act as a multi-cloud architect specializing in infrastructure migration. I need a migration plan to move [RESOURCE TYPE] from [SOURCE ENVIRONMENT] to [TARGET ENVIRONMENT] using infrastructure as code. Details:

- Current infrastructure: [DETAILS]
- Target state: [DETAILS] 
- Scale: [SIZE/COMPLEXITY]
- Downtime tolerance: [MAXIMUM ALLOWED DOWNTIME]
- Data transfer requirements: [VOLUME/SENSITIVITY]
- Special considerations: [DEPENDENCIES/CONSTRAINTS]

Please provide:
1. A comprehensive migration strategy including:
   - Pre-migration assessment and planning
   - Infrastructure as Code approach (tool selection and justification)
   - Step-by-step implementation plan
   - Data migration methodology
   - Testing and validation strategy
   - Cutover plan with rollback procedures
   - Post-migration verification

2. IaC templates or frameworks for:
   - Resource provisioning in the target environment
   - Configuration management
   - Network and security setup
   - Monitoring and observability
```

### Workflow Impact

This prompt helps you:

1. **Plan Migrations**: Create structured approaches for moving infrastructure
2. **Minimize Risk**: Identify and mitigate migration risks
3. **Automate Transitions**: Use IaC to make migrations repeatable and testable
4. **Handle Complexity**: Address multi-environment dependencies and constraints

### Tips for Best Results

- Provide detailed information about your current infrastructure
- Clearly communicate constraints and requirements
- Mention any previous migration experience or issues
- Include details about specific services or applications affected