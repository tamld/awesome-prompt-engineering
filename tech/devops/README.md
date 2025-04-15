# DevOps Prompts

This section contains prompts focused on DevOps practices, including CI/CD pipelines, automation, deployment strategies, and operational excellence.

## Table of Contents

- [CI/CD Pipeline Designer](#cicd-pipeline-designer)
- [Deployment Strategy Advisor](#deployment-strategy-advisor)
- [Infrastructure Monitoring Setup](#infrastructure-monitoring-setup)
- [Incident Response Playbook Creator](#incident-response-playbook-creator)

## CI/CD Pipeline Designer

### Prompt Template

```
Act as a DevOps engineer with expertise in CI/CD pipelines. I need to design a CI/CD pipeline for a [LANGUAGE/FRAMEWORK] application with these requirements:

- Repository platform: [GITHUB/GITLAB/BITBUCKET/ETC]
- Deployment environments: [DEV/STAGING/PROD/ETC]
- Testing requirements: [UNIT/INTEGRATION/E2E/ETC]
- Infrastructure type: [CLOUD PROVIDER/KUBERNETES/ON-PREM/ETC]
- Security scanning needs: [SAST/DAST/SCA/ETC]
- Deployment frequency: [CONTINUOUS/SCHEDULED/MANUAL APPROVAL]

Please provide:
1. A comprehensive CI/CD pipeline design with all necessary stages
2. Recommended CI/CD tools and justification for each choice
3. Pipeline configuration examples (in YAML or similar format where appropriate)
4. Strategies for handling failures at different stages
5. Pipeline optimization recommendations for speed and reliability
6. How to implement proper access controls and security measures
```

### Workflow Impact

This prompt helps you:

1. **Design End-to-End Pipelines**: Create comprehensive delivery processes
2. **Select Appropriate Tools**: Choose the right CI/CD tools for your specific needs
3. **Implement Best Practices**: Incorporate industry standards into your delivery process
4. **Automate Quality Gates**: Build quality checks directly into your pipeline

![CI/CD Pipeline Workflow](https://via.placeholder.com/800x400?text=CI/CD+Pipeline+Workflow+Diagram)

### Tips for Best Results

- Provide details about your specific tech stack and deployment targets
- Mention any existing CI/CD tools you're already using or considering
- Specify any compliance requirements that might affect your pipeline
- Include performance expectations for the pipeline (e.g., max build time)

## Deployment Strategy Advisor

### Prompt Template

```
Act as a deployment strategist specializing in release engineering. I need advice on implementing a deployment strategy for [APPLICATION TYPE] with these parameters:

- Application type: [WEB/MOBILE/MICROSERVICE/MONOLITH/ETC]
- Current architecture: [DETAILS]
- Downtime tolerance: [ZERO/MINUTES/HOURS]
- Release frequency: [CONTINUOUS/DAILY/WEEKLY/MONTHLY]
- Team size and structure: [DETAILS]
- Risk tolerance: [LOW/MEDIUM/HIGH]
- Rollback requirements: [IMMEDIATE/WITHIN MINUTES/HOURS]

Please recommend:
1. The optimal deployment strategy (blue-green, canary, rolling, etc.) with justification
2. Implementation steps for this strategy in our environment
3. Required tooling and infrastructure changes
4. Monitoring and verification processes during deployment
5. Rollback procedures and contingency plans
6. Gradual implementation plan if we're moving from a different deployment model
```

### Workflow Impact

This prompt helps you:

1. **Select Appropriate Strategies**: Choose deployment methods that match your needs
2. **Reduce Deployment Risk**: Implement safeguards in your release process
3. **Minimize Downtime**: Design zero or near-zero downtime deployments
4. **Plan for Failures**: Create robust rollback mechanisms

### Tips for Best Results

- Be specific about your application architecture and dependencies
- Clearly communicate your tolerance for deployment risk
- Mention any existing deployment pain points you're trying to address
- Include details about your current deployment process and tools

## Infrastructure Monitoring Setup

### Prompt Template

```
Act as a monitoring and observability expert. I need to design a monitoring solution for [INFRASTRUCTURE TYPE] with:

- Environment details: [CLOUD/ON-PREM/HYBRID]
- Scale: [NUMBER OF SERVERS/SERVICES/ETC]
- Critical services: [LIST KEY SERVICES]
- Technology stack: [DETAILS]
- Alert sensitivity: [LOW/MEDIUM/HIGH]
- Team structure: [DETAILS OF WHO RESPONDS TO ALERTS]
- Existing tools: [ANY CURRENT MONITORING TOOLS]

Please provide:
1. Comprehensive monitoring architecture including metrics, logs, and traces
2. Tool recommendations with justification (open-source vs commercial options)
3. Key metrics and thresholds to monitor for each system component
4. Alert design and notification strategy to minimize alert fatigue
5. Dashboard design recommendations for different stakeholders
6. Suggestions for implementing SLOs/SLIs for critical services
7. Escalation policies and on-call rotation advice
```

### Workflow Impact

This prompt helps you:

1. **Build Complete Observability**: Design comprehensive monitoring solutions
2. **Prevent Alert Fatigue**: Create meaningful, actionable alerts
3. **Visualize System Health**: Design effective dashboards for different audiences
4. **Implement SRE Practices**: Move toward SLO-based reliability engineering

### Tips for Best Results

- Provide details about what "normal" looks like for your systems
- Mention any current monitoring pain points (too many alerts, blind spots, etc.)
- Include information about your operational model (follow-the-sun, single team, etc.)
- Specify any compliance requirements that affect monitoring

## Incident Response Playbook Creator

### Prompt Template

```
Act as an SRE specialist with expertise in incident management. Help me create incident response playbooks for [SYSTEM/SERVICE] with these parameters:

- System criticality: [HIGH/MEDIUM/LOW]
- Common failure modes: [LIST KNOWN ISSUES]
- Team structure: [DETAILS]
- Current monitoring: [DETAILS]
- Communication channels: [SLACK/EMAIL/PAGERDUTY/ETC]
- Stakeholders: [DETAILS]
- SLA requirements: [DETAILS]

For each common failure mode, please create:
1. A detailed incident response playbook with:
   - Detection methods and initial triage steps
   - Diagnostic procedures and common solutions
   - Escalation criteria and procedures
   - Communication templates for different audiences
   - Post-incident review process

2. Recommendations for:
   - Proactive measures to prevent recurrence
   - Automation opportunities to speed up response
   - Additional monitoring to improve detection
```

### Workflow Impact

This prompt helps you:

1. **Standardize Responses**: Create consistent approaches to incident handling
2. **Reduce MTTR**: Decrease time to resolution through structured procedures
3. **Improve Communication**: Build clear stakeholder messaging templates
4. **Learn Systematically**: Develop robust post-incident review processes

### Tips for Best Results

- Provide specific examples of past incidents and how they were resolved
- Include details about your service dependencies
- Mention any current pain points in your incident response process
- Be specific about escalation paths and decision-making authority