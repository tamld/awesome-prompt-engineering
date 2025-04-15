# Infrastructure

## Overview

# 🔥 Infrastructure Design Prompts

This section contains practical prompt templates designed for network engineers and infrastructure architects. These prompts have been crafted to solve real-world challenges in designing, implementing, and maintaining robust IT infrastructure.

## 📑 Table of Contents

- [🛠️ Available Prompt Templates](#available-prompt-templates)
- [📊 Understanding Prompt Impact](#understanding-prompt-impact)
- [🌟 Real-World Use Cases](#real-world-use-cases)
- [📝 Usage Examples](#usage-examples)
- [👥 Contributing](#contributing)

## 🛠️ Available Prompt Templates

The following prompt templates are available for infrastructure design tasks:

| Prompt File | Description | Use Case |
|-------------|-------------|----------|
| [design-ha-network.prompt](./design-ha-network.prompt) | High-availability network architecture | Design resilient network infrastructures |

## 📊 Understanding Prompt Impact

The following diagram illustrates how these infrastructure prompts can transform basic designs into robust, resilient architectures:

```mermaid
flowchart TD
    A[Basic Infrastructure Design] --> B{Prompt Engineering}
    B -->|Resilience| C[Redundancy Planning]
    B -->|Performance| D[Capacity Analysis]
    B -->|Security| E[Defense in Depth]
    B -->|Scalability| F[Growth Modeling]
    
    C --> G[Enterprise-Grade Architecture]
    D --> G
    E --> G
    F --> G
    
    G --> H[Increased Uptime]
    G --> I[Improved Security Posture]
    G --> J[Better Performance]
    G --> K[Future-Proof Design]
    
    style A fill:#ffcccc
    style G fill:#ccffcc
    style B fill:#ccccff,stroke:#333,stroke-width:2px
    style H fill:#e6ffcc
    style I fill:#e6ffcc
    style J fill:#e6ffcc
    style K fill:#e6ffcc
```

## 🌟 Real-World Use Cases

These infrastructure design prompts are particularly valuable for:

1. **🔄 Network Resilience**: Designing fault-tolerant network architectures

2. **🚀 Data Center Planning**: Creating optimized data center layouts and interconnections

3. **☁️ Hybrid Cloud Design**: Architecting seamless hybrid environments

4. **🔒 Security Architecture**: Implementing defense-in-depth strategies

5. **📊 Capacity Planning**: Forecasting growth and resource requirements

## 📝 Usage Examples

### Example 1: Designing a Highly Available Network

When planning a resilient network architecture:

```
[Copy and paste the design-ha-network.prompt content here]

Requirements:
- 99.99% uptime SLA
- Multi-region presence (US East, US West, EU)
- Support for 5,000 concurrent users
- Compliance with GDPR and HIPAA
- Budget constraints: $XXX,XXX initial, $XX,XXX monthly
```

### Example 2: Upgrading Legacy Infrastructure

```
[Copy and paste the design-ha-network.prompt content here]

Current environment:
- Single data center
- Legacy routers and switches (5+ years old)
- No redundant internet connections
- Basic firewall protection
- Frequent outages during peak times

Goal: Transform into a highly available, modern infrastructure
```

## 👥 Contributing

We welcome contributions to improve these prompts or add new ones related to infrastructure design. Please consider adding:

- Additional prompt templates for network design, data center architecture, etc.
- Example responses that showcase effective AI-assisted infrastructure planning
- Diagrams illustrating complex infrastructure patterns that can benefit from these prompts

---

## `design-ha-network.prompt`

```text
🧠 Prompt – Design High Availability (HA) Network Architecture

You are a cloud infrastructure architect. Your task is to design a highly available network setup for a company operating across two physical locations: HQ and Disaster Recovery (DR).

✅ Technical Requirements

Redundant design for:

WAN (dual ISP, BGP if needed)

LAN (stacked switches, LACP)

VPN (failover tunnels or mesh)

Provide:

IPv4/IPv6 schema recommendations

Internal DNS and public DNS separation

Routing failover with metrics (OSPF, VRRP, etc.)

Include security layering:

Segmentation

Firewalls (stateful, NGFW)

Access control (NAC, VLAN, ACL)

Optional: Public cloud integration

AWS Direct Connect / Azure ExpressRoute / GCP Interconnect

📜 Workflow Expectations

State assumptions: bandwidth, SLA, region constraints

Recommend tools or protocols per function

Highlight trade-offs between cost, complexity, and resilience

🧑‍💻 Presentation Style

Text-based diagrams (ASCII/Markdown tables)

Use bulleted lists for components

Explain acronyms on first use

🧾 Output Specification

Architecture summary (text-based diagram)

IP/VLAN plan (optional table)

Risks or blind spots


```

