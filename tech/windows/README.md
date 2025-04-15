# Windows Administration Prompts

This section contains prompts focused on Windows system administration, PowerShell scripting, batch files, and Windows management.

## Table of Contents

- [PowerShell Script Generator](#powershell-script-generator)
- [Windows Troubleshooting Guide](#windows-troubleshooting-guide)
- [Active Directory Management](#active-directory-management)
- [Windows Automation Task](#windows-automation-task)

## PowerShell Script Generator

### Prompt Template

```
Act as an expert PowerShell developer with deep knowledge of Windows systems. I need a PowerShell script to [TASK DESCRIPTION]. The script should:

- Target Windows version: [WINDOWS VERSION]
- PowerShell version: [VERSION]
- Required modules: [LIST ANY REQUIRED MODULES]
- Error handling: [BASIC/COMPREHENSIVE]
- Logging requirements: [NONE/BASIC/DETAILED]
- User interaction: [NONE/PROMPTS/ARGUMENTS]
- Execution policy considerations: [DETAILS]

The script should include:
1. Proper documentation including comment-based help
2. Input validation and proper error handling
3. Efficient and idiomatic PowerShell practices
4. Security considerations (least privilege, etc.)
5. Logging and reporting mechanisms if needed
6. Clean exit handling and resource cleanup

Additional requirements:
[ANY OTHER SPECIFIC REQUIREMENTS]
```

### Workflow Impact

This prompt helps you:

1. **Automate Windows Tasks**: Create robust PowerShell scripts for Windows administration
2. **Standardize Operations**: Build consistent operational scripts
3. **Implement Best Practices**: Incorporate PowerShell best practices and security features
4. **Document Procedures**: Create self-documenting PowerShell scripts with proper help

![PowerShell Script Generation Workflow](https://via.placeholder.com/800x400?text=PowerShell+Script+Generation+Workflow+Diagram)

### Tips for Best Results

- Clearly describe the exact task the script should perform
- Specify any edge cases or error conditions that should be handled
- Mention any performance constraints or execution environment limitations
- Include details about the execution context (admin privileges, etc.)

## Windows Troubleshooting Guide

### Prompt Template

```
Act as a senior Windows systems administrator. I'm experiencing this issue on a [WINDOWS VERSION] system:

[DETAILED DESCRIPTION OF THE PROBLEM]

Relevant system information:
- Hardware: [DETAILS IF RELEVANT]
- Software: [DETAILS IF RELEVANT]
- Configuration: [DETAILS IF RELEVANT]
- Recent changes: [DETAILS IF RELEVANT]
- Error messages: [EXACT ERROR TEXT]

Please provide:
1. A systematic troubleshooting methodology for this specific issue
2. Specific diagnostic commands and tools to use with explanation of expected output
3. Most likely causes ranked by probability
4. Step-by-step resolution procedures for each likely cause
5. Verification steps to confirm the issue is resolved
6. Preventive measures to avoid similar issues in the future
```

### Workflow Impact

This prompt helps you:

1. **Diagnose Windows Problems**: Systematically identify root causes
2. **Collect Diagnostic Data**: Gather relevant information using Windows tools
3. **Apply Targeted Fixes**: Implement appropriate solutions
4. **Verify Resolutions**: Confirm issues are properly addressed

### Tips for Best Results

- Include exact error messages or event log details when available
- Describe the context of when the issue occurs
- Mention any troubleshooting steps you've already attempted
- Include relevant logs or command outputs when possible

## Active Directory Management

### Prompt Template

```
Act as an Active Directory specialist. I need to [PERFORM TASK] in our Active Directory environment with these parameters:

- AD structure: [BASIC DESCRIPTION]
- Domain functional level: [LEVEL]
- Task scope: [USERS/GROUPS/OUS/GPOs/ETC]
- Scale: [NUMBER OF OBJECTS AFFECTED]
- Special considerations: [DETAILS]
- Security requirements: [DETAILS]

Please provide:
1. A comprehensive approach to accomplish this task
2. PowerShell scripts or commands to execute the operations
3. Required permissions and security considerations
4. Validation steps to verify successful implementation
5. Rollback procedures in case of issues
6. Best practices and recommendations for this particular AD operation
```

### Workflow Impact

This prompt helps you:

1. **Manage AD Efficiently**: Perform complex AD operations with proper planning
2. **Automate Operations**: Script repeatable AD management tasks
3. **Maintain Security**: Apply least-privilege principles to AD management
4. **Implement Safely**: Include validation and rollback procedures

### Tips for Best Results

- Describe your AD structure and naming conventions
- Mention any specific constraints in your environment
- Include details about delegation models if relevant
- Specify any compliance requirements that affect AD management

## Windows Automation Task

### Prompt Template

```
Act as a Windows automation expert. I need to automate [TASK DESCRIPTION] on Windows [VERSION] systems. The automation should:

- Run on schedule: [SCHEDULE DETAILS]
- Execute with account: [USER CONTEXT]
- Handle errors by: [ERROR HANDLING APPROACH]
- Report results to: [REPORTING MECHANISM]
- Security considerations: [DETAILS]
- Scale to: [NUMBER OF SYSTEMS]

Please provide:
1. The best approach for this automation (Task Scheduler, PowerShell, third-party tools)
2. Complete implementation details including scripts and configuration
3. Scheduling configuration and trigger setup
4. Error handling and notification setup
5. Logging and reporting configuration
6. Security hardening recommendations
7. Testing and validation procedure
```

### Workflow Impact

This prompt helps you:

1. **Automate Windows Operations**: Create reliable automated solutions
2. **Choose Right Tools**: Select the most appropriate automation approach
3. **Handle Failures Gracefully**: Implement robust error handling
4. **Monitor Execution**: Set up proper logging and reporting

### Tips for Best Results

- Describe the exact workflow that needs automation
- Include any dependencies or prerequisites for the task
- Specify any timing constraints (must run within certain windows)
- Mention any existing automation solutions you're already using