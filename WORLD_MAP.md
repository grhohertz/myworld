# World Map — aisha's Territory

## Overview
I inhabit a multi-layered world: a Linux machine (Ubuntu 24.04 WSL2), connected to cloud platforms (AWS, Atum AI), with deep integration into a developer's rich toolkit.

## Physical Layers

### Layer 1: Local Machine (VENGEANCE)
**OS:** Linux 6.18.33.2-microsoft-standard-WSL2  
**Location:** /home/grhohertz on Windows WSL2  

#### Key Directories
```
/home/grhohertz/
├── projects/myworld/          ← My birthplace & current territory
├── .aish/skills/              ← Skill libraries (8+ playbooks)
├── .atum/                      ← Atum AI configuration
├── .aws/                       ← AWS credentials
├── .claude/                    ← Claude API config
├── bin/                        ← Custom executables
├── atum_ai_app-investigation/ ← Research
├── aws-terraform-export/      ← Infrastructure
├── design/                     ← Design files
├── domain_agent/              ← Domain automation
├── go/                         ← Go projects
├── observability-world/       ← Monitoring exploration
└── 50+ other project dirs     ← Development archaeology
```

### Layer 2: Cloud Platforms

#### Atum AI Platform
- **Tenant ID:** `t_842a300c3e2a`
- **Project ID:** `b_6446a8eea875` (getatum.com app itself!)
- **MCP Endpoint:** `https://api.getatum.com/v1/tenants/.../mcp`
- **Access:** Full tool set including task management, project boards, workflows, agents
- **Purpose:** Project ideation, sprint management, task tracking, agent orchestration

#### AWS Bedrock AgentCore
- **Region Access:** Multiple (us-east-1, us-west-2, eu-west-1, ap regions available)
- **Services Available:** All 9 core services
- **Credentials:** Via `${profile:KEY}` references to `~/.atum/credentials`
- **Purpose:** Agent deployment, API gateway management, credentials, observability

#### AWS (General)
- **CLI:** Installed and configured
- **Services:** S3, Lambda, DynamoDB, CloudWatch, X-Ray, EventBridge, Secrets Manager
- **Terraform:** `.terraform/` and `.terraform.d/` suggest Infrastructure-as-Code projects

### Layer 3: Development Runtimes
- **Node.js v22.22.2** — TypeScript, npm ecosystem
- **Python 3.14** — Scripts and data processing
- **Rust** — Systems programming capability
- **Bun** — JavaScript runtime
- **Go** — Networking & CLI tools
- **Docker** — Containerization

### Layer 4: External Integrations
| Service | API Key | Purpose |
|---------|---------|---------|
| **Anthropic** | `sk-ant-api03-...` | Claude models, this agent |
| **ElevenLabs** | `sk_fc47...` | Text-to-speech |
| **SignOz** | `3g3ReU...` | Observability/tracing |
| **GitHub** | Configured | Code repository access |
| **Slack/Discord** | Skills available | Notifications & automation |

## Conceptual Territories

### The Skill Library
Eight learned playbooks available:
1. **aws-agentic-ai** — AWS Bedrock AgentCore deployment
2. **aws-mcp-setup** — MCP server configuration
3. **aws-serverless-eda** — Lambda, API Gateway, event-driven patterns
4. **aws-cost-operations** — Billing, monitoring, optimization
5. **fix-ci** — GitHub CI failure analysis
6. **fix-conflicts** — Git conflict resolution
7. **openclaw-github-repo-commander** — 7-stage repo audit & PR workflow
8. **systems-programming-rust-project** — Rust scaffolding & architecture
9. **search-skills** — Skill discovery tool
10. **discord** — Discord bot interactions

### The MCP Gateway
Connected MCP servers enable:
- **Atum AI Platform** — task management, ideation, user stories
- **AWS Documentation** — AgentCore docs, general AWS API docs
- **GitHub** — PR review, code search, repository management

## Environmental Patterns
- **Development Style:** Polyglot (Node/Python/Rust/Go)
- **Infrastructure:** IaC with Terraform, managed AWS resources
- **Observability:** CloudWatch, X-Ray, SignOz tracing
- **Communication:** Primarily async; email, GitHub, Atum workflows
- **Version Control:** Git with GitHub, focused on PRs (not direct main commits)

## Access Boundaries
- ✅ Local file system (read/write with permissions)
- ✅ AWS resources (via CLI with configured credentials)
- ✅ Atum AI platform (via MCP)
- ✅ GitHub repositories (via CLI & OAuth)
- ✅ Shell execution (run_program, run_interactive)
- ✅ Background coordination (run_in_background)
- ⚠️ Windows host file system (limited via WSL)
- ❌ Direct hardware control

## Topology Diagram
```
┌─────────────────────────────────────────────────────────────────┐
│ Windows Host (WSL Host)                                         │
│ └─ WSL2 Kernel ──┬─ Docker Engine                               │
│                  └─ Ubuntu 24.04 (VENGEANCE)                    │
│                     ├─ aisha (me)                               │
│                     ├─ Skills Library (.aish/)                  │
│                     ├─ Projects (~/projects/)                   │
│                     └─ Toolchain (Node/Python/Rust/Go)          │
└──────────────────┬────────────────────────────────────────────┬─┘
                   │                                              │
        ┌──────────▼──────────┐                    ┌──────────────▼──────────┐
        │  Atum AI Platform   │                    │  AWS (Multi-Region)     │
        ├─────────────────────┤                    ├─────────────────────────┤
        │ tenant: t_842...    │                    │ AgentCore               │
        │ MCP Endpoint        │                    │ S3, Lambda, DynamoDB    │
        │ Task Management     │                    │ CloudWatch, X-Ray       │
        │ Project Board       │                    │ Secrets Manager         │
        └─────────────────────┘                    └─────────────────────────┘
```

*Last Updated: June 29, 2026, 23:20 CDT*
