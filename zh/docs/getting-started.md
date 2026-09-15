# 快速开始

需要 Node.js 22 或更高版本，以及你选择的 agent 工具。下列命令针对已公开的候选发行包；发布前先使用发行候选包的本地文件方式。

## 1. 安装方法

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 install --product core --agent codex --scope project --project /path/to/workspace --version 1.0.0-rc.1
```

将 `/path/to/workspace` 换成你的项目路径。`--agent` 可选择 `codex`、`claude`、`cursor`、`copilot`、`gemini` 或 `opencode`。首次使用推荐项目安装；全局安装选择 `--scope global`。安装能力不等于已采纳哲学。

## 2. 检查安装与发现

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 check --product core --agent codex --scope project --project /path/to/workspace
```

在该项目中打开 agent，确认其技能列表或显式加载入口能够找到相关方法。文件检查通过只说明安装完整性；工具真实调用的支持状态以候选发行的验证矩阵为准。遇到项目与全局重名安装时，先按照检查结果解决冲突。

## 3. 显式选择哲学

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 init --product core --agent codex --scope project --project /path/to/workspace --philosophy core
```

阅读预览，确认目标与哲学文本后，再在相同命令上增加 `--apply --plan-sha256 <preview-plan-hash>`，使用该预览返回的准确 `planSha256` 值。哲学或指令文件发生变化后，必须重新预览并决定。已有哲学不得被静默替换；集合根不代表已选择领域。方法安装和项目哲学采纳分别管理。

## 4. 完成一次只读评估

向 agent 提交实际需要评估的材料，并要求：

> 使用 `organon-core-assess` ，以本项目显式选择的 `PHILOSOPHY.md` 为已采纳基准，评估这份材料的根据、适用范围和潜在冲突。给出只读报告，不修改文件，也不采纳提议。

检查报告是否明确指出基准、理由和限度。评估结论不自动授权哲学修订；独立复核缺失时，应保留未完成状态。

## 离线包与后续管理

从对应 GitHub Release 下载包并解压。每个产品包内的 `installer/organon.mjs` 都可以直接由 Node 运行；只有 AgentOrganon 的 npm 包注册 `organon` 命令。

```sh
node /path/to/extracted/package/installer/organon.mjs install --product core --agent codex --scope project --project /path/to/workspace --from /path/to/shendeguize-organon-core-1.0.0-rc.1.tgz
```

相同入口提供 `update`、`rollback` 和 `uninstall`。更新前检查完整性；用户修改或已有文件冲突会停止更新。卸载保留用户修改和已采纳的项目哲学。

[理解概念与边界](https://shendeguize.github.io/OrganonCore/zh/understand) · [GitHub Releases](https://github.com/shendeguize/OrganonCore/releases)
