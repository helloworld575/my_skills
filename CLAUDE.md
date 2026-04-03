# CLAUDE.md

Claude Code marketplace plugin providing blog content and Chinese fortune-telling skills. Version: **1.0.0**.

## Architecture

Skills are exposed through the `thomaslee-skills` plugin in `.claude-plugin/marketplace.json`.

| Group | Description |
|-------|-------------|
| Article Skills | Blog content generation (brief, FAQ, polish, structure, tags, title, translate) |
| Fortune Skills | Chinese metaphysics divination (八字、六爻、梅花易数、紫微斗数) |

Each skill contains `SKILL.md` (YAML front matter + docs), optional `scripts/`.

## Script Directory

Fortune skills use Node.js scripts in `scripts/` subdirectory. `{baseDir}` = the SKILL.md's directory path.

Execute: `node {baseDir}/scripts/calc.js [options]`

## Key Dependencies

- **Node.js**: Required for fortune calculation scripts
- **Claude API**: Fortune skills optionally call Claude API for AI-powered analysis (configured via `CLAUDE_API_KEY` or `ANTHROPIC_API_KEY`)

## Skill Loading Rules

| Rule | Description |
|------|-------------|
| **Load project skills first** | Project skills override system/user-level skills with same name |
| **{baseDir} resolution** | Replace `{baseDir}` with the actual directory path of the SKILL.md file |

## Configs Backup

`configs/` contains backup of settings from other projects (global Claude settings, my-site project settings, Kiro steering). These are not skills — just configuration backups for reference.
