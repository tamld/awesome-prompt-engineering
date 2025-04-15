# Infrastructure Prompts

This section contains prompts focused on infrastructure management, including cloud platforms, networking, servers, and systems architecture.

## Table of Contents

- [Cloud Architecture Advisor](#cloud-architecture-advisor)
- [Network Diagram Generator](#network-diagram-generator)
- [System Requirements Analyzer](#system-requirements-analyzer)
- [Disaster Recovery Plan Creator](#disaster-recovery-plan-creator)

## Cloud Architecture Advisor

### Prompt Template

```
Act as an expert cloud architect with extensive experience in AWS, Azure, and GCP. I'm working on [PROJECT TYPE]. I need to design a cloud infrastructure that addresses:

- Scalability requirements: [SPECIFICS]
- Security considerations: [SPECIFICS]  
- Cost constraints: [SPECIFICS]
- Redundancy/availability needs: [SPECIFICS]

Recommend a detailed architecture including:
1. The optimal cloud provider(s) for this use case with justification
2. Core services and components to use
3. Network architecture with security groups/firewalls
4. Data storage and database recommendations
5. Cost optimization strategies
6. Monitoring and observability setup

For each recommendation, explain your reasoning, include alternatives considered, and highlight potential challenges.
```

### Workflow Impact

This prompt helps you leverage AI to:

1. **Analyze Requirements**: Systematically evaluate your infrastructure needs
2. **Generate Architectures**: Get detailed, multi-provider design suggestions
3. **Compare Options**: Understand trade-offs between different architectural choices
4. **Identify Risks**: Anticipate potential issues before implementation

![Cloud Architecture Workflow](https://via.placeholder.com/800x400?text=Cloud+Architecture+Workflow+Diagram)

### Tips for Best Results

- Provide specific details about your workload characteristics (e.g., traffic patterns, data volumes)
- Include any existing infrastructure constraints or preferences
- Mention compliance requirements that might impact cloud provider selection
- Be explicit about performance requirements and SLAs needed

## Network Diagram Generator

### Prompt Template

```
Act as a network architecture specialist. Help me create a detailed network diagram for [NETWORK TYPE]. 

Network details:
- Environment: [PRODUCTION/DEVELOPMENT/TEST]
- Scale: [NUMBER OF NODES/USERS]
- Key components: [LIST COMPONENTS]
- Security requirements: [SECURITY NEEDS]
- Special considerations: [ANY UNIQUE REQUIREMENTS]

Please provide:
1. A detailed textual description of the network topology that I can use to create a diagram
2. The recommended network segmentation approach
3. IP addressing scheme 
4. Security controls at each layer
5. Recommendations for resilience and redundancy

Format your response so I can easily convert it into a visualization tool.
```

### Workflow Impact

This prompt helps you:

1. **Conceptualize Networks**: Quickly generate network design outlines
2. **Document Architectures**: Create detailed documentation for your networks
3. **Identify Security Boundaries**: Ensure proper network segmentation
4. **Plan IP Allocations**: Develop sensible addressing schemes

### Tips for Best Results

- Be specific about the number and types of systems that need connectivity
- Mention any existing network constraints or equipment preferences
- Include performance requirements for critical network paths
- Note any compliance considerations that affect network design

## System Requirements Analyzer

### Prompt Template

```
Act as a systems capacity planning expert. I need to determine hardware/resource requirements for [SYSTEM TYPE] that will handle:

- Peak load of [METRICS]
- Average load of [METRICS]
- Data storage needs of [VOLUME]
- Growth projection of [PERCENTAGE] over [TIMEFRAME]

Additional requirements:
- Redundancy level: [SPECIFICS]
- Performance constraints: [SPECIFICS]
- Budget constraints: [SPECIFICS]

Please provide:
1. Detailed hardware specifications (CPU, RAM, storage, network)
2. Scaling recommendations (vertical vs horizontal)
3. Redundancy architecture
4. Performance optimization suggestions
5. Cost estimates (ballpark) and cost optimization strategies
```

### Workflow Impact

This prompt enables you to:

1. **Size Systems Appropriately**: Avoid over/under-provisioning
2. **Plan for Growth**: Build infrastructures that scale with your needs
3. **Budget Accurately**: Estimate costs before procurement
4. **Design for Resilience**: Ensure systems meet availability requirements

### Tips for Best Results

- Provide real metrics when possible (requests per second, data size, etc.)
- Mention any existing hardware or virtualization environments
- Include performance SLAs that must be met
- Be specific about budget constraints to get practical recommendations

## Disaster Recovery Plan Creator

### Prompt Template

```
Act as a Disaster Recovery (DR) specialist. Help me create a comprehensive DR plan for [SYSTEM/SERVICE] with the following parameters:

- Recovery Time Objective (RTO): [SPECIFICS]
- Recovery Point Objective (RPO): [SPECIFICS]
- Critical systems: [LIST SYSTEMS]
- Data protection requirements: [SPECIFICS]
- Compliance considerations: [SPECIFICS]

Please provide:
1. A detailed DR strategy with primary and secondary approaches
2. Required backup systems and methodologies
3. Testing procedures and schedules
4. Step-by-step recovery procedures
5. Roles and responsibilities during a DR event
6. Communication plan templates
7. Post-recovery validation steps
```

### Workflow Impact

This prompt helps you:

1. **Formalize Recovery Processes**: Transform informal processes into documented procedures
2. **Identify Critical Systems**: Ensure all essential services are covered
3. **Establish Clear Metrics**: Set realistic RTO/RPO targets
4. **Assign Responsibilities**: Clarify who does what during disasters
5. **Test Effectively**: Create procedures that validate recovery capabilities

### Tips for Best Results

- Be specific about the business impact of different systems being unavailable
- Include details about your current backup and recovery capabilities
- Mention any compliance requirements that affect your recovery processes
- Provide context about your team's experience level with disaster recovery