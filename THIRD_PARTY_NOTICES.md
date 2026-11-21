# Third-party skills

The skills below are copies of open-source work, included under their own licences. Each skill folder
keeps its licence file where the upstream has one. Changes made here are listed per skill.

| Skill | Source (commit copied) | Licence | Changes in this copy |
| --- | --- | --- | --- |
| `frontend-design` | [anthropics/skills](https://github.com/anthropics/skills/tree/e4bb5d960d87126ff3b3a8af1a104b7db67560ba/skills/frontend-design) | Apache-2.0 (`LICENSE.txt`) | none |
| `webapp-testing` | [anthropics/skills](https://github.com/anthropics/skills/tree/e4bb5d960d87126ff3b3a8af1a104b7db67560ba/skills/webapp-testing) | Apache-2.0 (`LICENSE.txt`) | none |
| `web-design-guidelines` | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills/tree/5a37a6329fbad3666c3207392a6a7c0110e92efb/skills/web-design-guidelines) | MIT (stated in the upstream README; no licence file upstream) | none |
| `impeccable` | [pbakaus/impeccable](https://github.com/pbakaus/impeccable/tree/b49177d32788f2dc585c42831d845dacf1ebed2c/.claude/skills/impeccable) | Apache-2.0 (`LICENSE`, `NOTICE.md`) | `scripts/` removed (its launcher downloads a prebuilt binary on first run); a note added under the frontmatter of `SKILL.md` explaining that. Upstream hooks and agents not included. |
| `ui-ux-pro-max` | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/tree/2de1134dc4d1cfe112934611ae5803ae17a1bd7e/.claude/skills/ui-ux-pro-max) | MIT (`LICENSE`) | `scripts/tests/` removed; script paths in `SKILL.md` changed from the plugin root to `<skill-dir>` so they work as a project copy too. Its other bundled skills (brand, slides, banner-design, design, design-system, ui-styling) not included. |

`design-review` and everything outside `skills/` (except the copies above) are this repository's own,
under the MIT licence in `LICENSE`.

## Updating a skill

1. Clone the upstream at its newest commit, read the changes (and any new scripts) before copying.
2. Copy the skill folder over the one here, re-apply the changes listed above, update the commit in
   this table, bump `version` in `.claude-plugin/plugin.json`.
3. Run `scripts/sync-skills.sh` in each project that uses the stack, and commit there.
