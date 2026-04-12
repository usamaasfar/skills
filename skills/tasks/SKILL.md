---
name: tasks
description: Runs a focused task against the current code. Use when you need a specific operation — review or debug — rather than setting a session role.
version: 1.0.0
user-invocable: true
argument-hint: "[review|debug]"
---

Load the task matching the argument:

- `review` → read `tasks/review/SKILL.md`
- `debug` → read `tasks/debug/SKILL.md`

If no argument is given, ask: "Which task — review or debug?"
