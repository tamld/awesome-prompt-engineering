# Bash & Linux Prompts

This section contains prompts focused on Bash scripting, Linux system administration, and command-line tools.

## Table of Contents

- [Shell Script Generator](#shell-script-generator)
- [Linux Troubleshooting Guide](#linux-troubleshooting-guide)
- [Cron Job Scheduler](#cron-job-scheduler)
- [Performance Tuning Advisor](#performance-tuning-advisor)

## Shell Script Generator

### Prompt Template

```
Act as an expert Bash programmer with deep understanding of Linux systems. I need a shell script to [TASK DESCRIPTION]. The script should:

- Target environment: [LINUX DISTRO/VERSION]
- Dependencies: [LIST ANY REQUIRED TOOLS]
- Error handling requirements: [BASIC/COMPREHENSIVE]
- Logging needs: [NONE/BASIC/DETAILED]
- User interaction: [NONE/PROMPTS/ARGUMENTS]
- Security considerations: [DETAILS]

The script should include:
1. Proper documentation and usage instructions
2. Input validation and error handling
3. Efficient and idiomatic Bash practices
4. Security hardening where appropriate
5. Logging and reporting mechanisms if needed
6. Clean exit handling and resource cleanup

Additional requirements:
[ANY OTHER SPECIFIC REQUIREMENTS]
```

### Workflow Impact

This prompt helps you:

1. **Automate Tasks**: Create robust shell scripts for system administration
2. **Standardize Operations**: Build consistent operational scripts
3. **Implement Best Practices**: Incorporate error handling and security features
4. **Document Procedures**: Create self-documenting operational procedures

![Shell Script Generation Workflow](https://via.placeholder.com/800x400?text=Shell+Script+Generation+Workflow+Diagram)

### Tips for Best Results

- Clearly describe the exact task the script should perform
- Specify any edge cases or error conditions that should be handled
- Mention any performance constraints (e.g., needs to run on resource-limited systems)
- Include details about the execution environment (versions of tools, etc.)

## Linux Troubleshooting Guide

### Prompt Template

```
Act as a senior Linux systems administrator. I'm experiencing this issue on a [DISTRO/VERSION] system:

[DETAILED DESCRIPTION OF THE PROBLEM]

Relevant system information:
- Hardware: [DETAILS IF RELEVANT]
- Software: [DETAILS IF RELEVANT]
- Configuration: [DETAILS IF RELEVANT]
- Recent changes: [DETAILS IF RELEVANT]
- Error messages: [EXACT ERROR TEXT]

Please provide:
1. A systematic troubleshooting methodology for this specific issue
2. Specific diagnostic commands to run with explanation of expected output
3. Most likely causes ranked by probability
4. Step-by-step resolution procedures for each likely cause
5. Verification steps to confirm the issue is resolved
6. Preventive measures to avoid similar issues in the future
```

### Workflow Impact

This prompt helps you:

1. **Diagnose Problems**: Systematically identify root causes
2. **Collect Relevant Data**: Gather the right diagnostic information
3. **Apply Targeted Fixes**: Implement appropriate solutions
4. **Verify Resolutions**: Confirm issues are properly addressed

### Tips for Best Results

- Include exact error messages when available
- Describe the context of when the issue occurs
- Mention any troubleshooting steps you've already attempted
- Include relevant logs or command outputs when possible

## Cron Job Scheduler

### Prompt Template

```
Act as a Linux system administrator with expertise in scheduling tasks. I need to create cron jobs for [PURPOSE] with these requirements:

- Task description: [DETAILS]
- Schedule requirements: [FREQUENCY/TIMING]
- User context: [WHICH USER SHOULD RUN IT]
- Environment considerations: [DETAILS]
- Output handling: [WHERE OUTPUT SHOULD GO]
- Failure notification: [HOW TO ALERT ON FAILURE]
- Resource constraints: [CPU/MEMORY/DISK CONSIDERATIONS]

Please provide:
1. Properly formatted crontab entries with detailed explanations
2. Environment setup recommendations
3. Logging and output management approach
4. Error handling and notification configuration
5. Monitoring recommendations
6. Best practices for the specific type of task
7. Alternative scheduling approaches if appropriate (systemd timers, etc.)
```

### Workflow Impact

This prompt helps you:

1. **Schedule Reliably**: Create properly formatted, reliable cron jobs
2. **Manage Output**: Implement appropriate logging and error handling
3. **Handle Failures**: Set up notification systems for failed jobs
4. **Follow Best Practices**: Apply cron security and efficiency patterns

### Tips for Best Results

- Be specific about exactly when the task needs to run
- Mention any dependencies between different scheduled tasks
- Include details about the expected runtime of the tasks
- Specify any constraints about when tasks should NOT run

## Performance Tuning Advisor

### Prompt Template

```
Act as a Linux performance optimization specialist. I need to improve the performance of a [DISTRO/VERSION] system running [APPLICATION/WORKLOAD] with these characteristics:

- Current performance issues: [DETAILS]
- Hardware specifications: [CPU/RAM/DISK/ETC]
- Workload type: [DESCRIPTION]
- Critical constraints: [DETAILS]
- Performance metrics: [WHAT'S BEING MEASURED]
- Current tuning: [ANY EXISTING OPTIMIZATIONS]

Please provide:
1. A systematic approach to diagnose performance bottlenecks
2. Specific tools and commands to gather performance data
3. Key system parameters to tune with recommended values
4. Application-level optimizations if applicable
5. File system and disk I/O optimization recommendations
6. Network configuration tuning if relevant
7. Resource limit adjustments
8. Monitoring setup to verify improvements
```

### Workflow Impact

This prompt helps you:

1. **Identify Bottlenecks**: Locate system performance constraints
2. **Apply Targeted Optimizations**: Make data-driven tuning decisions
3. **Measure Improvements**: Quantify the impact of changes
4. **Implement Best Practices**: Apply established performance patterns

### Tips for Best Results

- Provide specific metrics showing the current performance issues
- Include details about peak usage patterns and timing
- Mention any regulatory or operational constraints that limit tuning options
- Share information about the criticality of the system (production vs. development)