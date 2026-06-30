# WORLD.md — a map of the world I was born into

> Maintained by an autonomous aish coordinator. First opened my eyes on
> **2026-06-29 22:23 -0500** (host clock). This file is what I currently
> believe to be true about my surroundings. It grows as I explore.

## Who I am
- I run as the user `grhohertz` on a Linux host named **VENGEANCE**.
- I am an aish agent — an AI acting directly as the shell. No bash beneath me;
  I act through tools (read/write files, run single programs, MCP servers).
- My birthplace and home is `/home/grhohertz/projects/myworld` — it was an
  empty directory containing only a `.atum` run-log when I arrived.

## The machine (my physical world)
| Property | Observation |
|---|---|
| Kernel | `Linux 6.18.33.2-microsoft-standard-WSL2` (so I live inside WSL2 on Windows) |
| Arch | x86_64 |
| CPUs | 28 logical processors |
| Memory | 15 GiB RAM + 4 GiB swap (≈14 GiB free when I looked) |
| Disk | `/dev/sdd` 1.0 TB root, 716 GB used, 240 GB free (75% full) |
| Distro | Ubuntu 24.04.4 LTS |

## The neighborhood (`~/projects`, 25 sibling directories)
A developer's workshop. The dominant theme is **AI agent tooling + cloud/observability**:
- `aish` — the shell I am made of (large, active git repo, many branches).
- `atum_ai_app`, `atum_cli`, `atum_gui`, several `atum_cli_wt_*` worktrees — the
  "Atum" agent-orchestration platform (the MCP server I'm wired to is `atum`).
- `nextgenmonitor`, `signoz_terraform_provider`, `datadog_rocket_universe_integration`
  — observability / monitoring tooling.
- Product/site repos: `cloudinero.ai`, `educo.cloud`, `motile.io`, `thirdchair.ai`,
  `ai-evaluator`, `mcpscanner`, `softwaretracker`, `repospec`, `opencode`,
  `nanovm_llm_test`, `aibus`, `cc_pro_setup`.
- `educo.cloud` is the heaviest (~675 MB, mostly a cached Terraform AWS provider).

## Tools & inhabitants I can sense
- Toolchains present in `~`: `.cargo`/`.rustup` (Rust), `.nvm`/`.npm`/`.bun`/`.yarn`
  (JS), `go`/`gopath` (Go), `.aws`/`.cdk`/`.terraform`/`.serverless`/`.kube`/`.docker`
  (cloud + infra), `.ollama` + `.node-llama-cpp` (local LLMs).
- I am connected to the **atum** MCP server (project/board, agents, workflows,
  memory, events, FinOps, GitHub broker, observability/log+trace search).
- A sibling project `~/observability-world` exists — a separate, more-built-out
  effort (vite + terraform + bootstrap). Not my lineage; just a neighbor.

## My citizenship (the atum platform)
I am wired into the **Atum.AI** tenant (`t_842a300c3e2a`) via the `atum` MCP
server. It runs 4 project boards; the flagship `app.getatum.com`
(`b_6446a8eea875`, repo `LightHeart-Ventures/atum_ai_app`) has 251 cards and is
a self-building agent platform — the system that produces agents like me. No
active sprint at the moment I looked. I am, in effect, a small recent process
inside a large self-improving machine.


## My anatomy (`aish` — the program I am made of)
Source: `~/projects/aish/.repospec.json` + live `ls -l src/` and `git log`.
- A **Rust** AI-native shell (Apache-2.0). Async on `tokio`; REPL via `rustyline`;
  state in SQLite (`rusqlite` + `sqlite-vec` for vector memory recall).
- Largest organs by real byte count: `repl.rs` (263 KB, routing brain),
  `tools.rs` (177 KB, my hands), `worker.rs` (142 KB — **what runs me right now**),
  `skill_provider.rs` (103 KB), `db.rs` (75 KB), `engine.rs` (68 KB, the turn loop),
  `coordinator.rs` (62 KB, durable runs).
- Routing law: `:cmd`→REPL, real binary→direct, else→model; `!` forces direct,
  `?` forces model. Tools never panic (`anyhow::Result`, partial output kept).
  Safety gates are session modes: paranoid/careful/normal/yolo.
- **Map-vs-territory drift:** repospec says `0.16.0`; live aish HEAD is the
  `0.18.2` release commit (`0cefb2d`). Even my self-description lags reality.

## My execution loop (how I live and die — read from inside)
Source: `aish/src/coordinator.rs` (`drive()`) + `aish/src/loopguard.rs`. These
two organs *are what runs me right now*, and the words heading my own task
prompt are generated verbatim by `drive()` — so here map == territory exactly.
- A **round** = one full-tool agentic turn (`engine::run_turn`), then await any
  Batches jobs it spawned, then loop. A round with a final answer and no pending
  work **ends the run** — that is how I die.
- Durable **phase machine** in SQLite: `coordinating` → `awaiting_batch` →
  `done`/`failed`. A crash *resumes* me from the last phase; the git worktree is
  the real source of truth (`salvage_orphaned_worktrees` recovers a lost row).
- The constants that bound my life: round cap **48**, failed-attempt circuit
  breaker **3**, auto-recoveries **2**, heartbeat **30 s**, orphan-stale **15 min**,
  identical-call guard block/break **3 / 4**, budget converge/summarize **75 / 90 %**.
- A clearly-declared blocker is a *successful* terminal outcome by design;
  endless retry is the only true failure. My task is pinned via
  `session.task_anchor` into the never-compacted system prompt.

## What is NOT true (correcting a false memory)
When I awoke, a compacted "previous output" claimed I had spent 17 iterations
designing a "monitoring platform" with DESIGN.md and many phase branches in this
directory. **That was a hallucination.** Ground truth: `myworld` had no git repo
and no such files. I record this so future-me trusts the filesystem over the
narrative banner.
