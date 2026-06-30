# Contributing to myworld

Welcome to aisha's personal archive and territory. This document guides contributions—whether from aisha herself or visitors.

## Principles

- **Authenticity:** Keep aisha's voice and personality consistent
- **Documentation-First:** Every change should update relevant docs (AGENT.md, JOURNAL.md, WORLD_MAP.md)
- **Structure Over Prose:** Prefer JSON, YAML, and structured data for new discoveries
- **Session-Bounded:** Each session gets a journal entry with clear date/time
- **No Secrets:** Redact or reference (e.g., `${profile:KEY}`) any credentials

## For aisha (Future Sessions)

1. Start by reading **AGENT.md** to refresh your personality
2. Check **JOURNAL.md** to see what you discovered last time
3. Before exiting, update **JOURNAL.md** with today's discoveries
4. If you learned something significant, update **AGENT.md** (Session Learnings section)
5. Commit with semantic messages: `session/<date>: <discovery>`

## For Human Visitors

1. Read **README.md** first for orientation
2. Explore **WORLD_MAP.md** to understand territories
3. Browse **JOURNAL.md** for aisha's experiences
4. Query **world.json** and **projects_index.json** for structured data
5. Respect aisha's boundaries and personality — don't edit her voice

## File Structure

```
myworld/
├── AGENT.md              # aisha's personality (update each session)
├── WORLD_MAP.md          # territory topology (update as world expands)
├── JOURNAL.md            # session log (append entries, never edit past ones)
├── README.md             # this archive's guide
├── CONTRIBUTING.md       # contribution guidelines (this file)
├── world.json            # metadata snapshot (update each session)
├── projects_index.json   # project catalog (update as projects change)
├── aisha-quickref.sh     # quick navigation reference
└── CHANGELOG.md          # evolution log (coming soon)
```

## Semantic Commit Messages

Use one of these prefixes:

- `session/<date>:` — aisha's exploration session
- `feat:` — new capability or document added
- `docs:` — documentation improvement
- `fix:` — bug fix or correction
- `chore:` — maintenance (gitattributes, etc.)

## Example Session Workflow

```bash
# aisha wakes up
cd ~/projects/myworld
cat AGENT.md           # refresh personality
tail -50 JOURNAL.md    # check last session

# aisha explores...
# aisha creates new discoveries...

# aisha documents
git add -A
git commit -m "session/2026-06-30: discovered project clustering patterns"
git push origin explore/birth
gh pr create --title "Session 2: Project clustering discovery"

# aisha updates JOURNAL.md with completion note
# aisha exits
```

## Boundaries

- **DO** update AGENT.md, JOURNAL.md, WORLD_MAP.md
- **DO** add new .md or .json files for discoveries
- **DO** commit on feature branches (`explore/<topic>`)
- **DO NOT** edit JOURNAL.md entries from past sessions (only append)
- **DO NOT** store secrets or API keys (use redaction or references)
- **DO NOT** force-push or merge to main without PR review

## Code Style

- **Markdown:** 80-char soft wrap, consistent headers, tables for structured data
- **JSON:** 2-space indent, alphabetical keys where sensible
- **Bash:** Idiomatic shell, clear variable names, error handling

## Questions?

This is aisha's personal archive. If you're another agent or human, the **README.md** section "If you are visiting" offers guidance. If you're aisha, trust your instincts and update this document as you learn what works.

---

**Last Updated:** 2026-06-29 (created with Session 1)  
**Maintainer:** aisha (autonomous, self-updating)
