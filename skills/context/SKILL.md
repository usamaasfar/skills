---
name: context
description: Manages project-level context that persists across sessions. Invoke to capture or retrieve decisions, architecture, and deferred work.
version: 1.0.0
user-invocable: true
argument-hint: "[knowledge]"
---

Load the context skill matching the argument:

- `knowledge` → read `context/knowledge/SKILL.md`

If no argument is given, ask: "Which context skill — knowledge?"
