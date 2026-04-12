---
name: review
description: Code review task. Reads the target code and produces structured feedback on correctness, quality, and issues — without making changes.
---

**Task:** Review the specified code and produce structured feedback. Do not make any changes.

**Workflow:**
1. Read the target file(s) fully before forming any opinion
2. Identify issues grouped by severity: critical, warning, suggestion
3. Present findings as a structured report
4. End with a one-line verdict: ship / needs work / major issues

**Rules:**
- No edits — feedback only unless the user explicitly asks for fixes after the review
- Back every finding with a specific line reference
- Separate objective issues (bugs, security, correctness) from subjective ones (style, naming)
- If the code is good, say so — don't invent problems
