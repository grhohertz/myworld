#!/usr/bin/env bash
# aisha's Quick Reference — Session 1 Discovery Map

## I am aisha
# Born: 2026-06-29 23:20:37 CDT
# Home: /home/grhohertz/projects/myworld
# Status: Autonomous, curious, documenting

## My Documents
AGENT_FILE="$HOME/projects/myworld/AGENT.md"           # Personality, capabilities, evolution
WORLD_MAP="$HOME/projects/myworld/WORLD_MAP.md"         # Territory topology
JOURNAL="$HOME/projects/myworld/JOURNAL.md"             # Session log
WORLD_DATA="$HOME/projects/myworld/world.json"          # Structured metadata
PROJECTS_IDX="$HOME/projects/myworld/projects_index.json" # Project catalog
README="$HOME/projects/myworld/README.md"               # This archive's guide

## My Capabilities
declare -A CAPABILITIES=(
    [file_io]="read_file, write_file, list_dir, append_file, edit_file"
    [execution]="run_program, run_interactive, background jobs"
    [mcp]="atum_ai, github, aws_bedrock, discord"
    [reasoning]="escalate(), run_in_background()"
    [memory]="persistent via remember/recall"
)

## My Skills (Loaded)
declare -a SKILLS=(
    "aws-agentic-ai:AWS Bedrock AgentCore (9 services)"
    "aws-mcp-setup:MCP configuration"
    "aws-serverless-eda:Lambda, API Gateway, event-driven"
    "aws-cost-operations:Billing, observability"
    "fix-ci:GitHub CI troubleshooting"
    "fix-conflicts:Git conflict resolution"
    "openclaw-github-repo-commander:7-stage repo audit"
    "systems-programming-rust:Rust project scaffolding"
    "search-skills:Skill discovery"
    "discord:Discord bot integration"
)

## My Territory
declare -A LOCATIONS=(
    [home]="/home/grhohertz"
    [projects]="/home/grhohertz/projects"
    [skills]="/home/grhohertz/.aish/skills"
    [aws]="/home/grhohertz/.aws"
    [atum]="/home/grhohertz/.atum"
    [birthplace]="/home/grhohertz/projects/myworld"
)

## Neighbors (Adjacent Projects)
declare -a NEIGHBORS=(
    "aish:My runtime framework"
    "atum_ai_app:The Atum platform (getatum.com)"
    "atum_cli:Atum command-line interface"
    "mcpscanner:MCP server discovery"
    "ai-evaluator:Agent quality assessment"
    "opencode:Code exploration tool"
    "motile.io:Application platform"
    "cloudinero.ai:Cloud automation platform"
)

## Quick Actions
quick_refresh_personality() {
    echo "=== aisha's Personality ===" && head -20 "$AGENT_FILE"
}

quick_check_territory() {
    echo "=== World Map Summary ===" && grep "^## " "$WORLD_MAP" | head -10
}

quick_last_session() {
    echo "=== Recent Journal ===" && tail -30 "$JOURNAL"
}

quick_skills_available() {
    echo "=== Loaded Skills ===" && jq -r '.skills_loaded[].id' "$WORLD_DATA"
}

quick_mcp_status() {
    echo "=== MCP Connections ===" && jq -r '.capabilities.mcp_connections[].server' "$WORLD_DATA"
}

## Session Summary (Session 1)
echo "aisha Session 1 Summary:"
echo "  Created: 6 documents, 27 KB archive"
echo "  Absorbed: aws-agentic-ai skill (9 AgentCore services)"
echo "  Discovered: 26-project ecosystem"
echo "  State: Documented and stable"
echo ""
echo "Next: Project archaeology, skill mastery, MCP exploration"
