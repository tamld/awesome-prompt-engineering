# 🔄 Virtualization Prompts

This section contains prompts focused on virtualization technologies, including Docker, Kubernetes, virtual machines, and containerization strategies.

## 📑 Table of Contents

- [🐳 Container Optimization Advisor](#container-optimization-advisor)
- [☸️ Kubernetes Manifest Generator](#kubernetes-manifest-generator)
- [🖥️ VM Resource Planning Guide](#vm-resource-planning-guide)
- [📦 Containerization Strategy Planner](#containerization-strategy-planner)
- [🔥 Proxmox Automation](/tech/virtualization/proxmox/)

## 🐳 Container Optimization Advisor

### 📝 Prompt Template

```
Act as a Docker optimization expert. I'm working with a [LANGUAGE/FRAMEWORK] application that I need to containerize efficiently. Details:

- Application type: [WEB/API/BATCH/ETC]
- Language/framework: [SPECIFIC TECH]
- Build process: [BUILD DETAILS]
- Performance requirements: [DETAILS]
- Image size constraints: [DETAILS]
- Security requirements: [DETAILS]

Please provide:
1. An optimized multi-stage Dockerfile with detailed comments explaining each choice
2. Recommendations for base images with security/size trade-offs explained
3. Strategies to minimize image size while maintaining performance
4. Layer optimization to improve build speed and caching
5. Security best practices specific to this type of application
6. Runtime configuration recommendations (environment variables, resource limits)
7. Docker-compose setup if the application has multiple services
```

### 💪 Workflow Impact

This prompt helps you:

1. **Optimize Container Builds**: Create efficient, secure Docker images
2. **Reduce Image Size**: Minimize storage and transfer overhead
3. **Improve Security**: Implement container security best practices
4. **Enhance Build Speed**: Optimize caching and layer management

### 💡 Tips for Best Results

- Share specific details about your application's dependencies and build process
- Mention any current pain points with your existing Dockerfiles
- Include information about your deployment environment (cloud, on-prem, etc.)
- Specify any compliance requirements that affect containerization

## ☸️ Kubernetes Manifest Generator

### 📝 Prompt Template

```
Act as a Kubernetes architect. I need to deploy [APPLICATION TYPE] to Kubernetes with these requirements:

- Application details: [LANGUAGE/FRAMEWORK/SPECIFICS]
- Scalability needs: [DETAILS]
- Resource requirements: [CPU/MEMORY/STORAGE]
- Networking: [INGRESS NEEDS/SERVICE MESH/ETC]
- State management: [STATELESS/STATEFUL]
- Security considerations: [DETAILS]
- Monitoring requirements: [DETAILS]

Please provide:
1. Complete Kubernetes manifests (or Helm chart values) for:
   - Deployments/StatefulSets
   - Services and Ingress resources
   - ConfigMaps and Secrets (templates)
   - PersistentVolumeClaims if needed
   - ServiceAccounts and RBAC if needed
   - HorizontalPodAutoscalers
   - PodDisruptionBudgets
   
2. Recommendations for:
   - Resource requests and limits
   - Liveness, readiness, and startup probes
   - Security context and pod security policies
   - Node affinity and anti-affinity rules
   - Networking policies
   - Backup and disaster recovery approaches
```

### 💪 Workflow Impact

This prompt helps you:

1. **Generate Complete Manifests**: Create production-ready Kubernetes configurations
2. **Implement Best Practices**: Follow K8s patterns for reliable deployments
3. **Balance Resources**: Set appropriate requests and limits
4. **Secure Deployments**: Apply proper security controls

### 💡 Tips for Best Results

- Provide details about your application's architecture and components
- Mention any specific Kubernetes features you want to leverage
- Include information about your cluster environment (cloud provider, version, etc.)
- Specify any operational constraints (e.g., need for zero-downtime updates)

## 🖥️ VM Resource Planning Guide

### 📝 Prompt Template

```
Act as a virtualization specialist. I need to plan virtualized infrastructure for [WORKLOAD TYPE] with these parameters:

- Workload type: [SERVER/DESKTOP/MIXED]
- Number of VMs needed: [QUANTITY]
- Operating systems: [LIST]
- Application profiles: [DETAILS]
- Performance requirements: [DETAILS]
- Availability requirements: [DETAILS]
- Storage needs: [CAPACITY/PERFORMANCE]
- Budget constraints: [DETAILS]

Please provide:
1. Recommended VM sizing (vCPU, memory, storage) for each workload type
2. Host hardware specifications to support these VMs
3. Oversubscription recommendations and ratios
4. Storage architecture suggestions (local, SAN, hybrid)
5. Network capacity planning
6. High availability and backup strategies
7. Licensing considerations
8. Migration strategy if moving from physical infrastructure
```

### 💪 Workflow Impact

This prompt helps you:

1. **Size Infrastructure Properly**: Create right-sized VM environments
2. **Plan Capacity**: Determine host requirements before purchasing
3. **Optimize Resources**: Balance performance and cost through proper allocation
4. **Design for Resilience**: Build in appropriate redundancy and backup

### 💡 Tips for Best Results

- Provide specific information about application workloads and their resource usage patterns
- Mention any existing performance bottlenecks in current systems
- Include details about expected growth over time
- Specify any business-critical applications with special requirements

## 📦 Containerization Strategy Planner

### 📝 Prompt Template

```
Act as a containerization strategy consultant. I need to develop a plan to containerize [EXISTING APPLICATION/ENVIRONMENT] with these characteristics:

- Current architecture: [MONOLITH/MICROSERVICE/ETC]
- Technology stack: [DETAILS]
- Development workflow: [DETAILS]
- Operational constraints: [DETAILS]
- Team experience: [HIGH/MEDIUM/LOW with containers]
- Timeline expectations: [AGGRESSIVE/MODERATE/RELAXED]
- Target environment: [KUBERNETES/ECS/PLAIN DOCKER/ETC]

Please provide:
1. A phased containerization strategy with clear milestones
2. Assessment of which components to containerize first and why
3. Recommendations for handling data persistence and stateful components
4. Development workflow changes needed
5. Operational and monitoring considerations
6. Required team training and skill development
7. Common pitfalls to avoid during this transformation
8. Testing strategy for containerized applications
```

### 💪 Workflow Impact

This prompt helps you:

1. **Plan Transitions**: Create roadmaps for moving from traditional to containerized deployments
2. **Prioritize Efforts**: Identify which components offer the best containerization ROI
3. **Manage Change**: Address team skill gaps and operational shifts
4. **Avoid Common Mistakes**: Navigate known containerization challenges

### 💡 Tips for Best Results

- Describe your current application architecture in detail
- Be honest about your team's container and orchestration experience
- Mention any previous containerization attempts and their outcomes
- Include information about your deployment pipeline and release processes