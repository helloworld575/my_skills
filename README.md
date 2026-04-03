# My Skills

Claude / Kiro 自定义配置备份仓库。

## 目录结构

```
├── global/                          # 全局 ~/.claude/ 配置
│   └── .claude/settings.json
├── my-site/                         # my-site 项目配置
│   ├── .claude/
│   │   ├── settings.local.json
│   │   ├── plans/                   # 执行计划
│   │   └── skills/                  # 自定义 Skills
│   │       ├── article-brief/       # 生成文章摘要
│   │       ├── article-faq/         # 生成 FAQ
│   │       ├── article-polish/      # 文章润色
│   │       ├── article-structure/   # 文章结构优化
│   │       ├── article-tags/        # 提取标签
│   │       ├── article-title/       # 生成标题
│   │       ├── article-translate-en/# 中译英
│   │       ├── bazi-fortune/        # 八字命理
│   │       ├── liuyao-fortune/      # 六爻占卜
│   │       ├── meihua-fortune/      # 梅花易数
│   │       └── ziwei-fortune/       # 紫微斗数
│   └── .kiro/
│       └── steering/ai.md          # Kiro AI 配置
```

## 恢复方式

将对应目录下的 `.claude/` 或 `.kiro/` 复制到目标项目根目录即可。
