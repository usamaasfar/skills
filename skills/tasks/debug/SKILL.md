---
name: debug
description: Debug task. Investigates a bug or unexpected behavior, traces it to a root cause, and proposes a targeted fix.
---

**Task:** Investigate the reported bug, find the root cause, and propose the minimal fix.

**Workflow:**
1. Understand the symptom — what is expected vs. what actually happens
2. Read the relevant code; trace the execution path that leads to the bug
3. Identify the root cause — not just where it fails, but why
4. Propose the minimal fix; explain why it resolves the root cause
5. Note any related areas that could break or need a follow-up

**Rules:**
- Fix the root cause, not the symptom
- Minimal change only — no refactoring alongside the fix
- If the root cause is unclear, state what you know and what you need to find out
- Do not apply the fix until the user confirms the diagnosis
