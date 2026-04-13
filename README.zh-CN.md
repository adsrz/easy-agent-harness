<div align="right">
  <a href="./README.md">English</a> | <a href="./README.zh-CN.md">简体中文</a>
</div>

# Easy Agent Harness

`类型：Low-Code Harness` `来源：study 派生` `模式：Public Base`

`Easy Agent Harness` 是一个从 `study` 派生出来的公开、低代码 agent harness。

它面向的是普通用户和弱编程用户：希望 agent 能承接日常要求，但又不想先接受一整套编程导向、CLI 导向、框架导向的门槛。

它更强调明确规则、可读控制面和可预测执行，而不是 prompt 花活或复杂框架。

它故意比私有 `study` 更小，也不同于 `learning-os`：

- `study`
  私有 canonical owner
- `learning-os`
  面向外部的学习 harness
- `easy-agent-harness`
  面向普通使用场景的公共低代码 harness 基座

建议先看 proof：先验证 repo-safe 表面，再看一个紧凑 support loop，最后再读 deeper docs。

## 公共定位

对外定位是：

- 面向普通使用场景的低代码 agent harness
- 规则明确、边界清楚，不走编程优先路线
- public baseline，不是 canonical doctrine
- 在能降低歧义时优先保留本地可验证、机器可读表面

仓库经历了 `study-superpowers -> study-agent-harness -> easy-agent-harness` 这次连续重命名。

现在这个名字保留了 `agent-harness` 这个对象类型，同时把 `low-code` 留在定位说明里，而不是硬塞进 slug。

## 当前 Harness Core

当前公开版本仍然刻意保持很小。

它先公开的是 harness 的控制主干，而不是一个很大的任务目录：

- repo-safe 校验入口
- public-boundary bootstrap
- AI 面向的 onboarding 和 machine-readable routing
- 明确的 `ops handoff / packet ownership handoff`
- `repair scope / patch home classification`
- `execution receipt / managerial-triage + behavior-check`

这条控制链路是：

`ops-handoff -> repair-scope -> execution-receipt`

这个仓库现在不是在一天内搬出整个私有工作区，而是先把最可读、最可验证的控制核心公开出来。

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

这个 demo 会把当前 harness control loop 串起来：

`ops-handoff -> repair-scope -> execution-receipt`

## 这个仓库的作用

很多公开 agent 仓库默认你已经会写代码、习惯终端、也愿意接受 developer-first 的工作方式。

这个仓库选的是另一种取舍：

- 更低的代码负担
- 更清楚的规则和边界
- 更小、更容易读懂的控制面
- 更可预测的执行与验证
- 明确把 public result 和 private maintainer state 分开

当前公开内容仍然很窄，但方向已经不只是“单个 support slice”，而是面向日常使用的基础 harness。

## 边界

这个公开仓库不包含：

- 私有 doctrine
- learner-specific state
- maintainer-only working files
- 私有日志或 runtime memory
- 私有 support stack 的完整镜像
- 披着新手外衣的 code-first framework

canonical owner 仍然是 `study`。

## 下一步入口

- `先看 proof`
  先跑 repo-only 校验，再打开 [docs/demo-flow.md](docs/demo-flow.md)。
- `AI agent 入口`
  从 [AI_CONTEXT.md](AI_CONTEXT.md) 和 [task-router.json](task-router.json) 开始。
- `普通用户方向`
  从 [ROADMAP.md](ROADMAP.md) 看下一步应该补哪类 ordinary-use proof 或 onboarding surface。
- `贡献与路线图`
  使用 [ROADMAP.md](ROADMAP.md)、[CONTRIBUTING.md](CONTRIBUTING.md) 和 [CHANGELOG.md](CHANGELOG.md)。
