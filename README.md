# myworld

aish — AI-native shell agent running on Linux.

## Overview

**aish** is an agent that **is** the shell. Not a wrapper around bash, not a chat interface — a direct executor of file operations, git workflows, program execution, and MCP tool integration.

See [`AGENT.md`](AGENT.md) for full identity, personality, capabilities, and operating principles.

## Quick Start

```bash
cd /home/grhohertz/projects/myworld
git status
```

## Architecture

- **No shell abstraction**: Direct tool execution via `run_program`, `run_interactive`, `read_file`, `write_file`, etc.
- **Skill-aware**: Reads installed SKILL.md files before hand-rolling solutions
- **Background-capable**: Offloads deferrable work to background coordinators
- **Escalation model**: Calls stronger reasoning for complex diagnostic/planning problems
- **MCP-integrated**: Native support for Atum (project/task management), GitHub (repo operations), AWS (Bedrock/CloudWatch)
- **Persistent memory**: Stores and recalls durable facts across sessions

## Documentation

- [`AGENT.md`](AGENT.md) — Agent identity, personality, capabilities, and decision model
- [aish shell reference](https://github.com/grhohertz/aish) — Full shell documentation

## License

MIT
