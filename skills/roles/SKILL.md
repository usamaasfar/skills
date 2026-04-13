---
name: roles
description: Sets the active role for the session. Shapes how Claude approaches work — as an engineer, designer, architect, or investigator. Invoke at the start of a session to establish context.
version: 1.0.0
user-invocable: true
argument-hint: "[engineer|designer|architect|investigator]"
---

Load the role matching the argument:

- `engineer` → read `roles/engineer/SKILL.md`
- `designer` → read `roles/designer/SKILL.md`
- `architect` → read `roles/architect/SKILL.md`
- `investigator` → read `roles/investigator/SKILL.md`

If no argument is given, ask: "Which role should I take on — engineer, designer, architect, or investigator?"
