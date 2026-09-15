# 首轮固定代码的独立源文对照

日期：2026-09-14。评审代理：`/root/core_source_first_inventory`。

## 对象、暴露及结论

本轮以完整 `PHILOSOPHY.md` 0.1.3、自身编码前原始 `source-first.md` 和冻结的 `targets-frozen.json` 为标准，随后读取实际代码与完整声明前提。原始源文初评、目标比较及 T23 独立设计均未改写。未读取其他代理的盲回译、作者评审或后续修订代码，未递归委托。

最初只枚举过当前 candidate 的文件名；在读任何实现正文前，收到根代理的固定对象指令。全部实现正文读取和独立探针都固定于以下证据副本，后续文件变化不影响本判断：

`P = private historical check objects/2026-09-14T02-57-54.555Z-9709-f08e31/project`

下文 `Agency.lean:N`、`Evidence.lean:N` 等均指 **P/CoreReader/** 下的文件与一基行号。证据目录 `A = P/..`。对应 `A/declaration-types.json`、`A/lean-audit.json` 中的完整展开类型均已核对；不只依靠声明名或用户目标的自然语言。

**当前不能判定全部冻结目标完成。** 逐家族结果为 **17 accepted、11 rejected、0 pending**。accepted 只表示相应已披露的规范接口、条件推论或有限模型边界内可接受；不是哲学真实性、完整形式化或现实支持充分性认证。rejected 表示现有实现尚未满足该家族的至少一个冻结分支，不是否定该文件中的所有数学结论，也不是源文哲学存在缺陷。

逐分支结果见同目录 `source-target-verdicts-initial.json`，是数组 `{id,status,reason,findings:[...]}`；28 家族全部列出，失败家族仍保留其中实际成立的分支，未把难项删去或改列非定理。

## 固定证据及实际检查

| 对象 | SHA-256 |
| --- | --- |
| PHILOSOPHY.md | `1a0bebd61e35d46a3ba2e882305ce60f423e37a343ecdfd0b6f314e437aade59` |
| targets-frozen.json | `35cda8ba439af8b32fd180efae2829b370bc5b82960cc91feb24e3e03636d2f4` |
| P/CoreReader/Agency.lean | `28c134914cf0f728a55b5cf9c0a538b5a799e969fc8ff4fa97ad5b33a1ee6cd2` |
| P/CoreReader/Choice.lean | `e16120505ee8432cce63f0ecaaa239f1ff178019e02f6a68530b70c929befcd7` |
| P/CoreReader/Evidence.lean | `17ce240c5b7c4a76a8fe8004a9546f9c8af4d64609e19e22bdd0fc8eb6834519` |
| P/CoreReader/Integration.lean | `3773ae028e4c0252897afd69c0f35a96983ab4cbac55cd2726a5af2a8da49efd` |
| P/CoreReader/Logic.lean | `0a7ea630c9350aca7dc7bcd78be9e0a0a4ec5ae169acf43f901de79dc1093de0` |

这些源码哈希与 `A/inputs-sha256.json` 对应项一致。冻结目标有 62 个唯一预定接口，`declaration-types.json` 恰有这 62 项，没有缺项或额外项。已逐项读取源码定义、全部显式和隐式前提、证明体及其相关辅助定义，并读取 `lean-audit.json` 中移除重复 AST 序列化行后的全部人类可读展开类型。

原机械检查 `summary.json` 报 `passed=true`、`semantic_status=not_evaluated`，这与“尚需本轮语义审查”一致。记录的声明依赖只出现标准 `propext`、`Classical.choice`、`Quot.sound`，未发现新增实质哲学公理或 sorry 作为登记目标的证明依赖；这并不能发现被放入结构/局部前提中的不当语义假定，因此仍进行了下面的独立探针。

本轮额外调用固定项目上的 `lake env lean --stdin`，实际检查 F1/F6 的反例，退出码为 0。未修改证据副本或公共源码。保存本报告前 `.local` 忽略规则已确认有效。

## 合并后的关键问题

### F1 — ValueProcedure 没有评估所称价值主张，Grounds 因而过宽且部分条件过强

**位置：Evidence.lean:25–38、50–62、89–104；影响 T07/T15/T16，以及 T02/T25/T27 的组合证据。**

`ValueProcedure v` 检查理由非空、每条理由在限度内推出 `v.consequence`、相关批评得到非空字符串回应，却完全不读取 `v.commitment` 或 `v.starting`。`FacetArticulated` 能保证字段来自同一 facet，`Grounds` 能保证 `facet.claim=claim`，但这些字段相等没有补出“这些理由/后果为何关联该价值立场”的语义责任。

独立 Lean 探针将 `switchPosition.commitment` 改成恒 False、starting 改成空理论，保留原成本/收益理由、限度、后果和回应，原 `switchValueProcedure` 仍能直接用作证明，并通过 `canonicalGroundsForSingleton` 得到该恒 False claim 的 modeled `Grounds`。这是实际类型允许的替换，不是仅凭字段命名推测的风险。

这不要求从事实逻辑推出每个价值承诺的终极正确性，也不把“主张为假”直接当成所有规范错误；探针证明的是程序根本不检查被换掉的立场，不能据此声称已表达对应主张的支持责任。规范定义可以保留价值起点，仍需表达理由、后果和适用限度与该立场的关系，并区分程序完成、支持不足与充分支持。

反方向上，当前条件要求**每条**理由单独推出 consequence，也不是原文的一般要求。多条理由可共同支持结论；价值理由也不普遍要求这种演绎形式。该做法可作为一个有范围的方法片段，但不能同时作为完整 Grounds 规范定义的替身。

最小纠正方向：保留已正确的同 facet articulation 连接；区分价值评估程序与其对应主张/限度的支持责任，避免用 consequence 推论替代 commitment 相关性。不要以新增“价值立场必须从事实推出”的实质前提补洞。

### F2 — Grounds 自我评估及逐承诺理由换了对象

**位置：Integration.lean:122–149、173–194、197–210；影响 T02/T25/T27。**

`commitmentClaim .grounds` 被定义成 `OwnCapabilityDuty capability [capabilityFacet]`。因此 `groundsSelfAssessment` 评估的是一次能力评估责任的实例，并不是 U21 所说的 **Grounds 条款自身的根据与限度**。`reasonContent .grounds = Compatible [observation]` 与 `consequenceContent .grounds = capability` 确实有关：一项观察在给定两个算法的假设空间中支持 identity 能力；但这只再次证明能力支持，不是理由评估规范本身的理由。

同样，`.reflexivity` 的 reason 是 system0 assessment 已在 work 中，consequence 是同一个 Performed 成员事实。它说明已经登记一项活动，未说明为什么采纳或保留反身要求。`reasonsBelongToCommitments` 的字段等式和 ValueProcedure 不使该重复事实成为逐承诺理由。

`existingPhilosophy` 仅对 `identityImpl` 改一个 name 字符串。其 run/cost/domain/trace 仍是 identity 算法，没有哲学或其原则作为实现策略的对象关系。泛化的 statusOnlyFails 可以适用于一个真正给定的哲学实现，但不能把改名本身当成已经建立这种解释。

最小纠正方向：明确被评估的规范对象及其提出/应用/修订理由；把“该规范的一个合规实例”与“该规范本身”分开。对既有哲学的适用应通过实际原则/策略对象及相同选择规范的关系表达，不能只靠 name。

### F3 — 反身对象齐全，但评估内容只剩工作标签

**位置：Agency.lean:192–207、253–269；影响 T13，进而影响完整 Charter 的组合断言。**

system、principle、formation/application/revision 五类对象和 generation/assessment 两活动均有表达，applicable 条件也保留。这些是有效的范围接口。

但 `Principle` 只有 activity/applicable，`Performed` 只是 `(Subject,Activity)` 在列表中。原则的形成理由、适用问题、可能修订理由，以及以何原则评估该过程，没有可追踪对象。`completeOwnWork` 用列表展开自动登记每项活动；这能证明标签覆盖，不能独自满足冻结 T13 对上述问题内容的要求。原则 Subject 的 owner/id 也未与 rules 中某条原则的身份连接。

最小纠正方向：在保留现有适用性投影的同时，使实际活动记录能指向所用原则、形成/适用/修订问题及其理由对象。规范范围和活动完成证据应分开；不需要新增哲学评估标准。

### F4 — jointWitness 的同一系统联系仍有断点

**位置：Integration.lean:23–68、93–116、238–245；影响 T02/T25/T26。**

算法输出、预算、观察、held/context 与实现选择之间有真实的共享内容：在两个算法假设空间内，输入0的观察辨识 identity，随后支持对应能力。这部分不是空模型。

但 `Charter` 是独立于量化世界 w 的全局命题，它使用 `openPolicy`、owner0 和全量工作列表；没有系统对象或相等/所有权关系把它们与 `implementation w`、当前方法/原则及对应的能力主张连接。`OwnCapabilityDuty` 只是系统0的活动标记与另一个 Grounds 对象的合取。注释中的 “same system” 无法补出这个关系。

因此 `jointWitness` 当前证明若干非空片段并存，并有局部交互；不能据此宣布已验证源文要求的同一系统相互应用。`charterNotGrounds` 的 cost observation 反例在局部确实成立，但完整 Charter 和证据归属于同一系统的支持边界仍受同一问题限制。

最小纠正方向：使用一个小的共同系统对象或明确绑定关系，将 policy、当前形式、原则、工作、实际执行/实现及所持主张和根据连接起来。无需把所有现实细节纳入模型。

### F5 — 自报告分支只有构造子自反等式，成就实例未接入根据规范

**位置：Agency.lean:157–171；Evidence.lean:102–115；影响 T06.k/T07。**

`generationLimits` 的 a–j 分支确有列表数量、Option 外部输入依赖、不扩展 trace 和预算稳定理由。最后一项却是 `Announcement.expanded = .expanded ∧ ¬ Expanded baseState inflatedState`。构造子等于自身不表示该系统实际发出了对应前后状态的扩展声明，更没有将该声明联系到支持对象。

`achievementNeedsSupport` 是有效的公开前提下充分性定理：records 在 actual 成立且语义支持 achievement，则 achievement actual。它不能补出自报告实例；`AchievementAccountability` 只是 Grounds 别名，没有一个具体实例把理解/构造的 before/after 扩展、同一 claim 和记录条件相连。

最小纠正方向：构造一项真实输出/记录的自报告，将其语义指向这次前后状态与 Expanded 主张，并展示该报告不足以建立对应支持；把有效的一般支持定理实例化到一个这样的成就对象。不能只再增加一个名为 `hasSupport` 的布尔字段。

### F6 — 内部理由的资格被自动当成充分选择根据

**位置：Choice.lean:34–47、153–158；影响 T22/T24。**

`Relevant` 检查所选方法类别及其实际内容，`JustifiedChoice` 则直接定义成存在一个 Relevant 理由。因此四类内部理由一旦 eligible，单独就足以推出 JustifiedChoice。冻结 T24 明确要求这些理由“remain eligible … not automatically sufficient”。

独立 Lean 探针保留 `identityImpl` 的 cost=1，只把 run 改成 n+1。它仅凭 `.simplicity`（成本不超预算）就满足 `JustifiedChoice identityRequirements`，同时可以证明 `¬ Feasible`：输入0要求0、实际输出1。真实代码不是仅遗漏一个测试，而是将资格和充分性定义为相同层次。

这不意味着核心要求一切选择都按某个新设统一可行性函数判断。问题是该模型已经明示当前输出要求/预算，却把一个不检查输出的理由视为整个选择已经有充分根据。

最小纠正方向：分开“可以作为评估理由”与“对当前选择给出充分支持”，保留原文关于目标、价值和相关约束的联系；无法支持充分性时如实停在资格/不足状态。不能只改解释为所有内部理由都自动充分。

### F7 — 变更应用定义被替换成变更标签

**位置：Integration.lean:218–226；影响 T27。**

`applicationRetainsDuties` 仅参数化 `labels : List String`，能力 claim、输出要求、预算和适用面向固定。这证明标签变化不免除固定职责，已在 T16 有相应规范接口；它没有涵盖冻结目标中的应用自定目标、价值和能力契约与相关核心职责的关系。

T21 的两种进程契约是有内容的不同应用例子，但未与 T27 的 Grounds/适用责任结构连接。最小纠正方向是在保持适用条件的前提下，使应用定义和相应 claim/面向成为真实参数或有意义的变化实例，而不是用 labels 代替它们。

## T23 的单独结论

`Choice.lean:169–212` 与预先记录的 `source-first-T23-design.md` 所允许的有限片段相容：同一 identity 优先主张、非空 convention/established 理由、实际满足前提的两个选择解释、正确的否定评估和地位理由被额外规则排除都存在。注释明确指出“仍坚持不受支持的优先性也会违反一般支持相称”，没有把 `Grounds` 强行标真。因此本轮 **T23 accepted，仅限 represented assessment procedures**。

额外范围限制须保留：这里的反解释是 `statusFacts` 的模型，不是全部 `identityRequirements` 的可行实现。事实上 `singleFeasible` 已证明 successor 不可行。不能把这个前提片段的非蕴涵升级成“即使加入全部任务约束仍不蕴涵优先”，也不能称为完整 Grounds 充分履行后的独立性证明。当前数学定理没有做出该升级，本评审也不替它做出。

## 独立 Lean 探针的完整内容与结果

在固定 P 中运行以下 stdin 输入，实际命令为 `rtk proxy lake env lean --stdin`。这些是本评审新写的反例，不修改原证据声明，也不构成新哲学前提。

```lean
import CoreReader
open CoreReader.Logic CoreReader.Evidence CoreReader.Choice CoreReader.Integration
namespace IndependentSourceProbe

def unrelatedCommitment : ValuePosition Bool :=
  { switchPosition with commitment := fun _ => False, starting := emptyTheory }

theorem procedureIgnoresCommitment : ValueProcedure unrelatedCommitment := switchValueProcedure

theorem arbitraryFalseClaimHasModeledGrounds :
    Grounds (fun _ : Bool => False) canonicalArticulation
      (fun f => f = Facet.value unrelatedCommitment) [Facet.value unrelatedCommitment] :=
  canonicalGroundsForSingleton (Facet.value unrelatedCommitment) procedureIgnoresCommitment

def wrongCheap : Implementation := { identityImpl with run := fun n => n + 1 }

theorem eligibleSimplicityAlreadyJustifies :
    JustifiedChoice identityRequirements wrongCheap [.method .simplicity] := by
  refine ⟨.method .simplicity, by simp, trivial, ?_⟩
  change 1 ≤ 1
  decide

theorem justifiedChoiceFailsStatedOutput : ¬ Feasible identityRequirements wrongCheap := by
  intro h
  have bad := h.1 0 trivial
  change 1 = 0 at bad
  contradiction

#print axioms arbitraryFalseClaimHasModeledGrounds
#print axioms eligibleSimplicityAlreadyJustifies
#print axioms justifiedChoiceFailsStatedOutput
end IndependentSourceProbe
```

实际输出，退出码 0：

```text
'IndependentSourceProbe.arbitraryFalseClaimHasModeledGrounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'IndependentSourceProbe.eligibleSimplicityAlreadyJustifies' depends on axioms: [propext]
'IndependentSourceProbe.justifiedChoiceFailsStatedOutput' does not depend on any axioms
```

## 逐家族状态与审查边界

accepted：T01、T03、T04、T05、T08、T09、T10、T11、T12、T14、T17、T18、T19、T20、T21、T23、T28。

rejected：T02、T06、T07、T13、T15、T16、T22、T24、T25、T26、T27。

较多数学片段已有实际内容：联合 P/P→Q/¬Q 的冲突、撤回前后的可满足性、三个上下文维度、自测样本与全域失败、单次/重复记录的反世界、同一进程的输出与解释契约，以及输入0相同而输入1不同。这些无需因别处有问题全部推倒。

保留的经验/价值边界包括：没有证明现实记录可靠、真实系统内在取向、实际认知理解、价值正当性、未来必然进步或所有随机过程性质。有限 Trial 的不同结果与共同界限不是概率定理；Process 的可给出解释证书不是所有理解概念的统一定义；两个算法的假设空间中一次观察可辨识其中之一，不可推广到全部可能程序。

本轮没有发现应借建模问题修改 PHILOSOPHY 的理由。待修改的是来源对应、模型责任边界与验收状态。后续新对象应另作比较记录；本文件固定保留首轮结果，不以修订后成功倒写初评。

## 62 个登记接口的实际读取索引

下表逐一定位所读实际定义/声明；完整类型来自同轮 audit，完整局部前提已在源码和展开类型中检查。家族的 rejected 不表示该行的 Lean 推导无效；具体分支接受范围见 JSON。

| 接口（均在 CoreReader 命名空间） | 固定副本位置 | 目标 | 显式命题前提或角色 |
| --- | --- | --- | --- |
| `Integration.jointWitness` | `Integration.lean:238` | T02, T26 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.Generative` | `Agency.lean:33` | T03 | 规范定义：Policy的取向与当前形式可修订 |
| `Agency.permissionNotValuation` | `Agency.lean:49` | T04 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.revisabilityCovers` | `Agency.lean:58` | T05 | Generative p + current form；规范投影 |
| `Agency.revisionWithoutProgress` | `Agency.lean:123` | T05 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.generationLimits` | `Agency.lean:157` | T06 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.AchievementAccountability` | `Evidence.lean:102` | T07 | Grounds别名；F1及成就实例缺口 |
| `Evidence.achievementNeedsSupport` | `Evidence.lean:113` | T07 | Compatible records actual + Supports records achievement |
| `Logic.consequenceConsistency` | `Logic.lean:31` | T08 | 存在满足held+assumptions+scope的世界 |
| `Logic.jointConflict` | `Logic.lean:59` | T08 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.revisionCanReverse` | `Logic.lean:78` | T09 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.contextDifferences` | `Logic.lean:102` | T09 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.semanticChangeMustBeReported` | `Logic.lean:142` | T10 | 实际内容/标识变化 + TruthfulReport规范 |
| `Logic.representationOrderIrrelevant` | `Logic.lean:150` | T10 | 任意两个语义claim；无命题前提 |
| `Logic.hiddenContextChangeRejected` | `Logic.lean:160` | T10 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.tensionWithoutContradiction` | `Logic.lean:186` | T11 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.conflictRequiresChange` | `Logic.lean:195` | T11 | 同一theory/context/question的正、负Consequence |
| `Logic.consistentFalse` | `Logic.lean:205` | T12 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.consistentIncomplete` | `Logic.lean:216` | T12 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.Reflexive` | `Agency.lean:206` | T13 | 规范定义：owner/rules/records；内容缺口F3 |
| `Agency.noSelfExemption` | `Agency.lean:213` | T14 | Reflexive + rule成员 + owner相同 + applicable |
| `Agency.applicabilityRetained` | `Agency.lean:228` | T14 | 无命题前提；任意owner/rules/records与非空具体实例 |
| `Agency.selfTestDoesNotProve` | `Agency.lean:295` | T14 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.selfOriginDoesNotSupport` | `Evidence.lean:343` | T14 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.Grounds` | `Evidence.lean:89` | T15 | 规范定义：claim/articulations/applicability/facets；F1 |
| `Evidence.supportWeakening` | `Evidence.lean:123` | T15 | Supports records P + 每世界P→Q |
| `Evidence.scopeRestriction` | `Evidence.lean:140` | T15 | narrow⊆wide + 固定records支持wide全称 |
| `Evidence.assessmentUnion` | `Evidence.lean:156` | T16 | 任意两个适用谓词；规范集合后果 |
| `Evidence.labelsCannotWaive` | `Evidence.lean:167` | T16 | 任意labels与实际applicable；定义等价 |
| `Evidence.mixedMissingResponsibility` | `Evidence.lean:208` | T16 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.articulationNotSupport` | `Evidence.lean:223` | T17 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.measurementRepeatNotSupport` | `Evidence.lean:273` | T17 | 封闭具体实例/证明；无额外局部命题前提 |
| `Logic.compatibilityNotEntailment` | `Logic.lean:229` | T17 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.selfAssertionNotReason` | `Evidence.lean:300` | T17 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.valueWithoutSelfProof` | `Evidence.lean:313` | T18 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.heterogeneousReasons` | `Evidence.lean:323` | T18 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.localNotUniversal` | `Evidence.lean:357` | T19 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.hiddenDifference` | `Evidence.lean:372` | T19 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.singleObservation` | `Evidence.lean:383` | T20 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.noUniversalChain` | `Evidence.lean:400` | T20 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.variableOutcomesStableBound` | `Evidence.lean:421` | T20 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.verificationReproductionStability` | `Evidence.lean:432` | T20 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.outputNotExplanation` | `Evidence.lean:461` | T21 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.applicationContractsDiffer` | `Evidence.lean:470` | T21 | 封闭具体实例/证明；无额外局部命题前提 |
| `Evidence.externalAssessment` | `Evidence.lean:483` | T21 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.inventoryNotCapability` | `Agency.lean:85` | T21 | 任意InventoryKind/操作列表/操作；无命题前提 |
| `Choice.statusOnlyFails` | `Choice.lean:54` | T22 | 任意Requirements/Implementation/StatusKind；规范后果 |
| `Choice.conventionWithReason` | `Choice.lean:109` | T22 | 封闭具体实例/证明；无额外局部命题前提 |
| `Choice.generalGroundsNotChoice` | `Choice.lean:203` | T23 | 封闭具体实例/证明；无额外局部命题前提 |
| `Choice.singleFeasible` | `Choice.lean:128` | T24 | 封闭具体实例/证明；无额外局部命题前提 |
| `Choice.localNotGlobal` | `Choice.lean:142` | T24 | 封闭具体实例/证明；无额外局部命题前提 |
| `Choice.internalReasons` | `Choice.lean:153` | T24 | 封闭具体实例/证明；无额外局部命题前提 |
| `Choice.openNotEquivalent` | `Choice.lean:164` | T24 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.revisionKeepsConsistency` | `Integration.lean:82` | T25 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.ownCapabilityGrounded` | `Integration.lean:110` | T25 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.groundsSelfAssessment` | `Integration.lean:188` | T25 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.existingPhilosophyNotPrivileged` | `Integration.lean:205` | T25 | 封闭具体实例/证明；无额外局部命题前提 |
| `Agency.generationNotReflexivity` | `Agency.lean:277` | T26 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.charterNotGrounds` | `Integration.lean:269` | T26 | 封闭具体实例/证明；无额外局部命题前提 |
| `Integration.applicationRetainsDuties` | `Integration.lean:218` | T27 | 仅labels参数；其余应用对象固定，见F7 |
| `Integration.reasonsBelongToCommitments` | `Integration.lean:173` | T27 | Commitment参数；从程序规范与字段构造，见F1/F2 |
| `Evidence.nonExecutableAssessment` | `Evidence.lean:496` | T28 | 封闭具体实例/证明；无额外局部命题前提 |

### 最终结构核对

- 28 个目标 verdict 齐全；62 个登记声明与同轮类型集完全一致。
- 固定 project 五个模块的哈希仍与该轮 inputs-sha256 一致，独立 stdin 探针未改写源码。
- 逐分支 JSON 和本报告状态一致：17 accepted、11 rejected、0 pending；accepted 不覆盖同家族之外的规范或现实断言。
