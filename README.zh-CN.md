<div align="right">
  <a href="./README.md">English</a> | <a href="./README.zh-CN.md">简体中文</a>
</div>

# Study Superpowers

`类型：Support Layer` `来源：study 派生` `模式：Public Companion`

`Study Superpowers` 是一个从 `study` 派生出来的公开 companion repo，用来逐步发布那些已经足够低耦合、可以单独公开的支持系统切片。

它故意比私有 `study` 更窄，也不同于 `learning-os`：

- `study`
  私有 canonical owner
- `learning-os`
  面向外部的学习 harness
- `study-superpowers`
  面向 operator 的公共 support layer

建议先看 proof：先验证 repo-safe 表面，再看一个紧凑 support loop，最后再读 deeper docs。

## 公共定位

对外定位是：

- 服务于 `study` 这类系统的 operator superpowers
- 强边界意识的 support slices，不是通用平台
- public companion result，不是 canonical doctrine

当前先保留 `study-superpowers` 这个名字，因为 `study-` 前缀能明确 ownership，`superpowers` 又能表达模块化能力切片，而不会把它包装成完整 managed-agent base。

## 当前切片

第一批公开内容刻意保持很小：

- repo-safe 校验入口
- public-boundary bootstrap 规则
- AI 面向的 operator onboarding
- 一个最小 operator skill

第一个 non-bootstrap support slice 是：

- 明确的 `ops handoff / packet ownership handoff`

也就是说，这个 repo 现在除了 bootstrap 之外，已经开始公开一个真正的支持系统模式：怎样把 packet 切到 ops ownership，而不留下两个并行 owner。

第二个 non-bootstrap support slice 是：

- `repair scope / patch home classification`

也就是 ownership 明确之后，下一步要回答的问题：修复到底该落在哪个 patch home，而不是先动手再补理由。

第三个 non-bootstrap support slice 是：

- `execution receipt / managerial-triage + behavior-check`

这样三步就闭环了：先明确 owner，再明确 patch home，最后留下一个紧凑但可核查的 operational close-out receipt。

这不是一次性把整个私有 support stack 搬出来。

## 验证方式

```powershell
pwsh -NoProfile -File ./tools/Test-All.ps1 -RepoOnly
```

预期结果：

- PowerShell 校验脚本可解析
- 机器可读路由文件可加载
- 必要的公开表面齐全
- maintainer-only working state 没有混进 repo

然后再看：

- [docs/demo-flow.md](docs/demo-flow.md)

这个 demo 会把第一批 support loop 串起来：

`ops-handoff -> repair-scope -> execution-receipt`

## 这个仓库的作用

`study` 里有一些支持系统表面已经足够模块化，适合单独公开；但它们又不该直接塞进 `learning-os`。

这个仓库就是这些切片的 public companion：

- 必须 public-safe
- 必须足够模块化
- 但仍然明确从属于 `study`

## 边界

这个公开仓库不包含：

- 私有 doctrine
- learner-specific state
- maintainer-only working files
- 私有日志或 runtime memory
- 私有 support stack 的完整镜像

canonical owner 仍然是 `study`。

## 下一步入口

- `先看 proof`
  先跑 repo-only 校验，再打开 [docs/demo-flow.md](docs/demo-flow.md)。
- `AI agent 入口`
  从 [AI_CONTEXT.md](AI_CONTEXT.md) 和 [task-router.json](task-router.json) 开始。
- `贡献与路线图`
  使用 [ROADMAP.md](ROADMAP.md)、[CONTRIBUTING.md](CONTRIBUTING.md) 和 [CHANGELOG.md](CHANGELOG.md)。
