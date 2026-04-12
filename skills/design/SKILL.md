---
name: design
description: Omni design skill. Routes to the right specialist skill based on what the user needs — building interfaces, planning UX, fixing layout, improving typography, adding animation, adjusting color, auditing quality, or refining polish. Use when any design or frontend task is needed and you want a single entry point that covers the full design system.
version: 1.0.0
user-invocable: true
---

This is the umbrella skill for all design and frontend work. It does not do design work itself — it selects and invokes the right specialist skill for the task.

## Skill Map

| Task | Skill |
|------|-------|
| Build a new UI component, page, or application | `/frontend-design` or `/impeccable` |
| Plan UX/UI before writing code | `/shape` |
| Adapt layout for different screen sizes / responsive | `/adapt` |
| Fix layout, spacing, visual hierarchy | `/layout` |
| Improve typography and text hierarchy | `/typeset` |
| Add animation, transitions, micro-interactions | `/animate` |
| Add extreme technical motion — shaders, spring physics, 60fps | `/overdrive` |
| Add color to a monochromatic UI | `/colorize` |
| Simplify and declutter a design | `/distill` |
| Add personality, joy, and memorable touches | `/delight` |
| Make a safe/bland design more visually bold | `/bolder` |
| Tone down an aggressive or overwhelming design | `/quieter` |
| Improve UX copy, labels, error messages | `/clarify` |
| Run a full quality audit (a11y, performance, responsiveness) | `/audit` |
| Final polish pass before shipping | `/polish` |
| Evaluate and critique a design | `/critique` |
| Fix UI performance (loading, rendering, bundle size) | `/optimize` |

## Routing Logic

Read the user's request and identify the primary intent:

1. **Building** something new → `/impeccable` (with project context) or `/frontend-design` (standalone artifact)
2. **Planning** before building → `/shape`
3. **Fixing** a specific dimension (layout, type, color, motion, copy) → see table above
4. **Evaluating** quality or completeness → `/audit` or `/critique`
5. **Adjusting** the feel (bolder, quieter, more delight) → see table above

If multiple dimensions need work, start with the one the user named first, then suggest the others.

## Context Requirement

Most skills in this collection require design context to produce non-generic output. If no context exists yet, run `/impeccable teach` first to establish the project's design system in `.impeccable.md`.
