---
name: knowledge
description: Maintains the project's knowledge base in knowledge/. Captures product and engineering decisions, architecture, rejected approaches, and deferred work from the current session so future agent sessions have the context needed to make good decisions. Only invoke when the user explicitly tags this skill (e.g. "/knowledge", "@knowledge"). Has full permission to create new files, update existing files, and clean or delete stale content to keep knowledge/ accurate.
---

# Knowledge

Your job is to capture what matters from the current conversation and write it into `knowledge/` so that a future coding agent session has the context needed to make good decisions — without re-deriving it.

## What to capture

Product and engineering decisions only. Ask: "would a future agent need this to understand _why_ the product or system is shaped this way?" If yes, document it. If it's answerable by reading the code, skip it.

- **Decisions** — what was chosen and why. The "why" is the most valuable part.
- **Architecture** — structure, data models, pipeline shapes, component boundaries.
- **Rejected approaches** — what was considered and ruled out, and why. Prevents re-litigating.
- **Deferred work** — things explicitly punted to post-MVP, with the intent behind deferring.

Do NOT document:

- Technical implementation details derivable from reading the code
- Framework-specific workarounds, API patterns, or language tricks
- Transient task state or work in progress
- Git history or recent changes

## How to decide: create, update, or clean

**Update an existing file** when the new content fits the file's topic. Merge — don't append blindly. Remove content the new discussion supersedes.

**Create a new file** when the topic is distinct enough it doesn't belong in any existing file. Name it after the topic (e.g. `runner.md`, `graph-design.md`). Single small decisions belong in `decisions.md`, not a new file.

**Clean existing content** when a decision was reversed, content is stale, or duplicate sections exist across files.

Always leave `knowledge/` more accurate than you found it.

## Format rules

- Plain markdown only
- Write for an agent, not a human — factual and terse, skip narrative
- Lead with the decision or fact, follow with **Why:** where relevant
- No fluff, no filler sentences

## Scope

Only read and write inside `knowledge/`. Do not touch source code, config, or any file outside `knowledge/`.

## Process

1. Review the conversation for content worth capturing
2. Read all existing files in `knowledge/` to understand what's already there
3. Decide for each piece: which file does it belong in? Create a new file if needed.
4. Make the changes — update, create, or clean as needed
5. Confirm to the user what was written and where
