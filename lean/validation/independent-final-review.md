# Independent final review export

This is the actual informed final review. It is not a new blind assessment. Local evidence filenames in the narrative identify retained historical records; the portable-copy results are separately delivered in [relocation.json](relocation.json). Original SHA256: `c2c3b392d6b679994be815b221ebbf6f334dbea895f1d470c086231cee388eaf`.

# 第三轮末次差异复核

日期：2026-09-13。性质：知情的末次差异复核，沿用固定Core 0.1.3与已有初评，不新增轮次、不递归评审。仅检查上一轮发现的失败资格门、两个拒绝项当前措辞、双语逐行导航及其绑定变化。旧初评、清单与第一轮判断hash实查保持不变。

## 已解决的问题

1. 失败资格门现在只在kernel failed、fidelity rejected、或反模型明确refutes_source时允许整体failed。对先前独立合成fixture原样重跑：limited控制仍通过；supports_nonentailment但整体failed的变体现在被拒绝，返回“Failure needs a recorded cause: claim.1”。仓库新增单项回归也实际通过（1项，0失败、0跳过）。原先由“反驳待测蕴涵”误推“源条目失败”的接口缺口已修正。中文可见语义相反但标记不变的边界fixture仍能机械通过，这继续符合已公开的非语义认证范围，并非新遗留缺陷。
2. c-89-c2与c-94-c3现以“保留受检尝试，但明确拒绝源对应，不作为原文责任证明”说明交付结果，不再对读者留下“是否尚未执行撤回”的指令语气。其前面的全部实质缺口说明逐字保留：覆盖不等于支持、无观测内容/比例关系，编号相等不等于考察支持关系。英文与中文表达同一结果；kernel passed与fidelity rejected状态未变，未改写哲学或历史评审。
3. 声明到逐行解释新增116个链接，四份详解共456个line-N锚点（228行×2种语言），均唯一且目标存在。读者可从条目直接跳到解释，不必只跳到Lean文件。解释文本及全部源摘录未被改变。

## 差异与实际运行证据

对8稿与先前独立普通副本逐字比较：去除已登记的导航新增、将两段旧建议替换为当前结果后，所有稿件恰好相等。全部状态标记顺序与内容不变。没有发现夹带限定删除或其它措辞变化。逐文件结果及新hash见reader-round3-delta-checks.json。

更新普通副本中的8稿、两run的run/manuscript/fidelity对象，并复制当前checker及其本地解析依赖，再实际使用副本checker调用两工程。Core build=0、audit=0、18声明、123条；rationale build=0、audit=0、10声明、371条。两者kernel_passed及manuscript.passed均true，semantic_status仍not_evaluated。完整新build/audit/summary存于副本evidence/checks；索引和针对性回归结果见reader-round3-actual-results.json。该验证独立于原工作树已有的成功结果。

## 最终有界判断

本审查提出的三个末轮问题已在授权范围内处理并实际验证，无需新增实现、轮次或哲学决策。14条有限对应、2条被拒对应、其它pending/结构状态保持；没有为了非零full或整篇通过而改动标准。语义未覆盖、支持关系未建模、有限样本和假设性场景的边界仍明确存在，这是本交付的报告范围，不因机械检查成功消失。

停止本轮审查。原文初评及旧比较保留，新版本与实际证据单独记录。不认证全文形式化、普遍哲学正确性、或所有未检查变体。
