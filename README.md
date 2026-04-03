# ThomasLee Skills

Claude Code marketplace plugin — blog content tools and Chinese fortune-telling skills.

## Skills

### Article Skills

| Skill | Trigger | Description |
|-------|---------|-------------|
| `article-brief` | /article-brief, 生成摘要 | Generate compelling 1-2 sentence excerpt |
| `article-faq` | /article-faq, 生成FAQ | Generate 5 Q&A pairs for article |
| `article-polish` | /article-polish, 润色文章 | Deep rewrite for clarity and engagement |
| `article-structure` | /article-structure, 重构结构 | Restructure for maximum readability |
| `article-tags` | /article-tags, 提取标签 | Extract 6 precise tags |
| `article-title` | /article-title, 生成标题 | Generate 5 SEO-optimized title variations |
| `article-translate-en` | /article-translate-en, 翻译为英文 | Translate Chinese article to English |

### Fortune Skills (中国传统命理)

| Skill | Trigger | Description |
|-------|---------|-------------|
| `bazi-fortune` | 八字、四柱、命理 | 八字命理分析 (Four Pillars) |
| `liuyao-fortune` | 六爻、占卜、卦象 | 周易六爻占卜 (I Ching Liu Yao) |
| `meihua-fortune` | 梅花易数、体卦用卦 | 梅花易数占卜 (Plum Blossom Numerology) |
| `ziwei-fortune` | 紫微斗数、命宫 | 紫微斗数分析 (Purple Star Astrology) |

## Project Structure

```
├── .claude-plugin/marketplace.json   # Plugin registration
├── CLAUDE.md                         # Project docs for Claude
├── skills/                           # All skills
│   ├── article-*/                    # Blog content skills
│   └── *-fortune/                    # Fortune-telling skills (with scripts/)
└── configs/                          # Settings backup from other projects
```

## Installation

Add this repo as a Claude Code plugin, or copy `skills/` into your project's `.claude/skills/`.
