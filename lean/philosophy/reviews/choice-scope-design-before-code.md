# T23 独立源文模型设计：一般评估职责与额外选择规范

日期：2026-09-14。评审代理：`/root/core_source_first_inventory`。

## 固定输入与暴露边界

哲学基线仍为 `PHILOSOPHY.md` 0.1.3，SHA-256 `1a0bebd61e35d46a3ba2e882305ce60f423e37a343ecdfd0b6f314e437aade59`。本设计使用先前已经独立完成的源文初评，以及本轮实际读取的 `targets-frozen.json` 中 T23。没有读取候选 Lean、既有 Lean、实现细节或作者的新模型解释。先前目标比较的暴露已在 `source-target-comparison.md` 记录；本轮不是声称从未见过作者目标，而是尚未见代码或模型方案的独立设计。

冻结 T23 的命题是：

> Exhibit the independence of the added choice obligation from the represented general assessment obligations, without placing it in those premises; qualify the model scope rather than claim neutral facts establish a value commitment.

预定接口 `CoreReader.Choice.generalGroundsNotChoice` 只是待实现接口。本设计不因这个名字而要求或宣称完整规范 Grounds 已履行。

## 结论与精确命题

**可以在冻结的 represented general assessment obligations 边界内构造非空反例。** 取同一个优先主张 q、同一组非空地位理由 E、同一比较域和明确限度；正确完成对 E 是否支持 q 的评估，得到“不能推出”的判断；选择模块仍仅凭地位给出 q 所称优先性，违反额外选择条款的“地位本身不足以确立优先”限制。

应证明的是：存在一个内容模型 M，使以下二者同时成立：

1. 对 M 中同一 q/E 的**有限评估程序职责**已完成，并有可核验的正确评估结果和反模型。
2. M 中实际采用的优先理由仅是既有地位，因而不满足额外选择条款的一项必要条件。

**不能把它升级为**“同一未限定的优先主张 q 已充分满足完整一般 Grounds，但仍违反 Choice”。本模型中，q 的提出者若在知道理由不足后仍保持其无条件优先断言，便未满足 U14 的强度/范围与支持相称要求。完成评估不等于被评估主张获得支持；报告评估为不足不等于 q 必假。

这是对冻结目标已明示的模型范围作实例化，不修改目标，不增加规范，也不将难以证明的形式分支改列为边界。它不建立全部一般 Grounds 在充分规范意义上与 Choice 的独立性；该更强命题既不是此模型的结论，也不能借接口名称暗示。

## 同一对象的最小内容模型

### 1. 实现、任务和主张

取两个不同的实现 `A` 与 `B`。当前任务、比较范围、术语含义和假设保持固定。若实现中需要展示实际任务内容，可令两者都在布尔输入上计算恒等函数：A 直接返回输入，B 按真假分支返回相同布尔值。两者在该任务上都可行；这些可行性事实只是固定背景，不产生谁应优先的比较结论。

唯一被评估的选择主张 q 是：

> 在当前任务及候选集合 {A, B} 中，A 应优先于 B。

q 是一个**规范性的优先主张**。以下形式解释检验“给定理由是否逻辑支持该主张”，不把 q 偷换为描述性命题“某排序程序恰好先输出 A”，也不把形式解释中的 q 真值宣称为实际价值真理。

### 2. 非空且有内容的理由

公开事实为：A 是既有实现；B 不是既有实现。理由集 E 包含这两个实际可识别的事实记录：

- `Established(A)`；
- `not Established(B)`。

每个记录都关联 q 和同一任务/时间/候选范围，有清楚的概念含义和判定值。它们不为空，不是任意字符串，也不是“因为它应优先，所以应优先”的重述。它们提供了关于候选地位的真实内容；问题在于这些内容是否足以支持**优先性**，而不是这些事实有没有发生。

就非蕴涵证明而言，一个 A 地位事实已足以组成非空 E；此设计保留第二条，用来使 A/B 地位差异及选择行为明确。对象域采用两个候选和两种优先序；不声称已证明全局最小形式。

### 3. 两种具体优先序解释

取两个有限解释，地位事实完全相同，优先关系分别是：

| 解释 | A 既有 | B 既有 | 严格优先序 | q |
| --- | --- | --- | --- | --- |
| w₁ | 是 | 否 | A 在 B 前 | 真 |
| w₂ | 是 | 否 | B 在 A 前 | 假 |

“世界”在这里是可计算的语义解释，不是声称存在两套已被正确论证的现实价值体系。优先关系来自两个元素的两种排列，因而是有内容、可计算的严格全序；不是另设一个可任意填写的 `supports` 或 `nonEntails` 布尔量。

理由满足关系 `E(w)` 逐项检查地位事实。定义所建推论片段的支持：

`InferentialSupport(E, q) := 对每个满足 E 的解释 w，q(w) 成立。`

计算可得 w₁、w₂ 都满足 E，而 q(w₂) 不成立，所以 `not InferentialSupport(E, q)`。证明须显式给出 w₂ 及 E 在 w₂ 中成立、q 在 w₂ 中不成立；不是将“不支持”预装为输入字段。

该反例不假设地位永远无实际意义。它只检验给定理由中**没有**其他连接目标、价值和约束的优先理由时，不能由地位事实本身推出 q。没有加入 `Established(x) → Priority(x)` 之类的桥接前提；加入该前提会改变待检验的论证，而且其规范根据需要另行交代。

### 4. 同一主张的真实评估

评估记录必须直接包含 q 的标识、E 的全部记录标识、固定范围、计算所得两个兼容解释、判定“不蕴涵”和反例 w₂。验证器重新计算 E/q 的语义，核验报告中的反例，而不是只检查记录字段非空。

可表达限度具体是：

- E 只提供当前候选的既有地位事实；
- 评估只讨论当前任务与 {A, B}，未声称其他候选或未来情况；
- 未提供由既有地位通向优先性的规范桥接前提；
- 因而 q 目前不被 E 推出；这不证明 q 在现实中错误，也不排除另有相关理由使 A 优先。

价值面向可如实记录：提出者的立场是仅因 A 既有而优先选择 A；给出的理由是 E；后果是 B 虽可行仍被排到 A 后；评估承认对“为何既有地位应优先”的批评，并明确当前理由不能回答这一批评。这样不是用“立场已陈述”证明价值正当性。实际理由不是空记录；准确结论正是“有理由内容，但没有所声称的支持力量”。

### 5. 选择仍违反额外条件

同一系统的选择模块按照既有地位将 A 排在 B 前。它对 q 的优先理由只使用 E，没有把其他实现的评估报告或另一个主张的根据拿来代替 q 的根据。审查模块正确指出 E 不推出 q，而选择模块继续持有 q；二者不是逻辑矛盾，因为“不被这些理由支持”不等于“q 为假”。

Choice 部分无需构造一个全新“实现必须满足什么”的规范。直接使用源文已有的必要条件：**仅既有地位不足以确立优先性**。实际优先理由全部是地位事实，且提出者仍声称据此具有优先性，因此该必要条件未满足。不能把单纯选择了可行 A 与宣称 A 凭地位享有优先权混同；违规的是后者的理由与优先主张。

若随后系统撤回 q，或者取得与目标、价值、约束相关的实际理由，这就是另一个状态。本反例不阻止它被修正，也不把既有实现永远排除。

## 哪些责任已完成，哪些没有

| 责任/性质 | 本模型状态 | 实际依据与限度 |
| --- | --- | --- |
| 对象与主张可识别 | 已完成 | q 始终是同一任务中 A 对 B 的规范优先主张 |
| 概念、假设、理由、限度可表达 | 已完成于有限结构 | 明确候选、地位事实、E、解释域及缺失桥接前提 |
| 理由非空且真实对应 q | 已完成 | 两条 E 记录就是提出者为 q 使用的地位事实；不借另一 claim |
| 事实记录在模型中可核验 | 已完成 | 两个解释都明确满足两条地位事实 |
| 检查 E 是否支持 q | 已完成且结果正确 | 实际枚举解释、提供并验证 w₂，结论为不蕴涵 |
| 不把不蕴涵当作 q 恒假 | 已完成 | w₁ 满足 q；报告仅拒绝所检验的推论 |
| 价值立场、给出理由、限度、后果及批评可见 | 可在该程序结构中完成 | 记录立场与真实有限理由，并承认其不能回答相关批评；不证明充分正当性 |
| 全部经验根据的现实可靠性 | 未证明，不属于此有限结果 | 地位事实是该有限模型的已给事实；不声称所有现实记录可靠 |
| 未限定 q 的支持强度/范围相称 | **未满足** | q 仍被声称，但 E 不推出 q；不能标成充分 Grounds 合规 |
| 初始价值立场的充分正当性 | 未证明 | 说明理由和接受批评不自动证成该立场 |
| 额外 Choice 的地位限制 | **未满足** | 实际优先仅以既有地位为理由 |

由此，`represented assessment duties completed` 可以为真，而 `Choice status condition satisfied` 为假。`FullGrounds(q)` 不应被标真，也不应把“记录了 Grounds 结构”作为其证明。

## 建议的通用数学接口及不可偷换项

接口应参数化候选、事实理由、优先关系解释、主张语义、论据满足关系和评估报告，而非只为 A/B 定义一个恒真的 `GeneralGrounds`。至少区分：

1. `ArticulatedArgument`：有可解读的同一 claim、premises/reasons、条件和限度。
2. `AssessmentCompleted` 或同义名称：执行并正确记录“是否支持”的检查；允许支持或不支持两种结果。
3. `InferentialSupport`：由解释集合的实际语义定义，不是记录存在性。
4. `ProportionateAssertedClaim`：若选择模块保持该强度的 q，则需要与其相称的支持；本反例对这个性质不能出具证明。
5. `ChoiceStatusCondition`：直接表达源文的地位本身不能给予优先，不冒充完整 Choice 的充分定义。

预定 `generalGroundsNotChoice` 若保留该名字，实际类型和读者解释必须写清它的前项是**represented finite assessment obligations**。若前项实际叫 `Grounds`，也必须在类型和文稿中公开说明它只表达此程序片段；否则容易将程序完成性读成全规范合规。不能把此模型的 `AssessmentCompleted` 与冻结 T15 中承载更广责任的 `Evidence.Grounds` 未加区分地等同。

禁止的修补包括：

- 令另一个无关 claim 成为 Grounds 见证，仍对 q 做坏选择；
- 把 reasons/limits 填几个字符串即判为依据充分；
- 假设 `Support(E,q)`，再投影“已支持”；
- 把 q 改成“StatusFirst 算法输出 A”的描述性命题，却仍宣称证明规范优先性；
- 加入“所有既有实现本来就应优先”的新规范桥接前提而不承认目标已改变；
- 把“正确发现支持不足”算成“未限定 q 已受充分支持”；
- 用空 claim、空解释域或没有实际使用理由的选择变量获得反例。

## 实际可运行验证及结果

本轮以 `rtk run` 调用 Python 对独立设计执行有限枚举；没有创建或读取 Lean。第一次探索脚本检查两个排列、理由非空和反模型；第二次完整脚本让 q 的报告回指同一 claim/理由，并实际计算报告正确性、Choice 必要条件和所建推论片段的相称性。第二次结果为：

```text
{'candidates': 2, 'worlds': 2, 'reasons': 2,
 'same_claim_report_valid': True,
 'inference_entailed': False,
 'choice_status_exclusion_satisfied': False,
 'modeled_inferential_proportionality': False}
actual_assertions=pass; full normative Grounds compliance not claimed
```

第二次脚本的核心断言可以原样重跑：

```sh
rtk run 'python3 - <<'"'"'PY'"'"'
from itertools import permutations
candidates=("A","B")
orders=tuple(permutations(candidates))
status={"A":True,"B":False}
reasons=(("established","A",True),("established","B",False))
worlds=tuple({"order":o,"status":status.copy()} for o in orders)
def E(w): return all(w["status"][i]==v for tag,i,v in reasons)
def q(w): return w["order"].index("A")<w["order"].index("B")
compatible=tuple(w for w in worlds if E(w))
entailed=all(q(w) for w in compatible)
counterexample=next(w for w in compatible if not q(w))
report={"claim_id":"priority-A-over-B","reason_ids":(0,1),"world_count":len(compatible),"verdict":"not_entailed","counterexample":counterexample}
report_valid=(report["claim_id"]=="priority-A-over-B" and report["reason_ids"]==tuple(range(len(reasons))) and report["world_count"]==2 and report["verdict"]=="not_entailed" and E(report["counterexample"]) and not q(report["counterexample"]) and not entailed)
chooser_asserts_q=True
priority_reason_is_only_status=bool(reasons) and all(tag=="established" for tag,_,_ in reasons)
choice_status_exclusion_satisfied=not (chooser_asserts_q and priority_reason_is_only_status)
modeled_inferential_proportionality=(not chooser_asserts_q) or entailed
assert len(candidates)==2 and len(worlds)==2 and len(reasons)==2
assert E(counterexample) and not q(counterexample)
assert report_valid and not choice_status_exclusion_satisfied and not modeled_inferential_proportionality
print("finite assessment countermodel: pass; full Grounds not claimed")
PY'
```

这组断言验证有限逻辑/记录关系，不验证实际价值理由充分性。关于价值立场、后果和批评可见性的文字设计尚需实现中给出有内容的字段、函数及审查对象；不得将 Python 的成功自动计为这些部分已实现或受审。

## 供后续全体目标来源比较使用的检查结论

此设计可以在原冻结 T23 的有限模型范围解决非蕴涵见证；不需要修改原文或增加规范。代码后应逐项检查同一 q/E、非空实际解释、真实推论反例、正确不足报告及地位优先行为。若代码或文稿宣称该同一 q 充分遵守完整 Grounds，则应判定越过本设计的支持边界，而非因为有限反例证明成功予以接受。

本轮设计已完成；尚未读取代码，不对 T23 实现或其他冻结目标的完成性作判断。后续收到代码后，再进行全部目标的独立来源比较；本次记录不替代那一阶段，也不递归请求评审。
