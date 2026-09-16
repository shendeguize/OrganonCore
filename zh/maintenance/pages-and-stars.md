# Pages 与 GitHub 星标实测

已验证发行版使用独立的 `site-data` 分支。`main` CI 生成开发产物。可以从 `main` 手动运行 **Preview Pages**（`preview-pages.yml`），构建并检查当前源码后直接部署，但不生成发行收据。预览站点不是已验证发行版，不更新 `site-data` 或星标历史，并可被后续预览或已验证发行版替换。部署预览会替换 Pages 公开地址当前提供的站点，直至另一次部署成功。

## 发布已发行站点

三个产品完成全部发行门禁并在 npm 与 GitHub 公开后，从经过审查的 `main` 或 `release/1.0.0` 手动运行 **Verified release Pages**（`pages.yml`）。提供精确产品版本及公开 `release-manifest.json` 的规范化 SHA-256 摘要。

工作流下载总入口仓库的公开发行包，检查完整证据闭包，再核对三个产品的 npm 与 GitHub 分发。它检出本站的精确源码 commit 和清单中的 Core 主题 commit，在临时 runner 目录安装锁定的站点构建依赖，构建并检查双语站点。工作区 gitlink 和领域仓库的 Core 工具固定版本必须与清单一致。

检查全部通过后才替换 `site-data/public/`，并保留已观察的星标历史。`recommended-release.json` 绑定发行清单、源码和 Core commit、验证时间及每个不可变公开文件的 hash。旧版本或同版本不同内容不能覆盖推荐版本。工作流上传该目录，通过 `github-pages` 环境部署。

Core 与 AdvisedOrganons 从 `release/tooling.json` 的 `workspace.repository`、`workspace.commit` 加载操作工具；AdvisedOrganons 还记录 `core`。这些字段必须是经过审查的完整 commit。实际网站主题始终取自发行清单的 Core 来源。

## 每日实测

**Observed stars**（`stars.yml`）每日 02:17 UTC 运行，也可手动触发。它读取 GitHub 的真实总数，每个 UTC 日期最多向 `site-data/stars.json` 添加一次观察。零值、下降、观察时间和缺样均保留。API 失败或计数无效时，不改变公开状态。

首次发行前，只保存 `stars.json` 和 `stars.svg`，不创建或部署网站。发行后，先检查已保存的清单、推荐记录和 HTML hash，仅更新 `public/assets/stars.json` 与 `public/assets/stars.svg`，再部署已有发行 HTML。它不从 `main` 重建，也不宣称重新完成全部渠道验证。README 的稳定曲线地址是 `https://shendeguize.github.io/OrganonCore/assets/stars.svg`，首次站点发行后可用。

两个工作流共享并发组，只向 `refs/heads/site-data` 执行非强制推送；远端竞争更新会导致失败。需要启用 Actions，将 Pages 配置为使用 GitHub Actions，并给予仓库 token 写数据分支所需的 `contents: write`。只有部署 job 获得 `pages: write` 和 `id-token: write`。受保护的集成与发行分支不承载采样数据。

## 验证与恢复

在固定版本的 AgentOrganon 工具检出目录运行 `node --test tests/release-site-data.test.mjs tests/release.test.mjs`。这是本地夹具测试，通过不代表执行过远端部署。

采样失败时，检查运行记录，解决 API 或保存状态的问题后重试，不补造历史。分支更新成功而部署失败时，可以重跑工作流，已保存的发行身份仍然存在。发行门禁失败必须先在发行流程解决，再重试 Pages。出现异常文件或 checksum 变化时，应审查变化，不得仅替换 hash 来消除报错。
