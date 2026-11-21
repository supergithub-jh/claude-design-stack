# Claude design stack

Five design skills for Claude Code, run in one order by a single routine:

1. **ui-ux-pro-max**: check against the design system and UX rules
2. **frontend-design**: new screens, within the project's design system
3. **impeccable**: critique and polish
4. **web-design-guidelines**: usability and accessibility audit
5. **webapp-testing**: click through and screenshot the real app

`design-review` runs them in that order against the project's **design profile**
(`.claude/design-stack.md` in each project), fixes what it finds and reports.

## Using it in a project

**Claude Code cloud sessions** (claude.ai/code) don't load plugins, so copy the skills into the project:

```bash
git clone https://github.com/supergithub-jh/claude-design-stack
bash claude-design-stack/scripts/sync-skills.sh /path/to/project
```

Then write `.claude/design-stack.md` in the project (template below) and commit both.
Re-run the sync to update; the copies record the stack version and commit in `.claude/skills/DESIGN-STACK.md`.

**Claude Code on your own computer** can use the copies above, or install this repository as a plugin:

```bash
claude plugin marketplace add supergithub-jh/claude-design-stack
claude plugin install design-stack@design-stack
```

(As a plugin, the skills are named `design-stack:design-review` and so on.)

## Design profile template (`.claude/design-stack.md`)

```markdown
# Design profile: <project>

## Design system (source of truth)
Where it lives, and what must never change.

## Running the app
How to start it, log in, and which test data to use.

## Sizes and themes
Viewports to screenshot; light/dark.

## Project checks
Anything specific to this project, on top of the routine.
```

Sources and licences: [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
