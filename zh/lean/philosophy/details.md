# 哲学与 Lean：逐行详解

本文按 28 个冻结目标组织。目标接受、Lean 检查及来源保真是不同判断；规范定义不证明义务已履行，有限模型也不证明现实中的普遍正确性。33 个来源段落与两个空标题在追溯附录完整保留。

`accepted` 表示相应目标在已说明范围内获接受；`limited` 表示来源段落只有受限的形式对应；`incomplete` 保留未构成该段完整证明的部分。Lean 的 `passed` 仅报告已登记声明的检查；规范接口的通过不等于义务履行。

[另一粒度](overview.md) · [冻结目标](../../../lean/philosophy/targets.json) · [审查与暴露说明](../../../lean/philosophy/reviews/README.md) · [实际声明类型](../../../lean/philosophy/evidence/declaration-types.json)

| 目标 | 主张 | 种类 | 目标审查 |
| --- | --- | --- | --- |
| [T01](#t01) | 权威与边界 | boundary | accepted |
| [T02](#t02) | 同一非空模型 | satisfiability | accepted |
| [T03](#t03) | 生成取向承诺 | specification | accepted |
| [T04](#t04) | 许可不提供价值立场 | nonentailment | accepted |
| [T05](#t05) | 可修订性与进步 | theorem | accepted |
| [T06](#t06) | 生成的限度 | nonentailment | accepted |
| [T07](#t07) | 成就需要相应依据 | theorem | accepted |
| [T08](#t08) | 整个判断集合的一致性 | theorem | accepted |
| [T09](#t09) | 修订与语境变化 | nonentailment | accepted |
| [T10](#t10) | 变化必须如实说明 | theorem | accepted |
| [T11](#t11) | 张力与矛盾 | nonentailment | accepted |
| [T12](#t12) | 一致性不等于真实性或覆盖充分性 | nonentailment | accepted |
| [T13](#t13) | 具有具体问题与理由的反身性工作 | specification | accepted |
| [T14](#t14) | 自我应用不构成自证 | nonentailment | accepted |
| [T15](#t15) | 支持、强度与范围 | theorem | accepted |
| [T16](#t16) | 所有适用面向均保留责任 | theorem | accepted |
| [T17](#t17) | 清晰表达、重复与断言仍可能不足 | nonentailment | accepted |
| [T18](#t18) | 被采纳的价值立场与联合理由 | satisfiability | accepted |
| [T19](#t19) | 局部证据与被遗漏的差异 | nonentailment | accepted |
| [T20](#t20) | 观察、复现与稳定性 | satisfiability | accepted |
| [T21](#t21) | 能力契约与外部评估 | nonentailment | accepted |
| [T22](#t22) | 相关实现理由 | theorem | accepted |
| [T23](#t23) | 准确审查不自动施加额外选择规范 | nonentailment | accepted |
| [T24](#t24) | 开放不蕴含等价或多个可行方案 | nonentailment | accepted |
| [T25](#t25) | 同一系统中的相互应用 | theorem | accepted |
| [T26](#t26) | 不同承诺及其组合 | nonentailment | accepted |
| [T27](#t27) | 应用责任与分别给出的理由 | theorem | accepted |
| [T28](#t28) | 无需观测测试的评估 | satisfiability | accepted |

<a id="t01"></a>
## T01 · 权威与边界

被采纳的英文原文及其含义、适用条件与限度，仍是检验本形式化对应关系的权威。

**前提与表示:** 本项登记所选来源与文档边界，没有必需的 Lean 声明。

**证明或检查:** 目标目录登记来源单元及其边界状态；这里没有从数学上推导该哲学的权威或采纳。

**限度:** 来源对应与哲学立场的接受，均有别于内核检查；目录与证明都不确立普遍的哲学正确性。

**状态:** accepted (boundary). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.preamble#p1](#source-organon-preamble-p1), [organon.preamble#p2](#source-organon-preamble-p2), [organon.charter.overview#p1](#source-organon-charter-overview-p1), [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3)

此边界目标没有 Lean 声明。


<a id="t02"></a>
## T02 · 同一非空模型

一个具有明确见证的 System 与 World，同时承载章程、该系统自身得到支持的输出能力、具有相关理由的实现选择，以及五项被表示承诺各自的依据。

**前提与表示:** 见证为 actualSystem 与 actual = (identity, apply)。世界类型独立变化两种实现与两种治理模式；上下文包含该系统的理论、观测假设与应用范围，契约和评估适配器都是明确的模型约定。

**证明或检查:** jointWitness 始终使用同一对象对，组合 actualAdmissible、charterChecked、ownCapabilityGrounded、identityJustified 与 reasonsBelongToCommitments；存在性结论还用等式确定见证身份。

**限度:** 这证明了各项要求在已说明的应用模型中可以共同满足，不证明任意系统正确，也不独立确证所采纳的规范判据。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.preamble#p1](#source-organon-preamble-p1), [organon.preamble#p2](#source-organon-preamble-p2), [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.jointWitness`

[leanified/CoreReader/Integration.lean:595](#line-code-leanified-corereader-integration-lean-595) · case

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
```


<a id="t03"></a>
## T03 · 生成取向承诺

Generative 被定义为重视理解与建构的扩展，并允许政策认定为当前的每种形式被修订。

**前提与表示:** 参数为包含 worthPursuing、current 与 revisable 谓词的 Policy。可修订条款适用于满足 current 的形式；permitsVersion 是另一个独立字段。

**证明或检查:** 该声明通过合取定义一项义务；后续具体政策提供实例，定义本身并不证明任何主体履行了它。

**限度:** 该表示不确立这一目标的终极价值，不证明每次获准修改都推进目标，也不要求立即更改当前形式。

**状态:** accepted (specification). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.charter.self-transcendence#p1](#source-organon-charter-self-transcendence-p1), [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1), [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

### `CoreReader.Agency.Generative`

[leanified/CoreReader/Agency.lean:33](#line-code-leanified-corereader-agency-lean-33) · definition

核心依赖: none.

```lean
def Generative (p : Policy) : Prop :=
```


<a id="t04"></a>
## T04 · 许可不提供价值立场

版本变更获准可以与生成性价值取向缺失同时成立。

**前提与表示:** 具体的 neutral 政策允许版本变更，却不赋予扩展目标价值；Generative 保留其价值取向这一合取项。

**证明或检查:** permissionNotValuation 计算许可条件，并展开 Generative，以缺失的价值取向否定该定义。

**限度:** 这是被表示谓词之间某个蕴含关系的反例，不为任一政策辩护，也不分类所有现实中的许可。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1)

### `CoreReader.Agency.permissionNotValuation`

[leanified/CoreReader/Agency.lean:49](#line-code-leanified-corereader-agency-lean-49) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem permissionNotValuation :
    neutralPolicy.permitsVersion 0 1 ∧ (0 : Nat) ≠ 1 ∧ ¬ Generative neutralPolicy := by
```


<a id="t05"></a>
## T05 · 可修订性与进步

生成性政策使当前形式保持可修订；具体的开放政策也可以在能力完全没有扩展的轨迹中仍满足 Generative。

**前提与表示:** 一般可修订结论以 Generative 及所选形式属于 current 为前提。实例涵盖组织、方法、原则、呈现与产物，并采用恒定的基础状态轨迹。

**证明或检查:** revisabilityCovers 提取可修订义务；revisionWithoutProgress 使用开放政策实例，并证明相邻的相同状态没有新增的理解或建构操作。

**限度:** 可修订与许可并非实际发生修订或能力进步的证据；该结果也不声称修订永远不会带来进步。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.relationships.terms#p1](#source-organon-relationships-terms-p1)

### `CoreReader.Agency.revisabilityCovers`

[leanified/CoreReader/Agency.lean:58](#line-code-leanified-corereader-agency-lean-58) · theorem

核心依赖: none.

```lean
theorem revisabilityCovers (p : Policy) (h : Generative p) (k : FormKind) (v : Nat)
    (hc : p.current ⟨k, v⟩) : p.revisable ⟨k, v⟩ := h.2 _ hc
```

### `CoreReader.Agency.revisionWithoutProgress`

[leanified/CoreReader/Agency.lean:123](#line-code-leanified-corereader-agency-lean-123) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem revisionWithoutProgress :
    Generative openPolicy ∧
    (∀ k : FormKind, openPolicy.revisable ⟨k, 0⟩) ∧
    (∀ t, ¬ Expanded (stableTrace t) (stableTrace (t + 1))) := by
```


<a id="t06"></a>
## T06 · 生成的限度

同一个生成系统展示了没有进步的膨胀、对三种外部资源的依赖、符合应用预算且有理由维持的稳定行动，以及关于自身实际变化的虚假扩展报告。

**前提与表示:** 该系统包含 openPolicy、baseState、assistedExecution、必需的复制能力与数量为 1 的库存预算。inflatedState 复制产物、抽象层和词汇，却不增加理解或建构操作；报告明确指向该所有者、前后状态及输入 0 时预期输出 1 的后继操作。

**证明或检查:** generationLimits 计算同一系统接口：资源齐备时得到 6，删除经验、知识、协作者中的任一项或全部三项均得到 none；稳定行动保持当前状态、必需能力与预算。膨胀超过该预算，而系统生成的报告因其声称的新操作实际上不存在而不成立。

**限度:** 资源依赖与预算是明确的应用条件。这些具有实际内容的实例不确立普遍学习规律、普遍节制义务或任何现实扩展报告的充分性。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

### `CoreReader.Agency.generationLimits`

[leanified/CoreReader/Agency.lean:222](#line-code-leanified-corereader-agency-lean-222) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem generationLimits :
    Generative generatingSystem.policy ∧
    generatingSystem.policy.permitsVersion 0 0 ∧
    ¬ Expanded generatingSystem.current inflatedState ∧
    generatingSystem.current.inventory.length < inflatedState.inventory.length ∧
    generatingSystem.current.abstractionLayers.length < inflatedState.abstractionLayers.length ∧
    generatingSystem.current.vocabulary.length < inflatedState.vocabulary.length ∧
    generatingSystem.execute availableResources = some 6 ∧
    generatingSystem.execute { availableResources with experience := none } = none ∧
```


<a id="t07"></a>
## T07 · 成就需要相应依据

AchievementAccountability 要求为同一成就主张提供 Grounds。若已有支持且实际世界与证据相容，该主张就在该世界成立；具体扩展实例具有匹配依据，而其积极自报本身不足以支持该主张。

**前提与表示:** 一般定理的参数包括世界类型、成就谓词、记录、实际世界，以及 Compatible records actual 和 Supports records achievement 两个前提。具体实例另行固定共同的 baseState 与输入 0：extend 增加后继操作，inflate 只复制内容。

**证明或检查:** achievementNeedsSupport 将支持应用于相容的实际世界，并包含 ConcreteAchievementExample。真实后状态的表现区分出 extend，提供规范连接的匹配依据；积极报告也与 inflate 相容，而该情况下 Expanded before after 为假。

**限度:** 该定义表达规范问责，不把观测设为普遍必需条件。定理的一般分支以支持为前提，不从任意断言推得支持，也不凭记录标签证明现实成就。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2), [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

### `CoreReader.Evidence.AchievementAccountability`

[leanified/CoreReader/Evidence.lean:125](#line-code-leanified-corereader-evidence-lean-125) · definition

核心依赖: none.

```lean
def AchievementAccountability {W : Type} (achievement : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
```

### `CoreReader.Evidence.achievementNeedsSupport`

[leanified/CoreReader/Evidence.lean:217](#line-code-leanified-corereader-evidence-lean-217) · theorem

核心依赖: `propext`, `Quot.sound`.

```lean
theorem achievementNeedsSupport {W : Type} (achievement : Claim W) (records : List (Record W))
    (actual : W) (reliableHere : Compatible records actual) (support : Supports records achievement) :
    achievement actual ∧ ConcreteAchievementExample :=
```


<a id="t08"></a>
## T08 · 整个判断集合的一致性

具有共同世界见证的理论与上下文，不能在语义上同时推出同一问题的肯定与否定答案；分别可满足的假设合在一起仍可能不一致。

**前提与表示:** consequenceConsistency 对世界与问题类型、所持理论和一个 Context 量化，并假定存在同时满足整套所持理论、上下文假设与范围的 Admissible 世界。

**证明或检查:** 一般证明在同一见证处计算两个后果，得到矛盾。jointConflict 合并 P、P 蕴含 Q 与非 Q：每个单元素理论都有模型，其并集却没有模型。

**限度:** 非空见证是这一语义一致性论证的必要前提；成对或孤立检查不确立整体可满足性，也不推出假设的经验真实性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency#p1](#source-organon-charter-consistency-p1)

### `CoreReader.Logic.consequenceConsistency`

[leanified/CoreReader/Logic.lean:31](#line-code-leanified-corereader-logic-lean-31) · theorem

核心依赖: none.

```lean
theorem consequenceConsistency {W Q : Type} (t : Theory W) (c : Context W Q)
    (inhabited : ∃ w, Admissible t c w) : Consistent t c := by
```

### `CoreReader.Logic.jointConflict`

[leanified/CoreReader/Logic.lean:59](#line-code-leanified-corereader-logic-lean-59) · case

核心依赖: none.

```lean
theorem jointConflict :
    Satisfiable (singleton premiseP) ∧ Satisfiable (singleton premiseRule) ∧
    Satisfiable (singleton premiseNotQ) ∧ ¬ Satisfiable jointTheory := by
```


<a id="t09"></a>
## T09 · 修订与语境变化

不同时间索引下的理论可以给出相反答案，而各自均可满足；改变假设、问题含义或范围，也可以改变答案。

**前提与表示:** 这些实例固定明确的布尔解释，并为各个上下文提供见证。肯定与否定答案属于不同的理论切片或上下文，并非同一套不变的合取。

**证明或检查:** revisionCanReverse 构造两个切片，并证明同时合并会失败；contextDifferences 分别改变假设、含义和范围组件，计算相应后果。

**限度:** 这些实例区分修订、上下文差异与同时矛盾，不证明某次具体修订有充分理由、真实或带来进步。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

### `CoreReader.Logic.revisionCanReverse`

[leanified/CoreReader/Logic.lean:78](#line-code-leanified-corereader-logic-lean-78) · case

核心依赖: none.

```lean
theorem revisionCanReverse :
    Satisfiable (revisionSlice 0) ∧ Satisfiable (revisionSlice 1) ∧
    ¬ Satisfiable (union (revisionSlice 0) (revisionSlice 1)) := by
```

### `CoreReader.Logic.contextDifferences`

[leanified/CoreReader/Logic.lean:102](#line-code-leanified-corereader-logic-lean-102) · case

核心依赖: none.

```lean
theorem contextDifferences :
    (Consequence emptyTheory (assumptionContext true) () true ∧
      Consequence emptyTheory (assumptionContext false) () false) ∧
    (Consequence emptyTheory (meaningContext true) () true ∧
      Consequence emptyTheory (meaningContext false) () false) ∧
    (Consequence emptyTheory (scopeContext true) () true ∧
      Consequence emptyTheory (scopeContext false) () false) ∧
    (∀ b, ∃ w, Admissible emptyTheory (assumptionContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (meaningContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (scopeContext b) w) := by
```


<a id="t10"></a>
## T10 · 变化必须如实说明

在 TruthfulReport 约定下，语义变化或修订身份变化要求积极报告变更。重排相同的所持内容并不改变内容，而如实报告也不使修订后的假设变真。

**前提与表示:** 一般结论以两个快照、报告标记、TruthfulReport 义务及实际发生的语义或身份变化为前提。SameContent 外延比较所持主张、上下文假设、含义与范围。

**证明或检查:** semanticChangeMustBeReported 应用已假定的报告义务；representationOrderIrrelevant 证明并集交换性；hiddenContextChangeRejected 分别检验隐瞒假设、含义、范围与身份变化的情况，并展示已报告的修订仍可在指定实际世界为假。

**限度:** 报告规则是被采纳的约定，不能仅从逻辑推导；这些实例不判定所有可能的修订形式，也不认证已报告变更的质量。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

### `CoreReader.Logic.semanticChangeMustBeReported`

[leanified/CoreReader/Logic.lean:142](#line-code-leanified-corereader-logic-lean-142) · theorem

核心依赖: none.

```lean
theorem semanticChangeMustBeReported {W Q : Type} (a b : Snapshot W Q) (reported : Bool)
    (changed : ¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity)
    (h : TruthfulReport a b reported) : reported = true := h changed
```

### `CoreReader.Logic.representationOrderIrrelevant`

[leanified/CoreReader/Logic.lean:150](#line-code-leanified-corereader-logic-lean-150) · theorem

核心依赖: none.

```lean
theorem representationOrderIrrelevant {W : Type} (p q : Claim W) :
    ∀ r, union (singleton p) (singleton q) r ↔ union (singleton q) (singleton p) r := by
```

### `CoreReader.Logic.hiddenContextChangeRejected`

[leanified/CoreReader/Logic.lean:160](#line-code-leanified-corereader-logic-lean-160) · case

核心依赖: none.

```lean
theorem hiddenContextChangeRejected :
    ¬ TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (meaningContext true)) (contextSnapshot (meaningContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true)) (contextSnapshot (scopeContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true) 0) (contextSnapshot (scopeContext true) 1) false ∧
    (TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) true ∧
      ¬ Models (assumptionContext false).assumptions true) := by
```


<a id="t11"></a>
## T11 · 张力与矛盾

不同资源目标可以共同满足；相反，同一理论与上下文对同一问题的肯定和否定后果会违反 Consistent。

**前提与表示:** 张力实例采用 4 ≤ budget 与 budget ≤ 6 两个谓词；conflictRequiresChange 接受任意理论、上下文与问题，以及两个相反后果作为前提。

**证明或检查:** tensionWithoutContradiction 提供预算 5，并证明两个谓词不同；conflictRequiresChange 将 Consistent 的定义应用于已给出的相反后果对。

**限度:** 后一定理只证明不一致，既不构造修复，也不决定应改变哪项承诺；资源实例不分类一切实践张力。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1)

### `CoreReader.Logic.tensionWithoutContradiction`

[leanified/CoreReader/Logic.lean:186](#line-code-leanified-corereader-logic-lean-186) · case

核心依赖: none.

```lean
theorem tensionWithoutContradiction :
    (∃ budget : Nat, 4 ≤ budget ∧ budget ≤ 6) ∧
    ¬ ((fun n : Nat => 4 ≤ n) = (fun n : Nat => n ≤ 6)) := by
```

### `CoreReader.Logic.conflictRequiresChange`

[leanified/CoreReader/Logic.lean:195](#line-code-leanified-corereader-logic-lean-195) · theorem

核心依赖: none.

```lean
theorem conflictRequiresChange {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q)
    (positive : Consequence t c q true) (negative : Consequence t c q false) :
    ¬ Consistent t c := fun h => h q ⟨positive,negative⟩
```


<a id="t12"></a>
## T12 · 一致性不等于真实性或覆盖充分性

可满足性不确立指定实际世界中的真实性；一个可满足的理论也可以对明确的问题不作决定。

**前提与表示:** 实例采用布尔世界：一个理论只有“世界为 true”这一假设；另一个为空理论，问题为世界是否为 true。

**证明或检查:** consistentFalse 提供 true 模型，并在 false 处否定该单一假设；consistentIncomplete 提供空理论的模型，利用相反世界分别否定两个答案的语义蕴含。

**限度:** 这些是明确的可满足性与非蕴含结果，不是对现实信念的经验分类，也不是形式算术的一般不完备定理。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Logic.consistentFalse`

[leanified/CoreReader/Logic.lean:205](#line-code-leanified-corereader-logic-lean-205) · case

核心依赖: none.

```lean
theorem consistentFalse : Satisfiable (singleton (fun w : Bool => w = true)) ∧
    ¬ Models (singleton (fun w : Bool => w = true)) false := by
```

### `CoreReader.Logic.consistentIncomplete`

[leanified/CoreReader/Logic.lean:216](#line-code-leanified-corereader-logic-lean-216) · case

核心依赖: none.

```lean
theorem consistentIncomplete : Satisfiable (emptyTheory : Theory Bool) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) ∧
    ¬ Entails emptyTheory (fun w : Bool => w ≠ true) := by
```


<a id="t13"></a>
## T13 · 具有具体问题与理由的反身性工作

Reflexive 要求原则登记一致，并对各已登记原则实际适用的每个自有对象进行有效应用。有效应用携带该原则的问题、理由、限度，以及满足其独立规定含义的结果。

**前提与表示:** 参数为所有者、已登记原则与工作记录。ValidApplication 连接原则身份、对象、生成或评估活动、解析后的目标方法、准确问题、非空且匹配对象的理由、限度与语义结果；适用性与所有权是明确条件。

**证明或检查:** 该声明定义义务。共享模型中的 completeOwnWork_reflexive 为系统、两个原则及其形成、应用、修订过程提供经过内容检查的工作；评估器读取实际样本、声明范围与反例，并接受对修订作出的 insufficient 判断。

**限度:** 生成只对 generationEligible 对象成立；在本模型中，应用阶段过程接受评估。包括否定判断在内的有效工作，不证明受评原则正确，也不穷尽现实反身性探究。

**状态:** accepted (specification). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.reflexivity#p1](#source-organon-charter-reflexivity-p1), [organon.charter.reflexivity.meaning#p1](#source-organon-charter-reflexivity-meaning-p1), [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

### `CoreReader.Agency.Reflexive`

[leanified/CoreReader/Reflexivity.lean:151](#line-code-leanified-corereader-reflexivity-lean-151) · definition

核心依赖: none.

```lean
def Reflexive (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
```


<a id="t14"></a>
## T14 · 自我应用不构成自证

满足 Reflexive 的工作集合不能遗漏适用的自有对象，但不适用对象无需接受工作。通过选定的自测或自行生成修订，都不确立普遍正确性。

**前提与表示:** noSelfExemption 以 Reflexive、原则属于登记集合、所有者匹配及适用性为前提；applicabilityRetained 保留这些条件。反例在测试与主张中使用同一算术原则，并使用所有者为 17、先前输出恒假、种子为 0 且确实生成相应修订的 GeneratingProcess。

**证明或检查:** 一般证明提取有效工作及其范围。算术原则在 1 处通过，却在 0 处失败；selfOriginDoesNotSupport 包含真实的生成者、旧对象和输出关系：修订通过输入 0 的观测，却在 1 处失败，构成否定 allTrue 的证据相容反世界。

**限度:** 范围覆盖弱于完整有效的 Reflexive 工作。实例否定自我认证的蕴含关系，不表示一切自测或自行生成的修订都无价值。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

### `CoreReader.Agency.noSelfExemption`

[leanified/CoreReader/Reflexivity.lean:165](#line-code-leanified-corereader-reflexivity-lean-165) · theorem

核心依赖: none.

```lean
theorem noSelfExemption (owner : Nat) (rules : List Principle) (records : List WorkRecord)
    (h : Reflexive owner rules records) (rule : Principle) (hr : rule ∈ rules)
    (s : Subject) (hs : s.owner = owner) (ha : rule.applicable s) :
    Performed records s rule.activity := h.toScope rule hr s hs ha
```

### `CoreReader.Agency.applicabilityRetained`

[leanified/CoreReader/Reflexivity.lean:407](#line-code-leanified-corereader-reflexivity-lean-407) · theorem

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem applicabilityRetained (owner : Nat) (rules : List Principle) (records : List WorkRecord) :
    (Reflexive owner rules records → ReflexiveScope owner rules records) ∧
    (ReflexiveScope owner rules records ↔
      ∀ rule ∈ rules, ∀ s, s.owner = owner → (¬ rule.applicable s ∨ Performed records s rule.activity)) ∧
    (Reflexive 0 [applicationRule] applicationWork ∧
      ¬ Performed applicationWork (.system 0) .assessment) := by
```

### `CoreReader.Agency.selfTestDoesNotProve`

[leanified/CoreReader/Agency.lean:275](#line-code-leanified-corereader-agency-lean-275) · case

核心依赖: none.

```lean
theorem selfTestDoesNotProve :
    selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false ∧
      ¬ (∀ n, ownArithmeticPrinciple n = true) := by
```

### `CoreReader.Evidence.selfOriginDoesNotSupport`

[leanified/CoreReader/Evidence.lean:616](#line-code-leanified-corereader-evidence-lean-616) · case

核心依赖: `propext`.

```lean
theorem selfOriginDoesNotSupport :
    localGenerator 0 0 = true ∧ localGenerator 0 1 = false ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue ∧ OwnedRevisionExample := by
```


<a id="t15"></a>
## T15 · 支持、强度与范围

Grounds 将同一主张与全部实际适用的已表示方面及其真实表述连接起来。固定证据时，弱化结论或缩小其量化范围可保持支持。

**前提与表示:** Grounds 接受主张、按方面索引的表述、actualApplicable 谓词及覆盖它的非空列表。各列出方面必须属于同一主张、具有表述、匹配实际前提、理由与限度，并通过已说明的评估适配器。supportWeakening 假定 Supports records p 及逐点的 p 蕴含 q；scopeRestriction 假定广域结论已获支持，并有窄域包含于广域的条件。

**证明或检查:** 这里定义义务，而不普遍证明义务已履行。两个保持性证明都在同一相容世界应用原有支持，再使用蕴含或范围包含；经验、推论与价值表述适配器分别揭示实际记录相容性、理论或按选项索引的理由。

**限度:** 这些定理弱化的是结论，不是证据。FacetDischarged 与规范表述是特定应用的语义适配器，并不完整定义或证明原文层面的所有经验或价值充分性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.Grounds`

[leanified/CoreReader/Evidence.lean:112](#line-code-leanified-corereader-evidence-lean-112) · definition

核心依赖: none.

```lean
def Grounds {W : Type} (claim : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
```

### `CoreReader.Evidence.supportWeakening`

[leanified/CoreReader/Evidence.lean:228](#line-code-leanified-corereader-evidence-lean-228) · theorem

核心依赖: none.

```lean
theorem supportWeakening {W : Type} (records : List (Record W)) (p q : Claim W)
    (support : Supports records p) (weaker : ∀ w, p w → q w) : Supports records q :=
```

### `CoreReader.Evidence.scopeRestriction`

[leanified/CoreReader/Evidence.lean:245](#line-code-leanified-corereader-evidence-lean-245) · theorem

核心依赖: none.

```lean
theorem scopeRestriction {W X : Type} (records : List (Record W)) (p : W → X → Prop)
    (wide narrow : X → Prop) (included : ∀ x, narrow x → wide x)
    (support : Supports records (fun w => ∀ x, wide x → p w x)) :
    Supports records (fun w => ∀ x, narrow x → p w x) :=
```


<a id="t16"></a>
## T16 · 所有适用面向均保留责任

两组适用方面的责任恰好按并集合并，新增标签不能免除它们。一个同时具有经验与价值方面的主张，可以通过所表示的经验检查，却未通过其价值程序。

**前提与表示:** assessmentUnion 使用两个真实的方面谓词；labelsCannotWaive 中的标签不改变这些谓词或 FacetDischarged。混合开关实例针对同一“已选择开启”主张：真实观测评估选择事实，而采纳又引入价值程序。

**证明或检查:** 一般证明把全称义务分配到析取上，并展开标签包装；mixedMissingResponsibility 将通过检查的开关证据与理由列表为空、因而未通过 ValueProcedure 的 unsupportedPosition 组合起来。

**限度:** 空列表失败确立的是已记录程序责任的缺失，不是不存在充分价值理由。哪些方面实际适用仍是明确输入，需要忠于来源的判断。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.assessmentUnion`

[leanified/CoreReader/Evidence.lean:261](#line-code-leanified-corereader-evidence-lean-261) · theorem

核心依赖: none.

```lean
theorem assessmentUnion {W : Type} (a b : Facet W → Prop) :
    Duties (fun f => a f ∨ b f) ↔ Duties a ∧ Duties b := by
```

### `CoreReader.Evidence.labelsCannotWaive`

[leanified/CoreReader/Evidence.lean:272](#line-code-leanified-corereader-evidence-lean-272) · theorem

核心依赖: none.

```lean
theorem labelsCannotWaive {W : Type} (xs ys : List String) (a : Facet W → Prop) :
    LabeledDuties xs a ↔ LabeledDuties ys a := Iff.rfl
```

### `CoreReader.Evidence.mixedMissingResponsibility`

[leanified/CoreReader/Evidence.lean:362](#line-code-leanified-corereader-evidence-lean-362) · case

核心依赖: `propext`.

```lean
theorem mixedMissingResponsibility :
    FacetDischarged switchEmpirical ∧
    ¬ LabeledDuties [] (fun f : Facet Bool => f = switchEmpirical ∨ f = .value unsupportedPosition) := by
```


<a id="t17"></a>
## T17 · 清晰表达、重复与断言仍可能不足

在明确反例中，表述、重复的无关观测、与理论相容及自我断言，都不能确立更强的主张。非空公告可以与真实预算违规并存。

**前提与表示:** 实例区分可观测温度与另一输出，以及被观测的选择与可用预算。预算模型评估成本为 3 的同一采纳选项；起点假设固定选择而不保证预算。真实的启动公告与预算为 0 相容。

**证明或检查:** articulationNotSupport 提供非空但无信息的表述；measurementRepeatNotSupport 在重复同一真实测试后仍保留反世界；compatibilityNotEntailment 区分已有共同模型与不成立的全称后果；selfAssertionNotReason 同时包含理由缺失与非空公告实例，后者虽可共同采纳，实际成本却超过预算。

**限度:** 这些是特定主张与依据的失败，不是否定表述、重复或相容性的价值。理由缺失分支属于程序结果；预算分支另在其选定的目标与约束适配器内提供实质反例。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.articulationNotSupport`

[leanified/CoreReader/Evidence.lean:377](#line-code-leanified-corereader-evidence-lean-377) · case

核心依赖: `propext`.

```lean
theorem articulationNotSupport : Articulated uninformativeArgument ∧
    ¬ Entails uninformativeArgument.assumptions (fun w : Bool => w = true) := by
```

### `CoreReader.Evidence.measurementRepeatNotSupport`

[leanified/CoreReader/Evidence.lean:451](#line-code-leanified-corereader-evidence-lean-451) · case

核心依赖: `propext`.

```lean
theorem measurementRepeatNotSupport :
    temperatureRecord.test (true,false) = true ∧
    Compatible [temperatureRecord,temperatureRecord] (true,false) ∧
    Compatible [temperatureRecord,temperatureRecord] (true,true) ∧
    ¬ Supports [temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    ¬ Supports [temperatureRecord,temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    Compatible [actionRecord,actionRecord] (true,0) ∧
    Compatible [actionRecord,actionRecord] (true,3) ∧
    ¬ Supports [actionRecord] announcementPosition.consequence ∧
    ¬ Supports [actionRecord,actionRecord] announcementPosition.consequence ∧
    ¬ ValueProcedure announcementPosition := by
```

### `CoreReader.Logic.compatibilityNotEntailment`

[leanified/CoreReader/Logic.lean:229](#line-code-leanified-corereader-logic-lean-229) · case

核心依赖: none.

```lean
theorem compatibilityNotEntailment :
    Satisfiable (union emptyTheory (singleton (fun w : Bool => w = true))) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) := by
```

### `CoreReader.Evidence.selfAssertionNotReason`

[leanified/CoreReader/Evidence.lean:478](#line-code-leanified-corereader-evidence-lean-478) · case

核心依赖: `propext`.

```lean
theorem selfAssertionNotReason :
    (unsupportedPosition.commitment true ∧ ¬ ValueProcedure unsupportedPosition) ∧
    (announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
      ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition) ∧
    JointAdoption announcementPosition :=
```


<a id="t18"></a>
## T18 · 被采纳的价值立场与联合理由

价值评估程序可以从可满足、但不能由空理论推出的采纳起点得到履行。多条理由可以共同支持所采纳选项的真实后果，即使每条理由单独均不充分。

**前提与表示:** ValueProcedure 要求非空且按选项索引的理由；存在一个同时满足起点假设、限度、采纳和全部理由的世界；在起点与限度内，理由合取支持该选项的目标和约束；并对相关批评给出非空回应。这些是明确的“选项—后果”评估条件。

**证明或检查:** valueWithoutSelfProof 构造有收益的开启选项，证明其起点理论可满足且承诺不由 emptyTheory 蕴含，并排除相反、矛盾及无法采纳的变体。heterogeneousReasons 包含真实的经验、推论与价值实例，以及收益为 4、成本至多为 3 的实例：理由合取通过，而世界 (4,5) 与 (0,3) 分别否定单条理由的充分性。

**限度:** 该程序检查已说明的应用适配器，不确立终极价值正当性，也不把演绎形式规定为所有价值理由的必需形式。回应字符串表示已记录回应，不证明回答令人信服；未由自身推得的起点有别于不一致起点。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.valueWithoutSelfProof`

[leanified/CoreReader/Evidence.lean:493](#line-code-leanified-corereader-evidence-lean-493) · case

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem valueWithoutSelfProof : ValueProcedure switchPosition ∧
    Satisfiable switchPosition.starting ∧
    ¬ Entails (emptyTheory : Theory Bool) switchPosition.commitment ∧
    (JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition) ∧
    (¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition) :=
```

### `CoreReader.Evidence.heterogeneousReasons`

[leanified/CoreReader/Evidence.lean:564](#line-code-leanified-corereader-evidence-lean-564) · case

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem heterogeneousReasons :
    FacetDischarged switchEmpirical ∧
    FacetDischarged (Facet.inferential (singleton (fun w : Bool => w = true)) (fun w => w = true)) ∧
    FacetDischarged (Facet.value switchPosition) ∧ JointReasonsExample := by
```


<a id="t19"></a>
## T19 · 局部证据与被遗漏的差异

在已观测输入上的一致可以掩盖其他位置的差异，因此针对特定输入的证据不足以支持全称主张。

**前提与表示:** 世界为自然数输入上的布尔值函数。zeroRecord 只观测输入 0 返回 true；比较对象为恒真函数与 localGenerator 0。

**证明或检查:** localNotUniversal 保留 localGenerator 0 作为否定 allTrue 的记录相容反世界；hiddenDifference 证明在 n = 0 范围内一致，并计算 n = 1 处的不同输出。

**限度:** 结论针对所述观测范围，不排除利用额外前提作出有理由的推广，也不建立一般统计推断规则。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

### `CoreReader.Evidence.localNotUniversal`

[leanified/CoreReader/Evidence.lean:630](#line-code-leanified-corereader-evidence-lean-630) · case

核心依赖: `propext`.

```lean
theorem localNotUniversal :
    (∃ outside : Nat, outside ≠ 0) ∧
    Compatible [zeroRecord] (fun _ => true) ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    allTrue (fun _ => true) ∧ ¬ allTrue (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue := by
```

### `CoreReader.Evidence.hiddenDifference`

[leanified/CoreReader/Evidence.lean:645](#line-code-leanified-corereader-evidence-lean-645) · case

核心依赖: none.

```lean
theorem hiddenDifference :
    (∀ n : Nat, n = 0 → (fun _ : Nat => true) n = localGenerator 0 n) ∧
    (fun _ : Nat => true) 1 ≠ localGenerator 0 1 := by
```


<a id="t20"></a>
## T20 · 观察、复现与稳定性

单次观测无需重复即可支持有界主张；有效的推论评估也可以完全不使用观测。记录准确性、条件复现与结论稳定性彼此不同，不同结果仍可保持同一界限。

**前提与表示:** 观测仅涉及输入 0；非观测方面以 n = 2 为假设，得出 n + 1 = 3。Trial 明确区分 setting、actualOutcome 与 recordedOutcome；Verified 比较实际值与记录值，Reproduced 比较设置，Bounded 表示实际结果至多为 2。

**证明或检查:** singleObservation 证明局部支持并否定 allTrue；noUniversalChain 提供无需观测且通过检查的算术方面；variableOutcomesStableBound 使用设置为 0、实际结果为 1 和 2 的实例；verificationReproductionStability 分别提供设置变化、记录不准确及超出界限的实例。

**限度:** 这是有限的可能试次模型，不是概率定理、经验复现研究或未来运行保证；它仅在所表示的评估接口内否定普遍必需的观测链条。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

### `CoreReader.Evidence.singleObservation`

[leanified/CoreReader/Evidence.lean:656](#line-code-leanified-corereader-evidence-lean-656) · case

核心依赖: `propext`.

```lean
theorem singleObservation : [zeroRecord].length = 1 ∧
    (∃ f, Compatible [zeroRecord] f) ∧
    Supports [zeroRecord] (fun f => f 0 = true) ∧
    ¬ Supports [zeroRecord] allTrue :=
```

### `CoreReader.Evidence.noUniversalChain`

[leanified/CoreReader/Evidence.lean:673](#line-code-leanified-corereader-evidence-lean-673) · case

核心依赖: `propext`.

```lean
theorem noUniversalChain : FacetDischarged arithmeticFacet ∧ usesObservation arithmeticFacet = false := by
```

### `CoreReader.Evidence.variableOutcomesStableBound`

[leanified/CoreReader/Evidence.lean:694](#line-code-leanified-corereader-evidence-lean-694) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem variableOutcomesStableBound :
    let a : Trial := ⟨0,1,1⟩
```

### `CoreReader.Evidence.verificationReproductionStability`

[leanified/CoreReader/Evidence.lean:705](#line-code-leanified-corereader-evidence-lean-705) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem verificationReproductionStability :
    (Verified ⟨0,1,1⟩ ∧ Verified ⟨1,1,1⟩ ∧ ¬ Reproduced ⟨0,1,1⟩ ⟨1,1,1⟩) ∧
    (Reproduced ⟨0,1,1⟩ ⟨0,3,2⟩ ∧ ¬ Verified ⟨0,3,2⟩ ∧ ¬ Bounded ⟨0,3,2⟩) ∧
    (Bounded ⟨0,1,1⟩ ∧ Bounded ⟨0,2,0⟩ ∧ ¬ Verified ⟨0,2,0⟩) := by
```


<a id="t21"></a>
## T21 · 能力契约与外部评估

同一 Process 的正确输出与解释契约彼此不同。只要求输出与要求解释的应用分别具有真实且限定对象的依据；外部评估者可以在过程不提供内部解释时认证前者。复制库存不会增加被表示的操作。

**前提与表示:** OutputContract 要求每个自然数输入均输出 n + n；ExplanationContract 要求提供一个 Program，其在每个输入上的计算等于同一过程的输出。processScope 用相等关系固定受评过程；规范表述与方面使用同一范围和契约。ExternalCertificate 以实际过程为索引，并区分评估者 42 与受评参与者 7。

**证明或检查:** 具体计算证明两个过程都将输入加倍；outputOnlyProcess 的解释为 none，explainedProcess 则提供 doubleInput。同一只输出过程在其非空对象范围中否定更强的完整契约。externalAssessment 构造完整输出证明，而不是假定其真实性；inventoryNotCapability 证明复制不改变可用操作的成员关系。

**限度:** 这些算术契约是应用选择，不是能力或理解的普遍定义。解释契约针对明确证书，不涉及未观测的心智理解；外部参与者标识不确立现实来源。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

### `CoreReader.Evidence.outputNotExplanation`

[leanified/CoreReader/Evidence.lean:793](#line-code-leanified-corereader-evidence-lean-793) · case

核心依赖: `propext`.

```lean
theorem outputNotExplanation : OutputContract outputOnlyProcess ∧
    ¬ ExplanationContract outputOnlyProcess ∧ OutputContractEvidence :=
```

### `CoreReader.Evidence.applicationContractsDiffer`

[leanified/CoreReader/Evidence.lean:801](#line-code-leanified-corereader-evidence-lean-801) · case

核心依赖: `propext`.

```lean
theorem applicationContractsDiffer :
    (OutputContract outputOnlyProcess ∧ ¬ (OutputContract outputOnlyProcess ∧ ExplanationContract outputOnlyProcess)) ∧
    (OutputContract explainedProcess ∧ ExplanationContract explainedProcess) ∧
    ScopedApplicationEvidence :=
```

### `CoreReader.Evidence.externalAssessment`

[leanified/CoreReader/Evidence.lean:821](#line-code-leanified-corereader-evidence-lean-821) · case

核心依赖: `propext`.

```lean
theorem externalAssessment :
    (∃ certificate : ExternalCertificate outputOnlyProcess,
      certificate.assessorId = 42 ∧ certificate.assessedId = 7 ∧
      certificate.assessorId ≠ certificate.assessedId ∧ OutputContract outputOnlyProcess) ∧
    ProcessGrounds outputOnlyProcess OutputContract ∧
    ¬ ExplanationContract outputOnlyProcess :=
```

### `CoreReader.Agency.inventoryNotCapability`

[leanified/CoreReader/Agency.lean:85](#line-code-leanified-corereader-agency-lean-85) · theorem

核心依赖: `propext`, `Quot.sound`.

```lean
theorem inventoryNotCapability (kind : InventoryKind) (ops : List Operation) (op : Operation) :
    Available ((ops.map fun x => Item.mk kind x) ++ (ops.map fun x => Item.mk kind x)) op ↔
      Available (ops.map fun x => Item.mk kind x) op := by
```


<a id="t22"></a>
## T22 · 相关实现理由

地位本身不能满足被表示的实现选择规范；一个既有且惯常的实现，在实际行为提供相关理由并满足要求时，可以满足该规范。

**前提与表示:** JustifiedChoice 要求可行性及列表中存在 Relevant 理由。被采纳的 Relevant 定义排除地位理由，并按要求检查实际方法内容。具体恒等应用要求恒等输出、预算为 1，并接纳输出理由。

**证明或检查:** statusOnlyFails 对任意要求、实现与地位理由展开地位分支；conventionWithReason 检验惯常且已确立的恒等实现，并构造基于输出的选择理由。

**限度:** 这种排除是明确采纳的选择规范，不是价值中立的定理。实例既不拒绝所有既有实现，也不证明所选要求普遍充分。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2)

### `CoreReader.Choice.statusOnlyFails`

[leanified/CoreReader/Choice.lean:58](#line-code-leanified-corereader-choice-lean-58) · theorem

核心依赖: `propext`.

```lean
theorem statusOnlyFails (req : Requirements) (i : Implementation) (k : StatusKind) :
    ¬ JustifiedChoice req i [.status k] := by
```

### `CoreReader.Choice.conventionWithReason`

[leanified/CoreReader/Choice.lean:116](#line-code-leanified-corereader-choice-lean-116) · case

核心依赖: `propext`.

```lean
theorem conventionWithReason :
    identityImpl.conventional = true ∧ identityImpl.established = true ∧
    JustifiedChoice identityRequirements identityImpl [.status .convention, .method .output] := by
```


<a id="t23"></a>
## T23 · 准确审查不自动施加额外选择规范

两个独立规定的选择政策完成同一个准确的、否定地位优先权的审查，却在额外选择规范上不同：仅凭地位的政策失败，使用输出理由的政策通过。

**前提与表示:** 两个政策都选择 identity，共享真实的惯常与既有地位事实、这些事实是否蕴含 identity 优先权这一准确问题，以及 false 报告。变化的仅为 priorityReasons。GeneralAssessmentFulfilled 登记表述与准确完成该审查；AdditionalChoiceNorm 单独检查 JustifiedChoice。

**证明或检查:** generalGroundsNotChoice 保留地位非蕴含的反模型，并包含 PolicyIndependenceExample。successor 解释满足相同地位事实却否定优先权；随后 statusOnlyFails 与 identityJustified 在不改变该审查的情况下确立相反的政策结果。

**限度:** 该结果针对所规定评估程序的履行，不是完整的哲学 Grounds。继续凭未获支持的地位赋予优先权，也可能违反一般支持比例要求；本定理不否认这一点，也不证明选择规范独立于所有核心义务。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Choice.generalGroundsNotChoice`

[leanified/CoreReader/Choice.lean:284](#line-code-leanified-corereader-choice-lean-284) · case

核心依赖: `propext`.

```lean
theorem generalGroundsNotChoice :
    (Articulated priorityArticulation ∧ AssessmentAccurate false ∧
      (∀ selected, Models statusFacts selected) ∧
      priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
      ¬ Entails statusFacts priorityClaim ∧
      ¬ JustifiedChoice identityRequirements identityImpl [.status .standing]) ∧
    PolicyIndependenceExample :=
```


<a id="t24"></a>
## T24 · 开放不蕴含等价或多个可行方案

开放的选择情境中，被表示的候选仍可能只有一个可行。局部一致不使实现等价；当必需输出错误时，合格的内部方法理由也未必足以支持选择。

**前提与表示:** 候选类型包含 identity 与 successor，按恒等输出和预算 1 评估。相关内部理由由 Requirements.values 选定，并检查忠实解释、适用性、成本或过程。另一个便宜的后继实现成本为 1，却仍返回 n + 1。

**证明或检查:** singleFeasible 确定唯一可行候选；localNotGlobal 对照 0 处一致与 1 处不同；internalReasons 验证 identity 的四类真实理由，并包含便宜却错误的反例；openNotEquivalent 保留有理由的恒等选择，同时证明其输出不同于 successor。

**限度:** 唯一性相对于这两个候选及所述要求成立。理由相关不等于充分可行；开放性不蕴含价值相同、必须多选或拒绝既有选项。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations.limits#p1](#source-organon-grounds-implementations-limits-p1)

### `CoreReader.Choice.singleFeasible`

[leanified/CoreReader/Choice.lean:132](#line-code-leanified-corereader-choice-lean-132) · case

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem singleFeasible :
    (∀ candidate, Feasible identityRequirements (implementation candidate) ↔ candidate = .identity) ∧
    JustifiedChoice identityRequirements identityImpl objectiveReason := by
```

### `CoreReader.Choice.localNotGlobal`

[leanified/CoreReader/Choice.lean:146](#line-code-leanified-corereader-choice-lean-146) · case

核心依赖: none.

```lean
theorem localNotGlobal :
    (∀ x, x = 0 → identityImpl.run x = changedOutsideZero.run x) ∧
    identityImpl.run 1 ≠ changedOutsideZero.run 1 := by
```

### `CoreReader.Choice.internalReasons`

[leanified/CoreReader/Choice.lean:168](#line-code-leanified-corereader-choice-lean-168) · case

核心依赖: none.

```lean
theorem internalReasons :
    Relevant identityRequirements identityImpl (.method .explanation) ∧
    Relevant identityRequirements identityImpl (.method .applicability) ∧
    Relevant identityRequirements identityImpl (.method .simplicity) ∧
    Relevant identityRequirements identityImpl (.method .procedure) ∧
    (Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
      ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity]) := by
```

### `CoreReader.Choice.openNotEquivalent`

[leanified/CoreReader/Choice.lean:182](#line-code-leanified-corereader-choice-lean-182) · case

核心依赖: `propext`.

```lean
theorem openNotEquivalent :
    JustifiedChoice identityRequirements identityImpl objectiveReason ∧
    identityImpl.run 0 ≠ successorImpl.run 0 := by
```


<a id="t25"></a>
## T25 · 同一系统中的相互应用

共享系统在已报告修订中保持一致，承载自有评估工作及自身能力依据，评估自身的一般依据供给规则，并通过相关提案判断而非地位来评价其当前哲学方法。

**前提与表示:** 实例使用 actualSystem 与 actual。修订理论增加同一方法在输入 0 处的事实，并改变修订身份。GroundsProvision 在 apply/waive 许可下，对任意已表示主张与方面组合量化。当前哲学方法共享系统的原则形式与治理模式，并按两个指定提案输入评估。

**证明或检查:** revisionKeepsConsistency 复用同一可接受见证并排除虚假变更报告；ownCapabilityGrounded 组合自有评估工作与匹配的输出依据；groundsSelfAssessment 通过依据承诺的真实接受、拒绝后果及相关批评，评估一般供给规则；existingPhilosophyNotPrivileged 证明该实际方法接受有效提案、拒绝便宜却错误的提案、不能仅凭地位获准，却可得到基于输出的选择理由。

**限度:** 这些是针对一个系统构造的结果。自有评估工作与能力依据是分别检查的组件，并不声称一条工作记录包含全部能力证明。经典逻辑判定定义是数学装置；价值适配器不确立该哲学的终极正当性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.revisionKeepsConsistency`

[leanified/CoreReader/Integration.lean:144](#line-code-leanified-corereader-integration-lean-144) · theorem

核心依赖: `propext`, `Quot.sound`.

```lean
theorem revisionKeepsConsistency :
    Charter actualSystem actual ∧ Consistent revisedHeld context ∧
    TruthfulReport initialSnapshot revisedSnapshot true ∧
    ¬ TruthfulReport initialSnapshot revisedSnapshot false := by
```

### `CoreReader.Integration.ownCapabilityGrounded`

[leanified/CoreReader/Integration.lean:165](#line-code-leanified-corereader-integration-lean-165) · theorem

核心依赖: `propext`, `Quot.sound`.

```lean
theorem ownCapabilityGrounded :
    OwnCapabilityDuty actualSystem actual [capabilityFacet] ∧ capability actual := by
```

### `CoreReader.Integration.groundsSelfAssessment`

[leanified/CoreReader/Integration.lean:443](#line-code-leanified-corereader-integration-lean-443) · theorem

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem groundsSelfAssessment :
    Grounds (fun w => GroundsProvision w.2) canonicalArticulation
      (fun f => f = commitmentFacet .grounds) [commitmentFacet .grounds] ∧
    (commitmentPosition .grounds).limits actual ∧
    (commitmentPosition .grounds).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor .grounds .waive) := by
```

### `CoreReader.Integration.existingPhilosophyNotPrivileged`

[leanified/CoreReader/Integration.lean:497](#line-code-leanified-corereader-integration-lean-497) · theorem

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem existingPhilosophyNotPrivileged :
    (currentPhilosophy actualSystem actual).form = actualSystem.principleForm ∧
    (currentPhilosophy actualSystem actual).mode = actualSystem.governance actual ∧
    ¬ JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.status .standing] ∧
    JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.method .output] ∧
    (currentPhilosophy actualSystem actual).review 0 = 1 ∧
    (currentPhilosophy actualSystem actual).review 1 = 0 := by
```


<a id="t26"></a>
## T26 · 不同承诺及其组合

仅有生成性取向不保证 Reflexive 工作；满足章程的系统仍可能为自身能力提交不足的证据。共享见证还证明被表示的各项承诺可以共同满足。

**前提与表示:** 第一个反例组合 openPolicy 与空工作列表，却确有适用的系统评估义务。第二个保留 actualSystem、actual 及其章程，却以真实的成本许可证据支持输出能力主张。jointWitness 使用匹配的能力证据与完整自有工作。

**证明或检查:** generationNotReflexivity 从假定的 Reflexive 证明中推出实际上缺失的适用工作；charterNotGrounds 保留与成本记录相容但输出错误的世界；jointWitness 提供同一实际对象对，满足可接受性、章程、能力责任、有理由的选择及每项承诺的依据。

**限度:** 这些结果确立所述区分与共同可满足性，不证明所有承诺完整的两两逻辑独立、优先级层次，也不自动为满足章程的每项主张提供依据。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Agency.generationNotReflexivity`

[leanified/CoreReader/Agency.lean:257](#line-code-leanified-corereader-agency-lean-257) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem generationNotReflexivity :
    Generative openPolicy ∧ ¬ Reflexive 0 (ownRules 0) [] := by
```

### `CoreReader.Integration.charterNotGrounds`

[leanified/CoreReader/Integration.lean:577](#line-code-leanified-corereader-integration-lean-577) · case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem charterNotGrounds :
    Charter actualSystem actual ∧
    Compatible [costAllowanceRecord] actual ∧
    ¬ Grounds capability canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
```

### `CoreReader.Integration.jointWitness`

[leanified/CoreReader/Integration.lean:595](#line-code-leanified-corereader-integration-lean-595) · case

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
```


<a id="t27"></a>
## T27 · 应用责任与分别给出的理由

满足已采纳 ApplicationDuties 的应用，保留 Reflexive 工作，以及针对自身契约主张的全部实际适用且正确表述的依据。共享的五项承诺各自具有匹配价值依据、共同采纳见证与相关批评，而其 waive 变体未通过所选程序。 在已登记的变化案例中，同一证据仍支持恒等契约，但不支持改后的后继契约。

**前提与表示:** applicationRetainsDuties 接受 System、World、Requirements、任意契约、按方面索引的表述、适用性谓词与方面列表，并假定这些确切参数满足 ApplicationDuties。reasonsBelongToCommitments 接受生成性、一致性、反身性、依据或选择中的一项；每个立场共享治理选择，却各自具有真实后果、理由、约束与批评。

**证明或检查:** 应用定理提取已假定的义务，包括各列出方面的同一主张等式与 FacetArticulated；承诺定理按各方面的原有内容构造表述，建立相应依据与共同见证，检查非空泛的批评条件，并以真实操作扩展、矛盾处理、自测覆盖、证据接受与实现判断比较 apply 和 waive。 补充案例 applicationVariation 固定系统与观察：恒等契约具有匹配依据，后继契约则在实际输入 0 处失败，其尝试使用的经验方面也被拒绝。

**限度:** 一般应用结果不证明任意应用合规。五组理由分别属于同一选项与后果适配器中的不同承诺立场；这些检查不从事实推导规范权威，也不证明所有可能价值理由都在演绎上充分。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.applicationRetainsDuties`

[leanified/CoreReader/Integration.lean:529](#line-code-leanified-corereader-integration-lean-529) · theorem

核心依赖: `propext`.

```lean
theorem applicationRetainsDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World))
    (h : ApplicationDuties s w req contract articulations applicable facets) :
    Reflexive s.owner (s.rules w) (s.work w) ∧
    (∀ f, applicable f → f ∈ facets) ∧
    (∀ f ∈ facets, f.claim = applicationClaim s req contract ∧
      Articulated (articulations f) ∧ FacetArticulated (articulations f) f ∧ FacetDischarged f) :=
```

### `CoreReader.Integration.reasonsBelongToCommitments`

[leanified/CoreReader/Integration.lean:423](#line-code-leanified-corereader-integration-lean-423) · theorem

核心依赖: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem reasonsBelongToCommitments (c : Commitment) :
    Grounds (commitmentClaim c) canonicalArticulation
      (fun f => f = commitmentFacet c) [commitmentFacet c] ∧
    JointAdoption (commitmentPosition c) ∧
    (commitmentPosition c).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor c .waive) := by
```

### `CoreReader.Integration.applicationVariation`

[leanified/CoreReader/Integration.lean:556](#line-code-leanified-corereader-integration-lean-556) · supplementary case

核心依赖: `propext`, `Quot.sound`.

```lean
theorem applicationVariation :
    ApplicationDuties actualSystem actual identityRequirements outputContract
      canonicalArticulation (fun f => f = capabilityFacet) [capabilityFacet] ∧
    ¬ applicationClaim actualSystem successorRequirements outputContract actual ∧
    ¬ Grounds (applicationClaim actualSystem successorRequirements outputContract)
      canonicalArticulation (fun f => f = changedObjectiveFacet) [changedObjectiveFacet] := by
```


<a id="t28"></a>
## T28 · 无需观测测试的评估

匹配的推论评估可以无需观测测试而具有 Grounds；另一个适用的经验方面仍使用观测。

**前提与表示:** 推论方面明确假定 n = 2 并得出 n + 1 = 3，具有规范表述与非空模型；经验对照为真实开关观测方面，usesObservation 按方面形式分类。

**证明或检查:** nonExecutableAssessment 根据可满足前提与语义蕴含构造算术主张的 Grounds，证明此处 usesObservation 为 false，并包含已通过检查且 usesObservation 为 true 的经验开关方面。

**限度:** 该定理区分评估与观测测试，不证明该算术推理不可计算，不分类所有不可执行方法，也不免除适用的经验责任。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.terms#p1](#source-organon-relationships-terms-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.nonExecutableAssessment`

[leanified/CoreReader/Evidence.lean:840](#line-code-leanified-corereader-evidence-lean-840) · case

核心依赖: `propext`.

```lean
theorem nonExecutableAssessment :
    Grounds (fun n : Nat => n + 1 = 3) canonicalArticulation (fun f => f = arithmeticFacet) [arithmeticFacet] ∧
    usesObservation arithmeticFacet = false ∧
    FacetDischarged switchEmpirical ∧ usesObservation switchEmpirical = true := by
```


## 来源追溯附录

<a id="source-organon-preamble-p1"></a>
<!-- lean-entry organon.preamble.p1 -->
<!-- lean-status not_applicable; kernel passed; fidelity not_applicable -->
### `organon.preamble#p1`

```text
This is the authoritative statement of Organon’s philosophy. It expresses adopted commitments, not factual assertions about every system or a proof of universal correctness.
```

状态: **not_applicable**; Lean: passed; 来源保真: not_applicable.

<!-- lean-context-only -->

本段作为权威与解释背景被引用；关联声明不证明该元层声明，其条件仍须保留。

本段声明文本权威与采纳承诺的范围，并非关于所有系统的数学命题。审查保留该边界，不制造证明文本权威的Lean定理。

相关目标: [T01](#t01), [T02](#t02).

<!-- /lean-entry organon.preamble.p1 -->

<a id="source-organon-preamble-p2"></a>
<!-- lean-entry organon.preamble.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.preamble#p2`

```text
The quoted provisions, their meanings, and their conditions of application form the core. The charter and Grounds constrain one another; their grouping establishes neither a deductive hierarchy nor an order of priority. [Rationale](rationale/README.md) supplies arguments and cases without adding obligations to this core. Skills are revisable applications under the repository’s stated objectives and constraints, not part of the philosophical commitments themselves.
```

状态: **limited**; Lean: passed; 来源保真: partial.

共享模型展示约束可以共同成立，未从章节位置推出优先性。含义与限度的权威、Rationale的角色及实际技能可修订性仍是有限见证之外的文本承诺。

相关目标: [T01](#t01), [T02](#t02).

<!-- /lean-entry organon.preamble.p2 -->

<a id="source-organon-charter"></a>
<!-- lean-entry organon.charter -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.charter`

```text


```

状态: **not_applicable**; Lean: not_checked; 来源保真: not_applicable.

空标题只保留结构，不分配定理。

<!-- /lean-entry organon.charter -->

<a id="source-organon-charter-overview-p1"></a>
<!-- lean-entry organon.charter.overview.p1 -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.charter.overview#p1`

```text
**Self-Transcendence · Internal Consistency · Reflexivity**
```

状态: **not_applicable**; Lean: not_checked; 来源保真: not_applicable.

本段是列出三项标题的结构性文本，用于组织实质条款，无需虚构定理。

相关目标: [T01](#t01).

<!-- /lean-entry organon.charter.overview.p1 -->

<a id="source-organon-charter-overview-p2"></a>
<!-- lean-entry organon.charter.overview.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.overview#p2`

```text
> A system is intrinsically oriented toward expanding what it can understand and construct. It brings itself and its principles within the scope of generation and assessment, with internal consistency constraining this process.
```

状态: **limited**; Lean: passed; 来源保真: partial.

jointWitness在同一非空系统中组合扩展价值、可修订性、情境一致性和具有内容的自有原则工作；它证明模型可满足，不证明任意现实系统履行这些要求。

相关目标: [T01](#t01), [T02](#t02), [T03](#t03).

<!-- /lean-entry organon.charter.overview.p2 -->

<a id="source-organon-charter-overview-p3"></a>
<!-- lean-entry organon.charter.overview.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.overview#p3`

```text
The overview connects three distinct requirements: self-transcendence establishes a generative orientation and refuses to treat existing forms as final, internal consistency constrains judgments held simultaneously, and reflexivity brings the system and its principles within the scope of their own generation and assessment. The provisions below specify the conditions for each.
```

状态: **limited**; Lean: passed; 来源保真: partial.

三项要求保留为不同谓词，并有共享实例和特定非蕴涵结果。其作为哲学义务的解释及任意应用中的完整条件，不能由实例推出。

相关目标: [T01](#t01), [T02](#t02), [T03](#t03).

<!-- /lean-entry organon.charter.overview.p3 -->

<a id="source-organon-charter-self-transcendence-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence#p1`

```text
> A system is intrinsically oriented toward expanding what it can understand and construct. It does not regard any existing form as the endpoint of generation.
```

状态: **incomplete**; Lean: passed; 来源保真: partial.

Generative规定对扩展的赋值及当前形式的可修订性。有限标签和状态实例没有刻画理解、构造或内在取向的全部形式。

相关目标: [T03](#t03).

<!-- /lean-entry organon.charter.self-transcendence.p1 -->

<a id="source-organon-charter-self-transcendence-orientation-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.orientation.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.orientation#p1`

```text
A commitment to keeping generative possibilities open is distinct from valuing their expansion. A system has an intrinsic orientation when it regards that expansion as worth pursuing. Merely permitting change does not fully express this orientation.
```

状态: **limited**; Lean: passed; 来源保真: partial.

中性政策反例把不同版本的变更许可与采纳的价值谓词分开；它不确立每个现实系统重视什么，也不普遍证成所采纳的价值。

相关目标: [T03](#t03), [T04](#t04).

<!-- /lean-entry organon.charter.self-transcendence.orientation.p1 -->

<a id="source-organon-charter-self-transcendence-non-finality-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.non-finality.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.non-finality#p1`

```text
Refusing to regard an existing form as an endpoint keeps it open to being surpassed. “Existing form” includes a system’s current organization, methods, and principles, not only its appearance or artifacts. These remain within the scope of possible change; their revisability does not guarantee actual progress.
```

状态: **limited**; Lean: passed; 来源保真: partial.

五类已表示的形式包括组织、方法和原则，均受条件性可修订要求约束；常值轨迹说明不保证进步。该表示不是穷尽性本体分类，也不是已经执行的修订。

相关目标: [T03](#t03), [T05](#t05).

<!-- /lean-entry organon.charter.self-transcendence.non-finality.p1 -->

<a id="source-organon-charter-self-transcendence-limits-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.limits#p1`

```text
Whether progress has actually occurred remains a separate judgment. Having the orientation does not guarantee progress. Progress cannot be established merely by an increase in the number of artifacts, levels of abstraction, or terms.
```

状态: **limited**; Lean: passed; 来源保真: partial.

同一前后状态增加库存、抽象层级和词汇，却未增加已表示的能力。实际表现记录能在两类世界中区分真正扩展，但没有证明该世界之外的经验可靠性。

相关目标: [T03](#t03), [T06](#t06), [T07](#t07).

<!-- /lean-entry organon.charter.self-transcendence.limits.p1 -->

<a id="source-organon-charter-self-transcendence-limits-p2"></a>
<!-- lean-entry organon.charter.self-transcendence.limits.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.limits#p2`

```text
- “Intrinsic orientation” expresses Organon’s philosophical commitment; it does not assert that all systems in fact develop autonomously.
- Self-transcendence does not imply independence from external experience, knowledge, or collaboration, nor does it guarantee autonomous execution or self-improvement.
- Refusing to regard an existing form as an endpoint does not require every action to produce change. Justified stability can coexist with a generative orientation.
- Whether transcendence expands what can be understood and constructed requires discernible grounds; a system’s own claim of generation does not establish actual achievement.
```

状态: **limited**; Lean: passed; 来源保真: partial.

绑定的执行接口分别展示外部依赖、有根据的稳定、无改善轨迹及被反驳的自有报告。这些是有限相容性与失败实例，哲学采纳和现实自主发展不在其结论范围内。

相关目标: [T03](#t03), [T06](#t06), [T07](#t07).

<!-- /lean-entry organon.charter.self-transcendence.limits.p2 -->

<a id="source-organon-charter-consistency-p1"></a>
<!-- lean-entry organon.charter.consistency.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency#p1`

```text
> The principles and judgments a system holds simultaneously, together with their implications, must not yield contradictory judgments on the same question under the same assumptions, meanings of terms, and scope of application.
```

状态: **limited**; Lean: passed; 来源保真: partial.

一般语义定理在存在可容许世界时，排除同一理论和情境中的正反后果。该世界存在、问题选择及所持判断的解释都是明确建模条件，不是现实保证。

相关目标: [T08](#t08).

<!-- /lean-entry organon.charter.consistency.p1 -->

<a id="source-organon-charter-consistency-meaning-p1"></a>
<!-- lean-entry organon.charter.consistency.meaning.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.meaning#p1`

```text
“Held simultaneously” specifies which principles, judgments, and implications must hold together. Revision may withdraw an earlier judgment; old and new principles need not remain compatible forever. When a change has occurred, that change cannot be represented as though it had not occurred.
```

状态: **limited**; Lean: passed; 来源保真: partial.

具体撤回切片允许判断反转，条件性报告规范排除隐瞒已识别变化；没有确立自动检测器、充分报告生成器或现实修订历史。

相关目标: [T09](#t09), [T10](#t10).

<!-- /lean-entry organon.charter.consistency.meaning.p1 -->

<a id="source-organon-charter-consistency-meaning-p2"></a>
<!-- lean-entry organon.charter.consistency.meaning.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.meaning#p2`

```text
“The same assumptions, meanings of terms, and scope of application” specifies the basis for comparing judgments. Divergent judgments under different conditions do not automatically constitute contradictions. Nor can unacknowledged changes in assumptions, meanings, or scope be used to conceal an existing contradiction.
```

状态: **limited**; Lean: passed; 来源保真: partial.

假设、含义和范围的分别变化允许不同判断；隐藏变化违反采纳的报告条件。结果覆盖明确语义模型，不覆盖全部实际歧义或隐瞒方式。

相关目标: [T09](#t09), [T10](#t10).

<!-- /lean-entry organon.charter.consistency.meaning.p2 -->

<a id="source-organon-charter-consistency-limits-p1"></a>
<!-- lean-entry organon.charter.consistency.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.limits#p1`

```text
- Tension between different assessments or values does not directly constitute a contradiction. Revision or qualification is needed when they require incompatible conclusions under the same conditions.
- Internal consistency is not correctness or sufficiency. A set of principles may be internally consistent while relying on false assumptions or neglecting important questions.
```

状态: **limited**; Lean: passed; 来源保真: partial.

有限见证区分张力与矛盾、一致性与真或完整性。不保留已示冲突是采纳一致性要求后的条件后果，不是已经实现的修订策略。

相关目标: [T11](#t11), [T12](#t12).

<!-- /lean-entry organon.charter.consistency.limits.p1 -->

<a id="source-organon-charter-reflexivity-p1"></a>
<!-- lean-entry organon.charter.reflexivity.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.reflexivity#p1`

```text
> A system’s principles of generation and assessment also apply to the system itself and to the formation, application, and revision of those principles.
```

状态: **incomplete**; Lean: passed; 来源保真: partial.

Reflexive量化适用的自有规则和对象，并要求一致的标识与有意义的适用记录。具体规则集包含生成和评估工作，但不覆盖所有可能的现实原则。

相关目标: [T13](#t13).

<!-- /lean-entry organon.charter.reflexivity.p1 -->

<a id="source-organon-charter-reflexivity-meaning-p1"></a>
<!-- lean-entry organon.charter.reflexivity.meaning.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.reflexivity.meaning#p1`

```text
Reflexivity encompasses both the system itself and its principles. Assessment concerns not only whether the system conforms to its principles, but also how those principles are formed, where they apply, and why they may need revision. The formation and revision of principles thus also become objects of generation and assessment.
```

状态: **incomplete**; Lean: passed; 来源保真: partial.

修订模块通过实际评估和生成结果表示形成目的、待考察适用范围和修订反例。这些有限问题契约不确立所有评估方法的正确性或完整性。

相关目标: [T13](#t13).

<!-- /lean-entry organon.charter.reflexivity.meaning.p1 -->

<a id="source-organon-charter-reflexivity-limits-p1"></a>
<!-- lean-entry organon.charter.reflexivity.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.reflexivity.limits#p1`

```text
- Applying principles equally retains their conditions of application. When the relevant conditions hold, being the system itself is not a basis for exemption. Nor does the requirement of reflexivity establish that every principle can be applied to itself without examining its applicability.
- Self-application does not constitute self-proof. Subjecting a principle to its own assessment does not thereby establish its correctness.
- That a revision is produced by the system itself does not give it sufficient grounds.
```

状态: **limited**; Lean: passed; 来源保真: partial.

适用性得到保留，条件成立时不能自我豁免；有限自测和自产修订不能确立普遍支持。自有记录和来源标识是数学对象，不是经过认证的执行历史。

相关目标: [T13](#t13), [T14](#t14).

<!-- /lean-entry organon.charter.reflexivity.limits.p1 -->

<a id="source-organon-grounds-p1"></a>
<!-- lean-entry organon.grounds.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds#p1`

```text
> The grounds of principles and judgments must be articulable and subject to assessment appropriate to the nature of the claim. The strength and scope of a claim must be proportionate to the support provided by its grounds.
```

状态: **limited**; Lean: passed; 来源保真: partial.

Grounds检查同一主张的已识别适用方面；支持、蕴涵及选项相关价值程序承担不同责任。它是选定的形式接口与有限履责实例，不是所有哲学根据的普遍充分标准。

相关目标: [T07](#t07), [T15](#t15).

<!-- /lean-entry organon.grounds.p1 -->

<a id="source-organon-grounds-assessment-p1"></a>
<!-- lean-entry organon.grounds.assessment.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p1`

```text
Articulation and assessment have distinct responsibilities. Articulability requires that concepts, assumptions, reasons, and limits can be identified. Assessment requires examining whether those grounds support the corresponding claim. Clearly expressed grounds are not thereby sufficiently established. When a claim has more than one applicable aspect, the corresponding assessment responsibilities apply to each aspect. Omitting a classification does not waive an applicable responsibility.
```

状态: **limited**; Lean: passed; 来源保真: partial.

表述内容与每个方面相连，并与该方面的履责分开；并集和缺失方面实例防止标签豁免已表示义务。识别所有实际相关方面仍是应用责任，不能由数据类型解决。

相关目标: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p1 -->

<a id="source-organon-grounds-assessment-p2"></a>
<!-- lean-entry organon.grounds.assessment.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p2`

```text
| Type of claim | Responsibility of assessment | What cannot substitute for that responsibility |
| --- | --- | --- |
| Empirical claim | Examine observations, evidence, and performance, together with the conditions, scope, and uncertainty of their support for the claim. | Treating measurability or repeatability itself as proof of relevance, correctness, or value. |
| Inferential claim | Examine whether the conclusion is supported by the stated assumptions and inferential relations. | Treating the absence of conflict between a conclusion and its assumptions as sufficient to establish that the conclusion follows from them. |
| Value commitment | State the position taken, its reasons, limits of application, and consequences, and remain open to relevant criticism. | Presenting a commitment as an empirical fact or a necessary inference, or substituting self-assertion for reasons. |
```

状态: **limited**; Lean: passed; 来源保真: partial.

三个已建模适配接口分别检查观察相容性与支持、语义蕴涵，以及带限度、后果和批评的价值理由。所选案例之外的实际相关性、经验不确定性和价值批评充分性没有被穷尽形式化。

相关目标: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p2 -->

<a id="source-organon-grounds-assessment-p3"></a>
<!-- lean-entry organon.grounds.assessment.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p3`

```text
Initial value commitments may be stated explicitly as commitments; they need not prove all their own starting assumptions. The strength and scope of a claim do not require conversion to a common numerical scale. Different types of claims specify their support and limits in accordance with their nature.
```

状态: **limited**; Lean: passed; 来源保真: partial.

JointAdoption要求起始承诺有一致的实例，而不证明所有起始假设。双理由实例和异类方面避免使用统一数值尺度；它们展示程序一致性，不提供终极价值证成。

相关目标: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p3 -->

<a id="source-organon-grounds-scope-p1"></a>
<!-- lean-entry organon.grounds.scope.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p1`

```text
Performance is discerned within particular relations, conditions, and scopes of observation. A boundary helps specify what a comparison concerns, but local examples do not automatically support unconditional universal conclusions. A judgment cannot establish that relevant differences do not exist merely because its chosen scope omits them.
```

状态: **limited**; Lean: passed; 来源保真: partial.

真子域内的局部观察支持局部函数主张，同时容许域外反例。结果确立指定的非蕴涵，不识别所有现实相关差异，也不排除有根据的更广证据。

相关目标: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p1 -->

<a id="source-organon-grounds-scope-p2"></a>
<!-- lean-entry organon.grounds.scope.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p2`

```text
Measurement can make some differences comparable. Repeated assessment can help examine the stability of corresponding conclusions. Their roles, and the role of any assessment framework, must be explained relative to the claim and its context. Measurement, repeatability, and an assessment framework do not form a universally necessary chain on which all judgments must depend.
```

状态: **limited**; Lean: passed; 来源保真: partial.

重复无关测量不能提供支持，而有效推论评估无需经验链条。这在已表示责任中反驳统一必需链条，但不刻画所有框架或测量实践。

相关目标: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p2 -->

<a id="source-organon-grounds-scope-p3"></a>
<!-- lean-entry organon.grounds.scope.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p3`

```text
An observation that has not been reproduced may still offer limited support, and random outcomes need not be identical on every occasion. The verifiability of observations, reproducibility of conditions, and stability of conclusions must be distinguished.
```

状态: **limited**; Lean: passed; 来源保真: partial.

单次观察具有有限支持，不同试验结果保持固定界。核验、可复现条件和结论稳定使用不同谓词；没有证明概率分布或一般复现规律。

相关目标: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p3 -->

<a id="source-organon-grounds-capabilities-p1"></a>
<!-- lean-entry organon.grounds.capabilities.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.capabilities#p1`

```text
Capability claims are subject to Grounds: the capability claimed, its conditions, and the support for it must be identifiable. The core does not prescribe uniform definitions of method mastery, method generation, or capability levels. Applications specify the capabilities they assess and may require understanding, explanation, or performance under relevant variations.
```

状态: **limited**; Lean: passed; 来源保真: partial.

仅输出合同和附加解释合同针对同一过程，各有经过检查的Grounds；applicationVariation改变实际目标并使旧证据失效。没有推导现实中统一的方法掌握或能力等级定义。

相关目标: [T07](#t07), [T21](#t21).

<!-- /lean-entry organon.grounds.capabilities.p1 -->

<a id="source-organon-grounds-capabilities-p2"></a>
<!-- lean-entry organon.grounds.capabilities.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.capabilities#p2`

```text
Grounds for a capability claim may be supplied by an external assessor. Their articulability does not by itself require the assessed system to understand or explain its internal generation process. Evidence of reliable output must be assessed against the capability actually claimed; it does not automatically establish understanding of that process. Nor can the number of method documents, terms, tools, or artifacts alone establish a capability beyond what that evidence supports.
```

状态: **limited**; Lean: passed; 来源保真: partial.

不同评估者角色为确切输出过程提供证明，而该过程没有附带解释证书；复制四类库存不改变已表示能力。角色编号和证书不证明外部来源或类似人的理解。

相关目标: [T07](#t07), [T21](#t21).

<!-- /lean-entry organon.grounds.capabilities.p2 -->

<a id="source-organon-grounds-implementations-p1"></a>
<!-- lean-entry organon.grounds.implementations.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations#p1`

```text
> The choice of an implementation must be supported by reasons connected to the objectives and values pursued and to the relevant constraints. Its name, conventional use, or established status alone does not provide sufficient grounds for giving it priority.
```

状态: **limited**; Lean: passed; 来源保真: partial.

采纳的选择接口要求可行性及与目标、价值、约束相连的理由，并拒绝纯地位理由。有限理由词汇和具体可行性检查不构成现实实现选择的一般证成理论。

相关目标: [T22](#t22), [T23](#t23).

<!-- /lean-entry organon.grounds.implementations.p1 -->

<a id="source-organon-grounds-implementations-p2"></a>
<!-- lean-entry organon.grounds.implementations.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations#p2`

```text
This choice provision adds an additional evaluative commitment: name, conventional use, or established status alone is insufficient to establish priority. Grouping it under Grounds does not mean that it follows from the general requirement to assess reasons, or merely from the discernibility of performance. Conventions and existing arrangements may have practical significance, but that significance must be connected to the objectives and values pursued and to the relevant constraints.
```

状态: **limited**; Lean: passed; 来源保真: partial.

两个独立政策共享正确的否定审查，却对额外选择规范一成一败，确立相对于已表示评估程序的独立性。这不表明无支持的优先主张完全满足一般Grounds，也不从中性事实推出价值承诺。

相关目标: [T22](#t22), [T23](#t23).

<!-- /lean-entry organon.grounds.implementations.p2 -->

<a id="source-organon-grounds-implementations-limits-p1"></a>
<!-- lean-entry organon.grounds.implementations.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations.limits#p1`

```text
- Openness does not make all implementations equivalent, nor does it guarantee multiple feasible implementations for the same objective.
- A method’s explanatory power, limits of application, simplicity, and explicit process requirements may all provide grounded reasons for assessment. They cannot be excluded merely because they concern methods internal to the implementation.
- Identical local performance does not establish overall equivalence. Relations, conditions, and the scope of comparison are constrained by the provisions of Grounds.
- Openness does not reject an implementation merely because it already exists or is conventionally used. Relevant reasons may still give it priority.
```

状态: **limited**; Lean: passed; 来源保真: partial.

具体案例展示唯一可行候选、不等价实现、局部相同而更广范围不同，以及四种合格内部理由。廉价但输出错误的方法说明理由合格并不足够。结果针对所选候选和合同，不覆盖所有方法。

相关目标: [T24](#t24).

<!-- /lean-entry organon.grounds.implementations.limits.p1 -->

<a id="source-organon-relationships"></a>
<!-- lean-entry organon.relationships -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.relationships`

```text


```

状态: **not_applicable**; Lean: not_checked; 来源保真: not_applicable.

空标题只保留结构，不分配定理。

<!-- /lean-entry organon.relationships -->

<a id="source-organon-relationships-roles-p1"></a>
<!-- lean-entry organon.relationships.roles.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p1`

```text
The charter states the generative orientation, the consistency constraint, and reflexive application. Grounds specifies support requirements for judgments and includes an additional commitment concerning implementation choices. Both parts belong to the core and constrain one another. Their placement neither makes Grounds a deduction from the charter nor gives the charter priority over it. Each commitment needs its own reasons.
```

状态: **limited**; Lean: passed; 来源保真: partial.

一个共享模型组合章程与Grounds，并为五项承诺赋予不同的操作性理由、限度和实际批评。指定非蕴涵防止章节顺序承担推理作用；所有承诺的普遍采纳或终极证成并不随之成立。

相关目标: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p1 -->

<a id="source-organon-relationships-roles-p2"></a>
<!-- lean-entry organon.relationships.roles.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p2`

```text
Internal Consistency concerns whether simultaneously held judgments can hold together; Grounds concerns whether and how far a claim is supported. A conclusion may fail to conflict with its assumptions without being supported by them. Self-Transcendence specifies a generative orientation and non-finality; neither establishes actual capability. Applications may supply objectives, values, and capability definitions; claims made under those objectives, values, and definitions remain subject to the relevant core provisions.
```

状态: **limited**; Lean: passed; 来源保真: partial.

一致性与支持、取向与能力保持分离；改变应用目标会改变实际主张，并可能使保留证据失败。普遍应用履责仅由有前提的条件接口表达，不是已经实现的事实。

相关目标: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p2 -->

<a id="source-organon-relationships-roles-p3"></a>
<!-- lean-entry organon.relationships.roles.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p3`

```text
Self-Transcendence does not substitute for Reflexivity: keeping existing forms open to being surpassed differs from applying relevant principles to the system and to their own formation, application, and revision. Reflexivity extends these requirements to the system and to the formation, application, and revision of its principles. The grounds and limits of the Grounds provisions must themselves be articulable. The system’s own capability claims remain subject to assessment, and this philosophy’s existing form cannot gain priority merely from its established status. Such mutual application provides no self-proof and does not remove conditions of application.
```

状态: **limited**; Lean: passed; 来源保真: partial.

模型连接具有内容的自我适用、确切自有能力评估、一般Grounds条款与同一个当前哲学方法。经过检查的共同成立不提供自证、现实执行保证或无条件适用性。

相关目标: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p3 -->

<a id="source-organon-relationships-terms-p1"></a>
<!-- lean-entry organon.relationships.terms.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.terms#p1`

```text
| Term | Meaning in this philosophy |
| --- | --- |
| Existing form | The system’s current organization, methods, and principles, not only its appearance or artifacts. |
| Assessment | Examination of reasons, applicability, and observed performance; not limited to executable tests. |
```

状态: **limited**; Lean: passed; 来源保真: partial.

FormKind包含组织、方法和原则，推论评估没有可执行测试要求。这些表示说明术语，但未穷尽定义所有既有形式或所有非测试评估。

相关目标: [T05](#t05), [T28](#t28).

<!-- /lean-entry organon.relationships.terms.p1 -->

## 完整代码与逐行解释

每份文件保持经检查的完整内容。下列逐行解释为修订后的知情解释；初次盲稿及被拒绝的旧判定另行保留。

<a id="code-leanified-corereader-agency-lean"></a>
### `leanified/CoreReader/Agency.lean`

<!-- lean-code leanified/CoreReader/Agency.lean -->
```lean
import CoreReader.Reflexivity

namespace CoreReader.Agency

inductive FormKind | organization | method | principle | appearance | artifact
  deriving DecidableEq, Repr

structure Form where
  kind : FormKind
  version : Nat
  deriving DecidableEq, Repr

inductive Aim | expandUnderstandingAndConstruction | preserveSafeOperation
  deriving DecidableEq, Repr

/- A policy records an adopted valuation, current forms, and permission. It does not assert that valuation is correct or enacted. -/
structure Policy where
  worthPursuing : Aim → Prop
  current : Form → Prop
  revisable : Form → Prop
  permitsVersion : Nat → Nat → Prop

/- The normative specification keeps valuation and revisability separate from realized transitions. -/
/-- organon-map CoreReader.Agency.Generative
organon.charter.overview#p2 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.overview#p3 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.self-transcendence#p1 sha256 f4ca590e2ae15e3882f70c7b2bc46a8911c97cee547c8b137b5493fbf862c8c0
organon.charter.self-transcendence.orientation#p1 sha256 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
-/
def Generative (p : Policy) : Prop :=
  p.worthPursuing .expandUnderstandingAndConstruction ∧
    ∀ f, p.current f → p.revisable f

def openPolicy : Policy where
  worthPursuing a := a = .expandUnderstandingAndConstruction ∨ a = .preserveSafeOperation
  current f := f.version = 0
  revisable _ := True
  permitsVersion _ _ := True

def neutralPolicy : Policy := { openPolicy with worthPursuing := fun _ => False }

/- Permitting a real version change does not supply an adopted value position. -/
/-- organon-map CoreReader.Agency.permissionNotValuation
organon.charter.self-transcendence.orientation#p1 sha256 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf
-/
theorem permissionNotValuation :
    neutralPolicy.permitsVersion 0 1 ∧ (0 : Nat) ≠ 1 ∧ ¬ Generative neutralPolicy := by
  simp [neutralPolicy, openPolicy, Generative]

/- This is an explicit consequence of the adopted specification, not evidence of actual revision. -/
/-- organon-map CoreReader.Agency.revisabilityCovers
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
-/
theorem revisabilityCovers (p : Policy) (h : Generative p) (k : FormKind) (v : Nat)
    (hc : p.current ⟨k, v⟩) : p.revisable ⟨k, v⟩ := h.2 _ hc

inductive Operation | copy | successor
  deriving DecidableEq, Repr

def Operation.run : Operation → Nat → Nat
  | .copy, n => n
  | .successor, n => n + 1

inductive InventoryKind | document | term | tool | artifact
  deriving DecidableEq, Repr

structure Item where
  kind : InventoryKind
  content : Operation
  deriving DecidableEq, Repr

/- Available represented operations are the contents present, not their number of occurrences. -/
def Available (xs : List Item) (op : Operation) : Prop :=
  ∃ item ∈ xs, item.content = op

/- Duplicating any inventory category preserves exactly the represented operation content. -/
/-- organon-map CoreReader.Agency.inventoryNotCapability
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem inventoryNotCapability (kind : InventoryKind) (ops : List Operation) (op : Operation) :
    Available ((ops.map fun x => Item.mk kind x) ++ (ops.map fun x => Item.mk kind x)) op ↔
      Available (ops.map fun x => Item.mk kind x) op := by
  simp only [Available, List.mem_append]
  constructor
  · rintro ⟨x, hx | hx, hop⟩ <;> exact ⟨x, hx, hop⟩
  · rintro ⟨x, hx, hop⟩
    exact ⟨x, Or.inl hx, hop⟩

structure State where
  understood : List Operation
  constructed : List Operation
  inventory : List Item
  abstractionLayers : List Operation
  vocabulary : List Operation
  deriving DecidableEq, Repr

/- A gain must identify an operation newly understood or constructed; this is a disclosed finite capability representation. -/
def Expanded (before after : State) : Prop :=
  (∃ op, op ∈ after.understood ∧ op ∉ before.understood) ∨
  (∃ op, op ∈ after.constructed ∧ op ∉ before.constructed)

def baseState : State :=
  ⟨[.copy], [.copy], [⟨.artifact, .copy⟩], [.copy], [.copy]⟩

def inflatedState : State :=
  { baseState with
    inventory := baseState.inventory ++ baseState.inventory
    abstractionLayers := [.copy, .copy]
    vocabulary := [.copy, .copy] }

def stableTrace (_time : Nat) : State := baseState

/- A revisable policy can govern an unchanged trace; no improvement is hidden in revisability. -/
/-- organon-map CoreReader.Agency.revisionWithoutProgress
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
-/
theorem revisionWithoutProgress :
    Generative openPolicy ∧
    (∀ k : FormKind, openPolicy.revisable ⟨k, 0⟩) ∧
    (∀ t, ¬ Expanded (stableTrace t) (stableTrace (t + 1))) := by
  simp [Generative, openPolicy, stableTrace, Expanded]

structure ExternalResources where
  experience : Option Nat
  knowledge : Option Nat
  collaborator : Option Nat
  deriving DecidableEq, Repr

/- This interpreter actually needs all three external inputs to produce the modeled result. -/
def assistedExecution (r : ExternalResources) : Option Nat := do
  let e ← r.experience
  let k ← r.knowledge
  let c ← r.collaborator
  pure (Operation.copy.run (e + k + c))

def availableResources : ExternalResources := ⟨some 1, some 2, some 3⟩

/- Stability has a concrete stated reason in this workload: preserve its operation while staying within the one-item budget. -/
def StableReason (before proposed : State) : Prop :=
  before.constructed = proposed.constructed ∧
  before.inventory.length ≤ 1 ∧ ¬ proposed.inventory.length ≤ 1

/- The policy, current capabilities, execution interface and workload constraints belong to one generating system. -/
structure GeneratingSystem where
  owner : Nat
  policy : Policy
  current : State
  execute : ExternalResources → Option Nat
  applicationBudget : Nat
  requiredOperations : List Operation
/- The modeled system uses the assisted interpreter under a one-item budget and a copy-operation requirement. -/
def generatingSystem : GeneratingSystem where
  owner := 0
  policy := openPolicy
  current := baseState
  execute := assistedExecution
  applicationBudget := 1
  requiredOperations := [.copy]
/- A stable action retains this system's own current state. -/
def GeneratingSystem.stableAction (system : GeneratingSystem) : State := system.current
def GeneratingSystem.requirementsMet (system : GeneratingSystem) (state : State) : Prop :=
  ∀ operation, operation ∈ system.requiredOperations → operation ∈ state.constructed
def GeneratingSystem.withinBudget (system : GeneratingSystem) (state : State) : Prop :=
  state.inventory.length ≤ system.applicationBudget
/- An expansion report identifies the actual before/after states and the operation/performance it asserts was added. -/
structure Announcement where
  owner : Nat
  before : State
  after : State
  reportedNewOperation : Operation
  input : Nat
  expectedOutput : Nat
  deriving DecidableEq, Repr
/- Reports are generated by this system and identify its actual current state as their baseline. -/
def GeneratingSystem.report (system : GeneratingSystem) (after : State)
    (operation : Operation) (input expectedOutput : Nat) : Announcement :=
  ⟨system.owner, system.current, after, operation, input, expectedOutput⟩
/- Report content is interpreted against those very states and the named operation's actual behavior. -/
def Announcement.claim (report : Announcement) : Prop :=
  report.reportedNewOperation ∈ report.after.constructed ∧
  report.reportedNewOperation ∉ report.before.constructed ∧
  report.reportedNewOperation.run report.input = report.expectedOutput
/- A true report of this form entails a represented construction expansion. -/
theorem announcementClaimImpliesExpansion (report : Announcement) (h : report.claim) :
    Expanded report.before report.after := Or.inr ⟨report.reportedNewOperation, h.1, h.2.1⟩
/- This concrete self-report asserts a successor operation for the actual inventory-only inflation. -/
def inflatedAnnouncement : Announcement := generatingSystem.report inflatedState .successor 0 1
/- The report asserts a real successor result but its named operation is absent from its own after-state. -/
theorem inflatedAnnouncementRefuted :
    inflatedAnnouncement.before = baseState ∧ inflatedAnnouncement.after = inflatedState ∧
    inflatedAnnouncement.reportedNewOperation = .successor ∧
    inflatedAnnouncement.input = 0 ∧ inflatedAnnouncement.expectedOutput = 1 ∧
    ¬ inflatedAnnouncement.claim ∧ ¬ Expanded inflatedAnnouncement.before inflatedAnnouncement.after := by
  simp [inflatedAnnouncement, GeneratingSystem.report, generatingSystem, Announcement.claim, Expanded, baseState, inflatedState]

/- These transitions share one initial state; only extension adds an actual new operation. -/
inductive TransitionCase | inflate | extend
  deriving DecidableEq, Repr

def extendedState : State :=
  { baseState with understood := [.copy, .successor], constructed := [.copy, .successor] }
def transitionBefore (_transition : TransitionCase) : State := baseState
def transitionAfter : TransitionCase → State
  | .inflate => inflatedState
  | .extend => extendedState
/- Both alternatives are assessed under the same concrete input condition. -/
def transitionInput (_transition : TransitionCase) : Nat := 0
def transitionAnnouncement (transition : TransitionCase) : Announcement :=
  generatingSystem.report (transitionAfter transition) .successor (transitionInput transition) 1

/- Eleven boundary branches share a content-bearing trace and executable dependency model. They do not assert a universal law of human capability. -/
/-- organon-map CoreReader.Agency.generationLimits
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
-/
theorem generationLimits :
    Generative generatingSystem.policy ∧
    generatingSystem.policy.permitsVersion 0 0 ∧
    ¬ Expanded generatingSystem.current inflatedState ∧
    generatingSystem.current.inventory.length < inflatedState.inventory.length ∧
    generatingSystem.current.abstractionLayers.length < inflatedState.abstractionLayers.length ∧
    generatingSystem.current.vocabulary.length < inflatedState.vocabulary.length ∧
    generatingSystem.execute availableResources = some 6 ∧
    generatingSystem.execute { availableResources with experience := none } = none ∧
    generatingSystem.execute { availableResources with knowledge := none } = none ∧
    generatingSystem.execute { availableResources with collaborator := none } = none ∧
    generatingSystem.execute ⟨none, none, none⟩ = none ∧
    ¬ Expanded generatingSystem.current generatingSystem.stableAction ∧
    generatingSystem.stableAction = generatingSystem.current ∧
    generatingSystem.requirementsMet generatingSystem.stableAction ∧
    generatingSystem.withinBudget generatingSystem.stableAction ∧
    ¬ generatingSystem.withinBudget inflatedState ∧
    StableReason generatingSystem.current inflatedState ∧
    (inflatedAnnouncement = generatingSystem.report inflatedState .successor 0 1 ∧
      inflatedAnnouncement.owner = generatingSystem.owner ∧
      inflatedAnnouncement.before = generatingSystem.current ∧ inflatedAnnouncement.after = inflatedState ∧
      inflatedAnnouncement.reportedNewOperation = .successor ∧
      inflatedAnnouncement.input = 0 ∧ inflatedAnnouncement.expectedOutput = 1 ∧
      ¬ inflatedAnnouncement.claim ∧ ¬ Expanded inflatedAnnouncement.before inflatedAnnouncement.after) := by
  simp [generatingSystem, GeneratingSystem.stableAction, GeneratingSystem.requirementsMet,
    GeneratingSystem.withinBudget, GeneratingSystem.report, Generative, openPolicy, Expanded,
    baseState, inflatedState, assistedExecution, availableResources, Operation.run,
    StableReason, inflatedAnnouncement, Announcement.claim]

/- The empty work log omits an actually applicable system assessment despite an open generative policy. -/
/-- organon-map CoreReader.Agency.generationNotReflexivity
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem generationNotReflexivity :
    Generative openPolicy ∧ ¬ Reflexive 0 (ownRules 0) [] := by
  constructor
  · simp [Generative, openPolicy]
  · intro h
    have bad := noSelfExemption 0 (ownRules 0) [] h (assessingRule 0) (by simp [ownRules])
      (.system 0) rfl (by simp [assessingRule, ownSubjects])
    simp [Performed] at bad

/- The same proposed arithmetic principle is used in the self-test and in the universal correctness claim. -/
def ownArithmeticPrinciple (n : Nat) : Bool := decide (n + 1 = 2 * n)

def selfTest (samples : List Nat) : Bool := samples.all ownArithmeticPrinciple

/- A genuine evaluation on the selected sample succeeds, while the same principle fails at zero. -/
/-- organon-map CoreReader.Agency.selfTestDoesNotProve
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem selfTestDoesNotProve :
    selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false ∧
      ¬ (∀ n, ownArithmeticPrinciple n = true) := by
  constructor
  · decide
  constructor
  · decide
  · intro h
    have bad := h 0
    contradiction

end CoreReader.Agency
```
<!-- /lean-code leanified/CoreReader/Agency.lean -->

<a id="line-code-leanified-corereader-agency-lean-1"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:1 --> **L1** 导入CoreReader.Reflexivity及其依赖。

<a id="line-code-leanified-corereader-agency-lean-3"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:3 --> **L3** 打开命名空间CoreReader.Agency；文件边界不改变声明身份。

<a id="line-code-leanified-corereader-agency-lean-5"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:5 --> **L5** 定义组织、方法、原则、外观和产物五类形式标签。

<a id="line-code-leanified-corereader-agency-lean-6"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:6 --> **L6** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-8"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:8 --> **L8** 形式由种类标签和自然数版本构成，不包含内容或转换规则。

<a id="line-code-leanified-corereader-agency-lean-9"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:9 --> **L9** 保存该形式属于组织、方法、原则、外观还是产物。

<a id="line-code-leanified-corereader-agency-lean-10"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:10 --> **L10** 保存自然数形式版本，不证明变化已经发生。

<a id="line-code-leanified-corereader-agency-lean-11"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:11 --> **L11** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-13"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:13 --> **L13** 定义扩展理解与构造、保持安全运行两个目标标签；数据类型自身不为任一目标赋值。

<a id="line-code-leanified-corereader-agency-lean-14"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:14 --> **L14** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-16"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:16 --> **L16** 说明后续定义或结果：分别保存目标价值、当前形式、可修订形式和版本许可四个谓词。

<a id="line-code-leanified-corereader-agency-lean-17"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:17 --> **L17** 分别保存目标价值、当前形式、可修订形式和版本许可四个谓词。

<a id="line-code-leanified-corereader-agency-lean-18"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:18 --> **L18** 规定此政策把两个已表示目标中的哪些视为值得追求。

<a id="line-code-leanified-corereader-agency-lean-19"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:19 --> **L19** 规定此政策当前持有的形式种类与版本对。

<a id="line-code-leanified-corereader-agency-lean-20"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:20 --> **L20** 规定此政策保留哪些形式种类与版本对的可修订性。

<a id="line-code-leanified-corereader-agency-lean-21"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:21 --> **L21** 独立于实际执行规定版本间许可。

<a id="line-code-leanified-corereader-agency-lean-23"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:23 --> **L23** 说明后续定义或结果：要求视扩展为值得追求，且全部当前形式可修订；不承诺执行或进步。

<a id="line-code-leanified-corereader-agency-lean-24"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:24 --> **L24** 开启来源元数据，将CoreReader.Agency.Generative绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-25"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:25 --> **L25** 记录来源引用organon.charter.overview#p2及内容摘要75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-26"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:26 --> **L26** 记录来源引用organon.charter.overview#p3及内容摘要75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-27"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:27 --> **L27** 记录来源引用organon.charter.self-transcendence#p1及内容摘要f4ca590e2ae15e3882f70c7b2bc46a8911c97cee547c8b137b5493fbf862c8c0；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-28"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:28 --> **L28** 记录来源引用organon.charter.self-transcendence.orientation#p1及内容摘要7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-29"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:29 --> **L29** 记录来源引用organon.charter.self-transcendence.non-finality#p1及内容摘要4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-30"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:30 --> **L30** 记录来源引用organon.charter.self-transcendence.limits#p1及内容摘要6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-31"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:31 --> **L31** 记录来源引用organon.charter.self-transcendence.limits#p2及内容摘要6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-32"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:32 --> **L32** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-33"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:33 --> **L33** 要求视扩展为值得追求，且全部当前形式可修订；不承诺执行或进步。

<a id="line-code-leanified-corereader-agency-lean-34"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:34 --> **L34** 要求该政策把理解与构造的扩展视为值得追求。

<a id="line-code-leanified-corereader-agency-lean-35"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:35 --> **L35** 要求该政策当前持有的每个形式仍可修订。

<a id="line-code-leanified-corereader-agency-lean-37"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:37 --> **L37** 重视两个目标，以版本零为当前形式，并允许所有修订和版本对。

<a id="line-code-leanified-corereader-agency-lean-38"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:38 --> **L38** openPolicy同时重视扩展与保持安全运行。

<a id="line-code-leanified-corereader-agency-lean-39"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:39 --> **L39** 把版本恰为0的形式视为当前形式，不限种类。

<a id="line-code-leanified-corereader-agency-lean-40"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:40 --> **L40** 允许修订所有形式，包括当前未持有的形式。

<a id="line-code-leanified-corereader-agency-lean-41"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:41 --> **L41** 允许任意两个版本号间的变更，但不执行变更。

<a id="line-code-leanified-corereader-agency-lean-43"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:43 --> **L43** 保留开放政策许可，但把所有目标价值设为假。

<a id="line-code-leanified-corereader-agency-lean-45"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:45 --> **L45** 说明后续定义或结果：实际允许不同版本零到一，同时缺少扩展价值取向，证明许可不充分。

<a id="line-code-leanified-corereader-agency-lean-46"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:46 --> **L46** 开启来源元数据，将CoreReader.Agency.permissionNotValuation绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-47"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:47 --> **L47** 记录来源引用organon.charter.self-transcendence.orientation#p1及内容摘要7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-48"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:48 --> **L48** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-49"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:49 --> **L49** 实际允许不同版本零到一，同时缺少扩展价值取向，证明许可不充分。

<a id="line-code-leanified-corereader-agency-lean-50"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:50 --> **L50** 陈述neutralPolicy允许0→1且两版本不同，但缺少价值取向使Generative失败。

<a id="line-code-leanified-corereader-agency-lean-51"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:51 --> **L51** 展开两个政策：许可为真，0≠1可计算为真，所需价值取向为假。

<a id="line-code-leanified-corereader-agency-lean-53"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:53 --> **L53** 说明后续定义或结果：将已假定的生成规范实例化到指定当前种类与版本，不执行修订。

<a id="line-code-leanified-corereader-agency-lean-54"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:54 --> **L54** 开启来源元数据，将CoreReader.Agency.revisabilityCovers绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-55"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:55 --> **L55** 记录来源引用organon.charter.self-transcendence.non-finality#p1及内容摘要4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-56"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:56 --> **L56** 记录来源引用organon.relationships.terms#p1及内容摘要0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-57"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:57 --> **L57** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-58"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:58 --> **L58** 将已假定的生成规范实例化到指定当前种类与版本，不执行修订。

<a id="line-code-leanified-corereader-agency-lean-59"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:59 --> **L59** 将h中的可修订条款应用于hc确认是当前形式的同一种类与版本。

<a id="line-code-leanified-corereader-agency-lean-61"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:61 --> **L61** 只定义自然数恒等和后继两种操作。

<a id="line-code-leanified-corereader-agency-lean-62"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:62 --> **L62** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-64"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:64 --> **L64** 按构造器计算恒等或加一输出。

<a id="line-code-leanified-corereader-agency-lean-65"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:65 --> **L65** 执行copy直接返回原输入。

<a id="line-code-leanified-corereader-agency-lean-66"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:66 --> **L66** 执行successor返回输入加1。

<a id="line-code-leanified-corereader-agency-lean-68"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:68 --> **L68** 定义文档、术语、工具、产物四个库存标签。

<a id="line-code-leanified-corereader-agency-lean-69"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:69 --> **L69** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-71"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:71 --> **L71** 库存项保存种类标签及两种操作之一。

<a id="line-code-leanified-corereader-agency-lean-72"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:72 --> **L72** 把库存条目分类为文档、术语、工具或产物。

<a id="line-code-leanified-corereader-agency-lean-73"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:73 --> **L73** 记录条目表示的操作，与其类别分开。

<a id="line-code-leanified-corereader-agency-lean-74"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:74 --> **L74** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-76"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:76 --> **L76** 说明后续定义或结果：存在库存成员携带指定操作即为可用；重复次数不影响此条件。

<a id="line-code-leanified-corereader-agency-lean-77"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:77 --> **L77** 存在库存成员携带指定操作即为可用；重复次数不影响此条件。

<a id="line-code-leanified-corereader-agency-lean-78"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:78 --> **L78** 只有存在包含该操作的列表条目，该操作才可用。

<a id="line-code-leanified-corereader-agency-lean-80"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:80 --> **L80** 说明后续定义或结果：通过双向复用同一成员见证，证明复制任一种类库存不会新增可用操作。

<a id="line-code-leanified-corereader-agency-lean-81"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:81 --> **L81** 开启来源元数据，将CoreReader.Agency.inventoryNotCapability绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-82"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:82 --> **L82** 记录来源引用organon.grounds.capabilities#p1及内容摘要7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-83"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:83 --> **L83** 记录来源引用organon.grounds.capabilities#p2及内容摘要7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-84"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:84 --> **L84** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-85"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:85 --> **L85** 通过双向复用同一成员见证，证明复制任一种类库存不会新增可用操作。

<a id="line-code-leanified-corereader-agency-lean-86"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:86 --> **L86** 检查把ops按固定类别包装并复制列表后的操作可用性。

<a id="line-code-leanified-corereader-agency-lean-87"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:87 --> **L87** 将其与同一列表未复制时的可用性比较。

<a id="line-code-leanified-corereader-agency-lean-88"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:88 --> **L88** 展开可用性，把复制列表成员关系化为属于任一副本。

<a id="line-code-leanified-corereader-agency-lean-89"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:89 --> **L89** 分别证明复制既不增加也不减少已表示的操作。

<a id="line-code-leanified-corereader-agency-lean-90"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:90 --> **L90** 任一副本中的条目都可作为原列表中同一操作的见证。

<a id="line-code-leanified-corereader-agency-lean-91"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:91 --> **L91** 反向证明取原条目x、成员证明hx及内容匹配证明hop。

<a id="line-code-leanified-corereader-agency-lean-92"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:92 --> **L92** 把同一条目放在第一副本中，保持操作匹配。

<a id="line-code-leanified-corereader-agency-lean-94"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:94 --> **L94** 用五个列表分别表示理解、构造、库存、抽象层级和词汇。

<a id="line-code-leanified-corereader-agency-lean-95"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:95 --> **L95** 列出该状态中表示为已理解的操作。

<a id="line-code-leanified-corereader-agency-lean-96"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:96 --> **L96** 列出该状态中表示为已构造的操作。

<a id="line-code-leanified-corereader-agency-lean-97"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:97 --> **L97** 保存库存条目；条目重复数量与能力成员关系不同。

<a id="line-code-leanified-corereader-agency-lean-98"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:98 --> **L98** 保存抽象层级条目，不把数量等同理解能力。

<a id="line-code-leanified-corereader-agency-lean-99"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:99 --> **L99** 保存词汇条目，不把数量等同构造能力。

<a id="line-code-leanified-corereader-agency-lean-100"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:100 --> **L100** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-102"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:102 --> **L102** 说明后续定义或结果：理解或构造列表新增至少一个先前没有的操作；不要求其他能力都保留。

<a id="line-code-leanified-corereader-agency-lean-103"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:103 --> **L103** 理解或构造列表新增至少一个先前没有的操作；不要求其他能力都保留。

<a id="line-code-leanified-corereader-agency-lean-104"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:104 --> **L104** 扩展可由变化后已理解、变化前未理解的操作见证。

<a id="line-code-leanified-corereader-agency-lean-105"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:105 --> **L105** 另一种扩展见证是新增的已构造操作。

<a id="line-code-leanified-corereader-agency-lean-107"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:107 --> **L107** 构造只含copy操作、一个copy产物的初始状态。

<a id="line-code-leanified-corereader-agency-lean-108"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:108 --> **L108** 基线理解并构造copy，且各有一个copy产物、层级和词汇条目。

<a id="line-code-leanified-corereader-agency-lean-110"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:110 --> **L110** 只复制库存、层级和词汇，理解与构造列表保持原样。

<a id="line-code-leanified-corereader-agency-lean-111"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:111 --> **L111** 以baseState为起点，保留下面未覆盖的字段。

<a id="line-code-leanified-corereader-agency-lean-112"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:112 --> **L112** 复制单条库存，但保持已理解和已构造操作不变。

<a id="line-code-leanified-corereader-agency-lean-113"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:113 --> **L113** 将一个抽象层级条目改为两个copy条目。

<a id="line-code-leanified-corereader-agency-lean-114"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:114 --> **L114** 同样把词汇列表加倍，不引入新操作。

<a id="line-code-leanified-corereader-agency-lean-116"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:116 --> **L116** 每个时刻都返回同一初始状态。

<a id="line-code-leanified-corereader-agency-lean-118"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:118 --> **L118** 说明后续定义或结果：生成规范和全面可修订性与常值、无扩展轨迹相容。

<a id="line-code-leanified-corereader-agency-lean-119"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:119 --> **L119** 开启来源元数据，将CoreReader.Agency.revisionWithoutProgress绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-120"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:120 --> **L120** 记录来源引用organon.charter.self-transcendence.non-finality#p1及内容摘要4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-121"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:121 --> **L121** 记录来源引用organon.relationships.terms#p1及内容摘要0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-122"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:122 --> **L122** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-123"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:123 --> **L123** 生成规范和全面可修订性与常值、无扩展轨迹相容。

<a id="line-code-leanified-corereader-agency-lean-124"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:124 --> **L124** 陈述openPolicy满足所采纳的价值取向与可修订规范。

<a id="line-code-leanified-corereader-agency-lean-125"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:125 --> **L125** 另明确每类形式的版本0均可修订。

<a id="line-code-leanified-corereader-agency-lean-126"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:126 --> **L126** 常值轨迹中任意相邻状态都没有新增理解或构造操作。

<a id="line-code-leanified-corereader-agency-lean-127"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:127 --> **L127** 把政策条款化为真，把每项扩展化为未变列表中不可能的新增成员。

<a id="line-code-leanified-corereader-agency-lean-129"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:129 --> **L129** 保存经验、知识和协作者三个可缺失自然数槽。

<a id="line-code-leanified-corereader-agency-lean-130"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:130 --> **L130** 可选外部经验值；none会使辅助执行在首次读取时失败。

<a id="line-code-leanified-corereader-agency-lean-131"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:131 --> **L131** 继经验输入后必须取得的可选知识值。

<a id="line-code-leanified-corereader-agency-lean-132"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:132 --> **L132** 产生结果前必须取得的可选协作者值。

<a id="line-code-leanified-corereader-agency-lean-133"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:133 --> **L133** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-135"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:135 --> **L135** 说明后续定义或结果：依次读取三个Option槽；全部存在时返回总和，任一缺失时返回none。

<a id="line-code-leanified-corereader-agency-lean-136"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:136 --> **L136** 依次读取三个Option槽；全部存在时返回总和，任一缺失时返回none。

<a id="line-code-leanified-corereader-agency-lean-137"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:137 --> **L137** 将经验读入e，若资源缺失则立即返回none。

<a id="line-code-leanified-corereader-agency-lean-138"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:138 --> **L138** 将知识读入k，缺失则终止同一个Option计算。

<a id="line-code-leanified-corereader-agency-lean-139"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:139 --> **L139** 将协作者值读入c，同样传递缺失结果。

<a id="line-code-leanified-corereader-agency-lean-140"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:140 --> **L140** 通过copy操作返回e+k+c之和，并包装为some。

<a id="line-code-leanified-corereader-agency-lean-142"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:142 --> **L142** 提供一、二、三三个实际资源值。

<a id="line-code-leanified-corereader-agency-lean-144"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:144 --> **L144** 说明后续定义或结果：要求构造列表相同、原库存至多一项而拟议库存超限。

<a id="line-code-leanified-corereader-agency-lean-145"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:145 --> **L145** 要求构造列表相同、原库存至多一项而拟议库存超限。

<a id="line-code-leanified-corereader-agency-lean-146"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:146 --> **L146** 保留旧状态的理由之一是两状态具有完全相同的已构造操作。

<a id="line-code-leanified-corereader-agency-lean-147"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:147 --> **L147** 旧库存必须满足单条限制，而拟议库存超过该限制。

<a id="line-code-leanified-corereader-agency-lean-149"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:149 --> **L149** 说明后续定义或结果：把同一主体的政策、当前状态、资源执行函数、预算和所需操作绑定成系统。

<a id="line-code-leanified-corereader-agency-lean-150"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:150 --> **L150** 把同一主体的政策、当前状态、资源执行函数、预算和所需操作绑定成系统。

<a id="line-code-leanified-corereader-agency-lean-151"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:151 --> **L151** 标识该生成系统的所有者。

<a id="line-code-leanified-corereader-agency-lean-152"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:152 --> **L152** 把价值取向与可修订政策附于同一系统。

<a id="line-code-leanified-corereader-agency-lean-153"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:153 --> **L153** 保存系统当前的能力与库存表示状态。

<a id="line-code-leanified-corereader-agency-lean-154"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:154 --> **L154** 保存该系统实际消耗资源的执行函数。

<a id="line-code-leanified-corereader-agency-lean-155"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:155 --> **L155** 规定评估稳定状态和拟议状态的库存数量预算。

<a id="line-code-leanified-corereader-agency-lean-156"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:156 --> **L156** 规定工作负载要求保持已构造的操作。

<a id="line-code-leanified-corereader-agency-lean-157"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:157 --> **L157** 说明后续定义或结果：主体零采用开放政策、初始状态、三资源执行、预算一和copy要求。

<a id="line-code-leanified-corereader-agency-lean-158"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:158 --> **L158** 主体零采用开放政策、初始状态、三资源执行、预算一和copy要求。

<a id="line-code-leanified-corereader-agency-lean-159"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:159 --> **L159** 给具体生成系统分配所有者编号0。

<a id="line-code-leanified-corereader-agency-lean-160"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:160 --> **L160** 在同一具体系统中采用openPolicy。

<a id="line-code-leanified-corereader-agency-lean-161"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:161 --> **L161** 将其当前能力和库存设为baseState。

<a id="line-code-leanified-corereader-agency-lean-162"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:162 --> **L162** 以需要三种资源的辅助解释器作为该系统执行接口。

<a id="line-code-leanified-corereader-agency-lean-163"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:163 --> **L163** 把该工作负载的库存预算定为恰好1条。

<a id="line-code-leanified-corereader-agency-lean-164"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:164 --> **L164** 要求具体工作负载保留copy操作。

<a id="line-code-leanified-corereader-agency-lean-165"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:165 --> **L165** 说明后续定义或结果：以该系统当前状态作为保持稳定的动作结果。

<a id="line-code-leanified-corereader-agency-lean-166"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:166 --> **L166** 以该系统当前状态作为保持稳定的动作结果。

<a id="line-code-leanified-corereader-agency-lean-167"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:167 --> **L167** 检查同一系统要求的每个操作都在被评状态构造列表中。

<a id="line-code-leanified-corereader-agency-lean-168"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:168 --> **L168** 对该系统和待评状态，所有必需操作都必须属于状态的已构造列表。

<a id="line-code-leanified-corereader-agency-lean-169"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:169 --> **L169** 按该系统明示预算检查被评状态库存长度。

<a id="line-code-leanified-corereader-agency-lean-170"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:170 --> **L170** 用同一系统声明的应用预算检查该状态的库存数量。

<a id="line-code-leanified-corereader-agency-lean-171"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:171 --> **L171** 说明后续定义或结果：保存报告主体、精确前后状态、声称新增操作、输入和期望输出。

<a id="line-code-leanified-corereader-agency-lean-172"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:172 --> **L172** 保存报告主体、精确前后状态、声称新增操作、输入和期望输出。

<a id="line-code-leanified-corereader-agency-lean-173"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:173 --> **L173** 记录该扩展公告的所有者。

<a id="line-code-leanified-corereader-agency-lean-174"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:174 --> **L174** 保存公告指定的确切基线状态。

<a id="line-code-leanified-corereader-agency-lean-175"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:175 --> **L175** 保存公告指定的确切结果状态。

<a id="line-code-leanified-corereader-agency-lean-176"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:176 --> **L176** 指定声称新增构造的操作。

<a id="line-code-leanified-corereader-agency-lean-177"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:177 --> **L177** 固定公告声称该操作表现所用的输入。

<a id="line-code-leanified-corereader-agency-lean-178"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:178 --> **L178** 保存该操作在指定输入上的声称输出。

<a id="line-code-leanified-corereader-agency-lean-179"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:179 --> **L179** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-180"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:180 --> **L180** 说明后续定义或结果：用本系统主体和当前状态构造对应拟议状态及操作合同的报告。

<a id="line-code-leanified-corereader-agency-lean-181"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:181 --> **L181** 用本系统主体和当前状态构造对应拟议状态及操作合同的报告。

<a id="line-code-leanified-corereader-agency-lean-182"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:182 --> **L182** 接收该报告声称新增的操作及具体输入输出对。

<a id="line-code-leanified-corereader-agency-lean-183"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:183 --> **L183** 以系统所有者和当前基线构造报告，并填入给定后状态与主张数据。

<a id="line-code-leanified-corereader-agency-lean-184"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:184 --> **L184** 说明后续定义或结果：要求声称操作在后状态中新出现，并在指定输入产生期望输出。

<a id="line-code-leanified-corereader-agency-lean-185"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:185 --> **L185** 要求声称操作在后状态中新出现，并在指定输入产生期望输出。

<a id="line-code-leanified-corereader-agency-lean-186"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:186 --> **L186** 报告所称新增操作必须实际属于公告的后状态。

<a id="line-code-leanified-corereader-agency-lean-187"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:187 --> **L187** 同一操作必须不属于公告基线的已构造列表。

<a id="line-code-leanified-corereader-agency-lean-188"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:188 --> **L188** 该操作在报告输入上的实际运行必须等于声称输出。

<a id="line-code-leanified-corereader-agency-lean-189"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:189 --> **L189** 说明后续定义或结果：从已成立报告中抽取新构造操作，作为扩展的存在见证。

<a id="line-code-leanified-corereader-agency-lean-190"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:190 --> **L190** 从已成立报告中抽取新构造操作，作为扩展的存在见证。

<a id="line-code-leanified-corereader-agency-lean-191"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:191 --> **L191** 用主张中的后状态成员关系与前状态缺失关系构造Expanded的构造分支。

<a id="line-code-leanified-corereader-agency-lean-192"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:192 --> **L192** 说明后续定义或结果：系统对仅库存膨胀的状态报告零输入上的新增successor。

<a id="line-code-leanified-corereader-agency-lean-193"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:193 --> **L193** 系统对仅库存膨胀的状态报告零输入上的新增successor。

<a id="line-code-leanified-corereader-agency-lean-194"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:194 --> **L194** 说明后续定义或结果：核实报告对象后计算其新增操作主张及实际扩展均不成立。

<a id="line-code-leanified-corereader-agency-lean-195"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:195 --> **L195** 核实报告对象后计算其新增操作主张及实际扩展均不成立。

<a id="line-code-leanified-corereader-agency-lean-196"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:196 --> **L196** 确认具体公告所指正是baseState与inflatedState。

<a id="line-code-leanified-corereader-agency-lean-197"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:197 --> **L197** 确认声称新增操作是successor。

<a id="line-code-leanified-corereader-agency-lean-198"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:198 --> **L198** 确认公告中的测试输入是0、预期输出是1。

<a id="line-code-leanified-corereader-agency-lean-199"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:199 --> **L199** 陈述公告实质主张失败，且公告自身的状态对没有扩展。

<a id="line-code-leanified-corereader-agency-lean-200"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:200 --> **L200** 计算报告字段和未变能力列表；即使successor的0→1表现正确，后状态仍没有该操作。

<a id="line-code-leanified-corereader-agency-lean-202"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:202 --> **L202** 说明后续定义或结果：成就模型仅含库存膨胀与实际操作扩展两个候选变化。

<a id="line-code-leanified-corereader-agency-lean-203"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:203 --> **L203** 成就模型仅含库存膨胀与实际操作扩展两个候选变化。

<a id="line-code-leanified-corereader-agency-lean-204"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:204 --> **L204** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-agency-lean-206"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:206 --> **L206** 在初始状态的理解和构造列表中添加successor。

<a id="line-code-leanified-corereader-agency-lean-207"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:207 --> **L207** 在理解与构造列表中同时加入successor，保留基线其他字段。

<a id="line-code-leanified-corereader-agency-lean-208"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:208 --> **L208** 两种模型变化使用同一个初始状态基线。

<a id="line-code-leanified-corereader-agency-lean-209"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:209 --> **L209** 按变化类别选择库存膨胀或能力扩展后状态。

<a id="line-code-leanified-corereader-agency-lean-210"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:210 --> **L210** inflate转移以仅膨胀库存的状态结束。

<a id="line-code-leanified-corereader-agency-lean-211"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:211 --> **L211** extend转移以新增理解和构造successor的状态结束。

<a id="line-code-leanified-corereader-agency-lean-212"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:212 --> **L212** 说明后续定义或结果：两种变化都明确使用零作为测试输入。

<a id="line-code-leanified-corereader-agency-lean-213"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:213 --> **L213** 两种变化都明确使用零作为测试输入。

<a id="line-code-leanified-corereader-agency-lean-214"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:214 --> **L214** 对同一系统及指定后状态报告successor在零处输出一。

<a id="line-code-leanified-corereader-agency-lean-215"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:215 --> **L215** 两种转移都在共同输入0上公告successor，但各自指定实际后状态。

<a id="line-code-leanified-corereader-agency-lean-217"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:217 --> **L217** 说明后续定义或结果：在绑定系统上核实数量不增能力、外援依赖、有根据稳定动作和同对象虚假成就报告等全部分支。

<a id="line-code-leanified-corereader-agency-lean-218"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:218 --> **L218** 开启来源元数据，将CoreReader.Agency.generationLimits绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-219"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:219 --> **L219** 记录来源引用organon.charter.self-transcendence.limits#p1及内容摘要6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-220"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:220 --> **L220** 记录来源引用organon.charter.self-transcendence.limits#p2及内容摘要6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-221"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:221 --> **L221** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-222"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:222 --> **L222** 在绑定系统上核实数量不增能力、外援依赖、有根据稳定动作和同对象虚假成就报告等全部分支。

<a id="line-code-leanified-corereader-agency-lean-223"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:223 --> **L223** 具体系统仍满足所采纳的生成政策。

<a id="line-code-leanified-corereader-agency-lean-224"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:224 --> **L224** 其政策允许保持版本0，因此生成取向不要求每次行动都改变版本。

<a id="line-code-leanified-corereader-agency-lean-225"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:225 --> **L225** 膨胀该系统库存不会扩展其已表示能力。

<a id="line-code-leanified-corereader-agency-lean-226"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:226 --> **L226** 膨胀状态的库存条目严格多于该系统当前状态。

<a id="line-code-leanified-corereader-agency-lean-227"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:227 --> **L227** 抽象层级数也严格增加，却没有能力扩展。

<a id="line-code-leanified-corereader-agency-lean-228"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:228 --> **L228** 在能力内容保持不变时，词汇条目数严格增加。

<a id="line-code-leanified-corereader-agency-lean-229"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:229 --> **L229** 资源为1、2、3时，该系统执行实际返回some 6。

<a id="line-code-leanified-corereader-agency-lean-230"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:230 --> **L230** 从同一资源包移除经验，使该系统执行失败。

<a id="line-code-leanified-corereader-agency-lean-231"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:231 --> **L231** 单独移除知识，同样使其执行返回none。

<a id="line-code-leanified-corereader-agency-lean-232"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:232 --> **L232** 单独移除协作者输入，也使执行失败。

<a id="line-code-leanified-corereader-agency-lean-233"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:233 --> **L233** 三种外部输入均缺失时，同一执行接口返回none。

<a id="line-code-leanified-corereader-agency-lean-234"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:234 --> **L234** 系统稳定动作不产生已表示能力扩展。

<a id="line-code-leanified-corereader-agency-lean-235"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:235 --> **L235** 该稳定动作恰为保持系统当前状态。

<a id="line-code-leanified-corereader-agency-lean-236"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:236 --> **L236** 保持当前状态可保留工作负载必需的copy操作。

<a id="line-code-leanified-corereader-agency-lean-237"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:237 --> **L237** 保留的单条状态满足该系统1条的应用预算。

<a id="line-code-leanified-corereader-agency-lean-238"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:238 --> **L238** 复制后库存有2条，超过同一系统的1条预算。

<a id="line-code-leanified-corereader-agency-lean-239"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:239 --> **L239** 稳定具有所述理由：构造内容未变，但只有当前状态满足预算。

<a id="line-code-leanified-corereader-agency-lean-240"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:240 --> **L240** 确认该报告由此系统针对inflatedState、successor、输入0和输出1构造。

<a id="line-code-leanified-corereader-agency-lean-241"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:241 --> **L241** 报告所有者等于该生成系统的所有者。

<a id="line-code-leanified-corereader-agency-lean-242"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:242 --> **L242** 报告以该系统当前状态为基线，以inflatedState为结果。

<a id="line-code-leanified-corereader-agency-lean-243"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:243 --> **L243** 此实际报告称为新增的操作是successor。

<a id="line-code-leanified-corereader-agency-lean-244"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:244 --> **L244** 报告声称的表现仍是具体的0→1。

<a id="line-code-leanified-corereader-agency-lean-245"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:245 --> **L245** 尽管存在该报告，其主张仍为假，其自身前后状态也没有能力扩展。

<a id="line-code-leanified-corereader-agency-lean-246"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:246 --> **L246** 展开具体系统、保持动作和必需操作检查，开始计算generationLimits各条款。

<a id="line-code-leanified-corereader-agency-lean-247"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:247 --> **L247** 再展开单条预算、报告构造器和政策及扩展谓词，使主张化为具体数据。

<a id="line-code-leanified-corereader-agency-lean-248"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:248 --> **L248** 用实际基线及膨胀列表和三资源解释器，判定数量、成员关系和执行结果。

<a id="line-code-leanified-corereader-agency-lean-249"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:249 --> **L249** 最后展开稳定理由与自有公告主张，通过计算完成全部合取分支。

<a id="line-code-leanified-corereader-agency-lean-251"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:251 --> **L251** 说明后续定义或结果：开放政策满足生成规范，但空记录无法履行非空自身规则的评估要求。

<a id="line-code-leanified-corereader-agency-lean-252"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:252 --> **L252** 开启来源元数据，将CoreReader.Agency.generationNotReflexivity绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-253"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:253 --> **L253** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-254"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:254 --> **L254** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-255"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:255 --> **L255** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-256"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:256 --> **L256** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-257"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:257 --> **L257** 开放政策满足生成规范，但空记录无法履行非空自身规则的评估要求。

<a id="line-code-leanified-corereader-agency-lean-258"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:258 --> **L258** 将openPolicy的生成取向与空工作日志下的自有反身履责失败组合。

<a id="line-code-leanified-corereader-agency-lean-259"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:259 --> **L259** 分别证明生成取向，并反驳空日志的Reflexive主张。

<a id="line-code-leanified-corereader-agency-lean-260"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:260 --> **L260** 计算openPolicy的扩展价值取向与无条件可修订性。

<a id="line-code-leanified-corereader-agency-lean-261"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:261 --> **L261** 反证假设空日志满足自有反身契约。

<a id="line-code-leanified-corereader-agency-lean-262"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:262 --> **L262** 对已登记assessingRule应用无自我豁免定理，从假设的空日志履责迫出已执行评估。

<a id="line-code-leanified-corereader-agency-lean-263"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:263 --> **L263** 选取所有者匹配的系统自身，并证明该评估对它适用。

<a id="line-code-leanified-corereader-agency-lean-264"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:264 --> **L264** 展开Performed后得到空工作列表中不可能存在的成员。

<a id="line-code-leanified-corereader-agency-lean-266"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:266 --> **L266** 说明后续定义或结果：计算自然数等式n+1=2*n是否成立。

<a id="line-code-leanified-corereader-agency-lean-267"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:267 --> **L267** 计算自然数等式n+1=2*n是否成立。

<a id="line-code-leanified-corereader-agency-lean-269"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:269 --> **L269** 逐个检验给定样本上的算术谓词，不检查样本外输入。

<a id="line-code-leanified-corereader-agency-lean-271"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:271 --> **L271** 说明后续定义或结果：样本一通过而零失败，反驳从有限自测得到全称正确性。

<a id="line-code-leanified-corereader-agency-lean-272"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:272 --> **L272** 开启来源元数据，将CoreReader.Agency.selfTestDoesNotProve绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-agency-lean-273"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:273 --> **L273** 记录来源引用organon.charter.reflexivity.limits#p1及内容摘要ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-agency-lean-274"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:274 --> **L274** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-agency-lean-275"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:275 --> **L275** 样本一通过而零失败，反驳从有限自测得到全称正确性。

<a id="line-code-leanified-corereader-agency-lean-276"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:276 --> **L276** 同一算术原则在样本1上通过，却在0上为假。

<a id="line-code-leanified-corereader-agency-lean-277"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:277 --> **L277** 因此该原则并非对所有自然数输入都返回true。

<a id="line-code-leanified-corereader-agency-lean-278"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:278 --> **L278** 将通过样本的计算与两项失败主张分开。

<a id="line-code-leanified-corereader-agency-lean-279"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:279 --> **L279** 计算单样本：1+1等于2×1，故selfTest [1]为true。

<a id="line-code-leanified-corereader-agency-lean-280"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:280 --> **L280** 把0处的具体失败与普遍成功的反驳分开。

<a id="line-code-leanified-corereader-agency-lean-281"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:281 --> **L281** 计算0+1≠2×0，使ownArithmeticPrinciple 0为false。

<a id="line-code-leanified-corereader-agency-lean-282"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:282 --> **L282** 假设同一原则对每个输入都成功。

<a id="line-code-leanified-corereader-agency-lean-283"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:283 --> **L283** 把该普遍假设实例化到输入0。

<a id="line-code-leanified-corereader-agency-lean-284"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:284 --> **L284** 与0处计算所得false矛盾，反驳普遍正确性。

<a id="line-code-leanified-corereader-agency-lean-286"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:286 --> **L286** 关闭当前命名空间。

<a id="code-leanified-corereader-choice-lean"></a>
### `leanified/CoreReader/Choice.lean`

<!-- lean-code leanified/CoreReader/Choice.lean -->
```lean
import CoreReader.Evidence

namespace CoreReader.Choice
open CoreReader.Logic CoreReader.Evidence

inductive StatusKind | name | convention | standing
  deriving DecidableEq, Repr

inductive MethodReason | output | explanation | applicability | simplicity | procedure
  deriving DecidableEq, Repr

inductive Reason | status (kind : StatusKind) | method (kind : MethodReason)
  deriving DecidableEq, Repr

/- An implementation has observable behavior, a stated domain, an explanation formula and an execution trace. -/
structure Implementation where
  name : String
  conventional : Bool
  established : Bool
  run : Nat → Nat
  cost : Nat
  domain : Nat → Prop
  explanation : Nat → Nat
  trace : Nat → List Nat

/- An application selects relevant objectives and constraints; no universal ranking or score is prescribed. -/
structure Requirements where
  inputs : Nat → Prop
  expected : Nat → Nat
  budget : Nat
  values : MethodReason → Prop

/- These are explicit, content-based interpretations of possible method reasons in this application. -/
def MethodContent (req : Requirements) (i : Implementation) : MethodReason → Prop
  | .output => ∀ x, req.inputs x → i.run x = req.expected x
  | .explanation => ∀ x, req.inputs x → i.explanation x = i.run x
  | .applicability => ∀ x, req.inputs x → i.domain x
  | .simplicity => i.cost ≤ req.budget
  | .procedure => ∀ x, req.inputs x → (i.trace x).getLast? = some (i.run x)

/- The extra choice commitment requires both selected relevance and actual reason content; pure status supplies neither. -/
def Relevant (req : Requirements) (i : Implementation) : Reason → Prop
  | .status _ => False
  | .method kind => req.values kind ∧ MethodContent req i kind

def Feasible (req : Requirements) (i : Implementation) : Prop :=
  (∀ x, req.inputs x → i.run x = req.expected x) ∧ i.cost ≤ req.budget

/- In this application, a relevant reason is eligible only after its stated output and budget requirements hold. -/
def JustifiedChoice (req : Requirements) (i : Implementation) (reasons : List Reason) : Prop :=
  Feasible req i ∧ ∃ reason ∈ reasons, Relevant req i reason

/- This proves the structural effect of the adopted choice commitment for each of its three status-only cases. -/
/-- organon-map CoreReader.Choice.statusOnlyFails
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
-/
theorem statusOnlyFails (req : Requirements) (i : Implementation) (k : StatusKind) :
    ¬ JustifiedChoice req i [.status k] := by
  rintro ⟨_, reason, hr, hv⟩
  simp only [List.mem_singleton] at hr
  subst reason
  exact hv

def identityImpl : Implementation where
  name := "Existing identity implementation"
  conventional := true
  established := true
  run n := n
  cost := 1
  domain _ := True
  explanation n := n
  trace n := [n]

def successorImpl : Implementation where
  name := "Successor implementation"
  conventional := false
  established := false
  run n := n + 1
  cost := 2
  domain _ := True
  explanation n := n + 1
  trace n := [n, n + 1]

def changedOutsideZero : Implementation :=
  { identityImpl with
    name := "Changed outside zero"
    conventional := false
    established := false
    run := fun n => if n = 0 then 0 else n + 1
    explanation := fun n => if n = 0 then 0 else n + 1
    trace := fun n => [if n = 0 then 0 else n + 1] }

def identityRequirements : Requirements where
  inputs _ := True
  expected n := n
  budget := 1
  values _ := True

def objectiveReason : List Reason := [.method .output]

theorem identityOutputReason : Relevant identityRequirements identityImpl (.method .output) := by
  exact ⟨trivial, fun _ _ => rfl⟩

theorem identityFeasible : Feasible identityRequirements identityImpl :=
  ⟨fun _ _ => rfl, by decide⟩

theorem identityJustified : JustifiedChoice identityRequirements identityImpl objectiveReason :=
  ⟨identityFeasible, .method .output, by simp [objectiveReason], identityOutputReason⟩

/- A conventional existing implementation can be selected for an actual requirement, not for status alone. -/
/-- organon-map CoreReader.Choice.conventionWithReason
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
-/
theorem conventionWithReason :
    identityImpl.conventional = true ∧ identityImpl.established = true ∧
    JustifiedChoice identityRequirements identityImpl [.status .convention, .method .output] := by
  exact ⟨rfl, rfl, identityFeasible, .method .output, by simp, identityOutputReason⟩

inductive Candidate | identity | successor
  deriving DecidableEq, Repr

def implementation : Candidate → Implementation
  | .identity => identityImpl
  | .successor => successorImpl

/- Feasibility is decided by the same stated behavior and resource requirement for either candidate. -/
/-- organon-map CoreReader.Choice.singleFeasible
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem singleFeasible :
    (∀ candidate, Feasible identityRequirements (implementation candidate) ↔ candidate = .identity) ∧
    JustifiedChoice identityRequirements identityImpl objectiveReason := by
  constructor
  · intro candidate
    cases candidate
    · simp [Feasible, identityRequirements, implementation, identityImpl]
    · simp [Feasible, identityRequirements, implementation, successorImpl]
  · exact identityJustified

/- The same observed input can conceal a relevant difference at another input. -/
/-- organon-map CoreReader.Choice.localNotGlobal
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem localNotGlobal :
    (∀ x, x = 0 → identityImpl.run x = changedOutsideZero.run x) ∧
    identityImpl.run 1 ≠ changedOutsideZero.run 1 := by
  constructor
  · intro x hx; subst x; rfl
  · decide

/- This candidate is cheap enough but misses the required identity output. -/
def cheapSuccessor : Implementation := { successorImpl with cost := 1 }

theorem eligibleInternalReasonNotSufficient :
    Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
    ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity] := by
  refine ⟨⟨trivial, by change 1 ≤ 1; decide⟩, ?_⟩
  intro h
  have bad := h.1.1 0 trivial
  cases bad

/- Each of the four internal-method reasons is eligible because of its actual selected requirement and content. -/
/-- organon-map CoreReader.Choice.internalReasons
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem internalReasons :
    Relevant identityRequirements identityImpl (.method .explanation) ∧
    Relevant identityRequirements identityImpl (.method .applicability) ∧
    Relevant identityRequirements identityImpl (.method .simplicity) ∧
    Relevant identityRequirements identityImpl (.method .procedure) ∧
    (Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
      ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity]) := by
  exact ⟨⟨trivial, fun _ _ => rfl⟩, ⟨trivial, fun _ _ => trivial⟩,
    ⟨trivial, by change 1 ≤ 1; decide⟩, ⟨trivial, fun _ _ => rfl⟩, eligibleInternalReasonNotSufficient⟩

/- Openness about reasons does not make two actual behaviors identical or reject the existing implementation. -/
/-- organon-map CoreReader.Choice.openNotEquivalent
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem openNotEquivalent :
    JustifiedChoice identityRequirements identityImpl objectiveReason ∧
    identityImpl.run 0 ≠ successorImpl.run 0 := by
  exact ⟨identityJustified, by decide⟩

/- A priority interpretation chooses one of the same two actual implementations. -/
def priorityClaim : Claim Candidate := fun selected => selected = .identity

def statusFacts : Theory Candidate := union
  (singleton (fun _ => identityImpl.conventional = true))
  (singleton (fun _ => identityImpl.established = true))

/- Both interpretations have exactly the same true conventional and established status facts. -/
theorem statusFactsModel (selected : Candidate) : Models statusFacts selected := by
  exact (modelsUnion _ _ _).2 ⟨(modelsSingleton _ _).2 rfl, (modelsSingleton _ _).2 rfl⟩

def priorityArticulation : Articulation Candidate :=
  ⟨["priority", "conventional use", "established status"], statusFacts,
    [fun _ => identityImpl.conventional = true, fun _ => identityImpl.established = true],
    fun _ => True⟩

/- This procedure reports whether the actual status premises entail that very priority claim over its stated two-candidate scope. -/
def AssessmentAccurate (report : Bool) : Prop :=
  report = true ↔ Entails statusFacts priorityClaim

theorem statusDoesNotEntailPriority : ¬ Entails statusFacts priorityClaim := by
  intro h
  have bad := h .successor (statusFactsModel .successor)
  cases bad

theorem statusAssessmentNonEntailment :
    Articulated priorityArticulation ∧ AssessmentAccurate false ∧
    (∀ selected, Models statusFacts selected) ∧
    priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
    ¬ Entails statusFacts priorityClaim ∧
    ¬ JustifiedChoice identityRequirements identityImpl [.status .standing] := by
  refine ⟨⟨by simp [priorityArticulation], by simp [priorityArticulation]⟩,
    ⟨(by intro h; cases h), (fun h => False.elim (statusDoesNotEntailPriority h))⟩,
    statusFactsModel, rfl, (by intro h; cases h), statusDoesNotEntailPriority,
    statusOnlyFails _ _ _⟩

/- An assessment identifies the exact premises and priority question whose entailment it reports. -/
structure PriorityAssessment where
  premises : Theory Candidate
  question : Claim Candidate
  report : Bool
/- Accuracy concerns the actual reported entailment question, independently of a later choice policy. -/
def PriorityAssessment.accurate (assessment : PriorityAssessment) : Prop :=
  assessment.report = true ↔ Entails assessment.premises assessment.question
/- Both policies receive this same correctly negative status-only priority audit. -/
def statusPriorityAudit : PriorityAssessment := ⟨statusFacts, priorityClaim, false⟩
/- Priority reasons are a policy component independent of the assessment's report and objects. -/
structure ChoicePolicy where
  selected : Candidate
  priorityReasons : List Reason
  assessment : PriorityAssessment
/- This is completion of the specified assessment procedure only, not full compliance with philosophical Grounds. -/
def GeneralAssessmentFulfilled (policy : ChoicePolicy) : Prop :=
  Articulated priorityArticulation ∧ policy.assessment = statusPriorityAudit ∧ policy.assessment.accurate
/- The additional choice norm separately tests the reasons actually used to prioritize the selected implementation. -/
def AdditionalChoiceNorm (policy : ChoicePolicy) : Prop :=
  JustifiedChoice identityRequirements (implementation policy.selected) policy.priorityReasons
/- This policy retains status alone as its priority reason despite receiving the correctly negative status audit. -/
def statusPriorityPolicy : ChoicePolicy := ⟨.identity, [.status .standing], statusPriorityAudit⟩
/- This policy selects the same implementation using its actual relevant output reason after the same audit. -/
def outputPriorityPolicy : ChoicePolicy := ⟨.identity, objectiveReason, statusPriorityAudit⟩
/- The shared negative result is mathematically accurate for its actual status premises and question. -/
theorem statusPriorityAuditAccurate : statusPriorityAudit.accurate := by
  constructor
  · intro h; cases h
  · intro h; exact False.elim (statusDoesNotEntailPriority h)
/- These independently variable policies share facts, selected implementation and completed audit, but differ on the extra choice norm. -/
def PolicyIndependenceExample : Prop :=
  statusPriorityPolicy.selected = outputPriorityPolicy.selected ∧
  statusPriorityPolicy.assessment = outputPriorityPolicy.assessment ∧
  statusPriorityPolicy.assessment.premises = statusFacts ∧
  statusPriorityPolicy.assessment.question = priorityClaim ∧
  statusPriorityPolicy.assessment.report = false ∧
  (∀ selected, Models statusPriorityPolicy.assessment.premises selected) ∧
  statusPriorityPolicy.priorityReasons ≠ outputPriorityPolicy.priorityReasons ∧
  GeneralAssessmentFulfilled statusPriorityPolicy ∧ GeneralAssessmentFulfilled outputPriorityPolicy ∧
  ¬ AdditionalChoiceNorm statusPriorityPolicy ∧ AdditionalChoiceNorm outputPriorityPolicy
/- Changing the actual priority reasons changes choice compliance while the accurate audit remains identical. -/
theorem policyIndependenceExample : PolicyIndependenceExample := by
  have articulated : Articulated priorityArticulation :=
    ⟨by simp [priorityArticulation], by simp [priorityArticulation]⟩
  refine ⟨rfl,rfl,rfl,rfl,rfl,statusFactsModel,?_,
    ⟨articulated,rfl,statusPriorityAuditAccurate⟩,
    ⟨articulated,rfl,statusPriorityAuditAccurate⟩,?_,?_⟩
  · decide
  · exact statusOnlyFails identityRequirements identityImpl .standing
  · exact identityJustified

/- A correctly articulated, completed negative assessment does not enforce the additional selection rule.
This is only independence from represented assessment procedures: keeping this unsupported priority would fail general support proportionality too. -/
/-- organon-map CoreReader.Choice.generalGroundsNotChoice
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem generalGroundsNotChoice :
    (Articulated priorityArticulation ∧ AssessmentAccurate false ∧
      (∀ selected, Models statusFacts selected) ∧
      priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
      ¬ Entails statusFacts priorityClaim ∧
      ¬ JustifiedChoice identityRequirements identityImpl [.status .standing]) ∧
    PolicyIndependenceExample :=
  ⟨statusAssessmentNonEntailment, policyIndependenceExample⟩

end CoreReader.Choice
```
<!-- /lean-code leanified/CoreReader/Choice.lean -->

<a id="line-code-leanified-corereader-choice-lean-1"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:1 --> **L1** 导入 CoreReader.Evidence，使其已检查声明可供本模块使用；这一行不提出新的哲学结论。

<a id="line-code-leanified-corereader-choice-lean-3"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:3 --> **L3** 打开命名空间 CoreReader.Choice，使后续声明获得这一模块限定名。

<a id="line-code-leanified-corereader-choice-lean-4"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:4 --> **L4** 允许不加限定使用 CoreReader.Logic CoreReader.Evidence 中的名称；这改变名称解析，不增加假设。

<a id="line-code-leanified-corereader-choice-lean-6"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:6 --> **L6** 声明可选构造 StatusKind。定义名称、惯用性和既有地位三类身份理由标签。

<a id="line-code-leanified-corereader-choice-lean-7"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:7 --> **L7** 为这些有限构造子派生可判定相等与可打印表示；它们是计算便利，不是选择判据。

<a id="line-code-leanified-corereader-choice-lean-9"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:9 --> **L9** 声明可选构造 MethodReason。定义输出、解释、适用性、简洁性和流程五类方法理由。

<a id="line-code-leanified-corereader-choice-lean-10"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:10 --> **L10** 为这些有限构造子派生可判定相等与可打印表示；它们是计算便利，不是选择判据。

<a id="line-code-leanified-corereader-choice-lean-12"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:12 --> **L12** 声明可选构造 Reason。将身份理由与方法理由区分为不同构造器。

<a id="line-code-leanified-corereader-choice-lean-13"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:13 --> **L13** 为这些有限构造子派生可判定相等与可打印表示；它们是计算便利，不是选择判据。

<a id="line-code-leanified-corereader-choice-lean-15"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:15 --> **L15** 说明 Implementation 的预定范围。对应声明涉及：分别保存名称和状态标记、输出、成本、域、解释函数与轨迹。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-16"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:16 --> **L16** 声明数据接口 Implementation。分别保存名称和状态标记、输出、成本、域、解释函数与轨迹。

<a id="line-code-leanified-corereader-choice-lean-17"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:17 --> **L17** 保存实现的描述性名称，不赋予优先权。

<a id="line-code-leanified-corereader-choice-lean-18"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:18 --> **L18** 以布尔地位事实记录实现是否惯常。

<a id="line-code-leanified-corereader-choice-lean-19"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:19 --> **L19** 记录实现是否已经确立，与真实行为独立。

<a id="line-code-leanified-corereader-choice-lean-20"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:20 --> **L20** 保存真实自然数输入与输出函数。

<a id="line-code-leanified-corereader-choice-lean-21"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:21 --> **L21** 保存将按应用预算检查的成本。

<a id="line-code-leanified-corereader-choice-lean-22"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:22 --> **L22** 以输入上的谓词保存实现所述适用域。

<a id="line-code-leanified-corereader-choice-lean-23"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:23 --> **L23** 保存将与真实运行结果比较的解释输出内容。

<a id="line-code-leanified-corereader-choice-lean-24"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:24 --> **L24** 保存按输入索引的执行轨迹，其最后元素可与真实输出比较。

<a id="line-code-leanified-corereader-choice-lean-26"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:26 --> **L26** 说明 Requirements 的预定范围。对应声明涉及：保存输入域、期望输出、预算及重视的方法理由类别。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-27"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:27 --> **L27** 声明数据接口 Requirements。保存输入域、期望输出、预算及重视的方法理由类别。

<a id="line-code-leanified-corereader-choice-lean-28"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:28 --> **L28** 规定应用实际要求哪些输入。

<a id="line-code-leanified-corereader-choice-lean-29"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:29 --> **L29** 规定各输入的预期输出。

<a id="line-code-leanified-corereader-choice-lean-30"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:30 --> **L30** 规定应用预算约束。

<a id="line-code-leanified-corereader-choice-lean-31"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:31 --> **L31** 规定该应用重视哪些方法理由类别；这一选择是被采纳的输入。

<a id="line-code-leanified-corereader-choice-lean-33"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:33 --> **L33** 说明 MethodContent 的预定范围。对应声明涉及：按方法类别检查实际输出、解释等同、域覆盖、成本或轨迹末项合同。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-34"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:34 --> **L34** 定义 MethodContent。按方法类别检查实际输出、解释等同、域覆盖、成本或轨迹末项合同。

<a id="line-code-leanified-corereader-choice-lean-35"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:35 --> **L35** 输出理由要求该实现真实输出在每个必需输入上等于应用预期输出。

<a id="line-code-leanified-corereader-choice-lean-36"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:36 --> **L36** 解释理由要求解释输出在每个必需输入上匹配同一实现真实运行。

<a id="line-code-leanified-corereader-choice-lean-37"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:37 --> **L37** 适用性理由要求每个应用必需输入属于该实现的适用域。

<a id="line-code-leanified-corereader-choice-lean-38"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:38 --> **L38** 简单性理由为所选应用真实的成本不超预算条件。

<a id="line-code-leanified-corereader-choice-lean-39"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:39 --> **L39** 过程理由要求真实轨迹末元素在每个必需输入上等于该实现真实输出。

<a id="line-code-leanified-corereader-choice-lean-41"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:41 --> **L41** 说明 Relevant 的预定范围。对应声明涉及：身份理由被已采纳规范排除；方法理由必须被重视并满足其对应合同。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-42"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:42 --> **L42** 定义 Relevant。身份理由被已采纳规范排除；方法理由必须被重视并满足其对应合同。

<a id="line-code-leanified-corereader-choice-lean-43"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:43 --> **L43** 在这一被采纳选择规范下，地位理由被定义为不相关，不依赖其地位子类。

<a id="line-code-leanified-corereader-choice-lean-44"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:44 --> **L44** 方法理由必须同时属于这些要求所重视的类别，并满足该类别真实 MethodContent。

<a id="line-code-leanified-corereader-choice-lean-46"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:46 --> **L46** 定义 Feasible。同时要求指定输入上的输出正确及成本不超预算。

<a id="line-code-leanified-corereader-choice-lean-47"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:47 --> **L47** 可行性要求每个必需输入的真实输出正确，且真实成本不超过应用预算。

<a id="line-code-leanified-corereader-choice-lean-49"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:49 --> **L49** 说明 JustifiedChoice 的预定范围。对应声明涉及：同时要求输出和预算可行，以及至少一个列出的、被重视且内容成立的方法理由。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-50"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:50 --> **L50** 定义 JustifiedChoice。同时要求输出和预算可行，以及至少一个列出的、被重视且内容成立的方法理由。

<a id="line-code-leanified-corereader-choice-lean-51"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:51 --> **L51** 要求可行性及至少一个实际列出的相关理由；仅有相关理由不确立可行性。

<a id="line-code-leanified-corereader-choice-lean-53"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:53 --> **L53** 说明 statusOnlyFails 的预定范围。对应声明涉及：纯身份理由的相关性定义为假，故任何实现都不能仅凭它获得规范内正当选择。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-54"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:54 --> **L54** 开始 CoreReader.Choice.statusOnlyFails 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-55"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:55 --> **L55** 登记来源单元 organon.grounds.implementations#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-56"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:56 --> **L56** 登记来源单元 organon.grounds.implementations#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-57"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:57 --> **L57** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-58"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:58 --> **L58** 陈述经检查的结果 statusOnlyFails。纯身份理由的相关性定义为假，故任何实现都不能仅凭它获得规范内正当选择。

<a id="line-code-leanified-corereader-choice-lean-59"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:59 --> **L59** 对给定任意要求与实现，否定唯一列出理由为地位时的有理由选择。

<a id="line-code-leanified-corereader-choice-lean-60"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:60 --> **L60** 拆解假定的仅凭地位的有理由选择，提取所列理由及相关性证明；仅有可行性不能提供缺失的相关性。

<a id="line-code-leanified-corereader-choice-lean-61"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:61 --> **L61** 化简单元素成员关系，说明提取的理由恰为给定地位理由。

<a id="line-code-leanified-corereader-choice-lean-62"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:62 --> **L62** 把确定的地位理由代入假定的相关性证明。

<a id="line-code-leanified-corereader-choice-lean-63"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:63 --> **L63** 地位理由的相关性被定义为 False，因此提取出的 hv 已是矛盾。

<a id="line-code-leanified-corereader-choice-lean-65"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:65 --> **L65** 定义 identityImpl。构造既有惯用恒等实现：成本一、全域、对应解释和单项轨迹。

<a id="line-code-leanified-corereader-choice-lean-66"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:66 --> **L66** 命名具体既有恒等实现，不用名称证明质量。

<a id="line-code-leanified-corereader-choice-lean-67"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:67 --> **L67** 把恒等实现的惯常与既有地位标记为 true；这些事实仍与真实方法理由不同。

<a id="line-code-leanified-corereader-choice-lean-68"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:68 --> **L68** 把恒等实现的惯常与既有地位标记为 true；这些事实仍与真实方法理由不同。

<a id="line-code-leanified-corereader-choice-lean-69"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:69 --> **L69** 把真实恒等输出定义为未改变的输入 n。

<a id="line-code-leanified-corereader-choice-lean-70"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:70 --> **L70** 把恒等实现真实成本设为 1。

<a id="line-code-leanified-corereader-choice-lean-71"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:71 --> **L71** 使恒等实现适用域包含全部自然数输入。

<a id="line-code-leanified-corereader-choice-lean-72"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:72 --> **L72** 提供等于输入的解释结果，与恒等实现真实输出匹配。

<a id="line-code-leanified-corereader-choice-lean-73"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:73 --> **L73** 以单元素输入作为真实轨迹，其最后元素等于恒等输出。

<a id="line-code-leanified-corereader-choice-lean-75"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:75 --> **L75** 定义 successorImpl。构造后继实现：成本二、全域、对应解释及两项轨迹。

<a id="line-code-leanified-corereader-choice-lean-76"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:76 --> **L76** 命名替代的后继实现。

<a id="line-code-leanified-corereader-choice-lean-77"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:77 --> **L77** 在该例中把后继实现标记为既非惯常也非既有；这一地位本身不决定可行性。

<a id="line-code-leanified-corereader-choice-lean-78"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:78 --> **L78** 在该例中把后继实现标记为既非惯常也非既有；这一地位本身不决定可行性。

<a id="line-code-leanified-corereader-choice-lean-79"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:79 --> **L79** 把后继实现真实输出定义为 n+1。

<a id="line-code-leanified-corereader-choice-lean-80"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:80 --> **L80** 把其原始成本设为 2，高于恒等应用预算 1。

<a id="line-code-leanified-corereader-choice-lean-81"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:81 --> **L81** 使后继实现适用域也包含每个自然数输入。

<a id="line-code-leanified-corereader-choice-lean-82"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:82 --> **L82** 提供其解释结果 n+1，忠实于自身真实输出。

<a id="line-code-leanified-corereader-choice-lean-83"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:83 --> **L83** 在轨迹中记录输入及之后的真实后继输出。

<a id="line-code-leanified-corereader-choice-lean-85"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:85 --> **L85** 定义 changedOutsideZero。复制恒等实现但令非零输入改为后继，零点仍相同。

<a id="line-code-leanified-corereader-choice-lean-86"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:86 --> **L86** 从 identityImpl 的字段出发，明确覆盖后续组件。

<a id="line-code-leanified-corereader-choice-lean-87"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:87 --> **L87** 按其在零输入以外的变化命名修改后实现。

<a id="line-code-leanified-corereader-choice-lean-88"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:88 --> **L88** 把修改后实现的惯常与既有标记改为 false。

<a id="line-code-leanified-corereader-choice-lean-89"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:89 --> **L89** 把修改后实现的惯常与既有标记改为 false。

<a id="line-code-leanified-corereader-choice-lean-90"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:90 --> **L90** 在输入 0 保持输出 0，其余输入均返回 n+1。

<a id="line-code-leanified-corereader-choice-lean-91"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:91 --> **L91** 使其解释遵循相同真实分段输出函数。

<a id="line-code-leanified-corereader-choice-lean-92"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:92 --> **L92** 以相同分段结果作为单元素轨迹，完成实现覆盖。

<a id="line-code-leanified-corereader-choice-lean-94"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:94 --> **L94** 定义 identityRequirements。要求所有自然数输入保持恒等，预算一，重视全部方法理由。

<a id="line-code-leanified-corereader-choice-lean-95"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:95 --> **L95** 恒等应用要求全部自然数输入。

<a id="line-code-leanified-corereader-choice-lean-96"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:96 --> **L96** 把期望输出设为未改变的输入。

<a id="line-code-leanified-corereader-choice-lean-97"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:97 --> **L97** 为应用采纳预算 1。

<a id="line-code-leanified-corereader-choice-lean-98"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:98 --> **L98** 接纳全部已表示的方法理由类别，仍须检查其真实内容。

<a id="line-code-leanified-corereader-choice-lean-100"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:100 --> **L100** 定义 objectiveReason。理由清单只包含输出合同这一方法类别。

<a id="line-code-leanified-corereader-choice-lean-102"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:102 --> **L102** 陈述经检查的结果 identityOutputReason。恒等实现直接满足所要求全输入恒等输出且该理由被重视。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-choice-lean-103"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:103 --> **L103** 这些要求接纳输出理由；identityImpl 在每个允许输入的真实输出与预期输出由自反性相等。

<a id="line-code-leanified-corereader-choice-lean-105"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:105 --> **L105** 陈述经检查的结果 identityFeasible。证明全输入恒等输出及成本一满足预算一。 给出的证明项使用所示构造见证或先前引理，而不增加公理。

<a id="line-code-leanified-corereader-choice-lean-106"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:106 --> **L106** 对恒等实现，每个必需输出均由自反性正确；计算成本 1 不超过预算 1。

<a id="line-code-leanified-corereader-choice-lean-108"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:108 --> **L108** 陈述经检查的结果 identityJustified。以恒等输出和可行性为基础构造实际选择理由见证。 给出的证明项使用所示构造见证或先前引理，而不增加公理。

<a id="line-code-leanified-corereader-choice-lean-109"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:109 --> **L109** 组合恒等实现可行性与真实输出理由，证明它属于 objectiveReason，并提供基于内容的相关性。

<a id="line-code-leanified-corereader-choice-lean-111"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:111 --> **L111** 说明 conventionWithReason 的预定范围。对应声明涉及：既有惯用标记与有效输出理由并存；真正证据来自方法理由而非标记。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-112"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:112 --> **L112** 开始 CoreReader.Choice.conventionWithReason 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-113"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:113 --> **L113** 登记来源单元 organon.grounds.implementations#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-114"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:114 --> **L114** 登记来源单元 organon.grounds.implementations#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-115"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:115 --> **L115** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-116"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:116 --> **L116** 陈述经检查的结果 conventionWithReason。既有惯用标记与有效输出理由并存；真正证据来自方法理由而非标记。

<a id="line-code-leanified-corereader-choice-lean-117"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:117 --> **L117** 保留恒等实现两个真实地位事实均为 true。

<a id="line-code-leanified-corereader-choice-lean-118"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:118 --> **L118** 主张使用惯常与真实输出理由组成的列表可获得有理由选择；相关性来自输出理由。

<a id="line-code-leanified-corereader-choice-lean-119"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:119 --> **L119** 计算惯常与既有地位事实，保留实际可行性，并选取列表中的输出理由及其另行证明的相关性。

<a id="line-code-leanified-corereader-choice-lean-121"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:121 --> **L121** 声明可选构造 Candidate。候选域严格只有identity与successor，不含所有实现。

<a id="line-code-leanified-corereader-choice-lean-122"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:122 --> **L122** 为这些有限构造子派生可判定相等与可打印表示；它们是计算便利，不是选择判据。

<a id="line-code-leanified-corereader-choice-lean-124"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:124 --> **L124** 定义 implementation。将两个候选标签映射到其具体函数实现。

<a id="line-code-leanified-corereader-choice-lean-125"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:125 --> **L125** 把恒等候选解释为真实 identityImpl 对象。

<a id="line-code-leanified-corereader-choice-lean-126"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:126 --> **L126** 把后继候选解释为真实 successorImpl 对象。

<a id="line-code-leanified-corereader-choice-lean-128"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:128 --> **L128** 说明 singleFeasible 的预定范围。对应声明涉及：穷尽两个候选，证明恒等是预算一及恒等目标下唯一可行者，并有实际选择理由。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-129"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:129 --> **L129** 开始 CoreReader.Choice.singleFeasible 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-130"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:130 --> **L130** 登记来源单元 organon.grounds.implementations.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-131"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:131 --> **L131** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-132"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:132 --> **L132** 陈述经检查的结果 singleFeasible。穷尽两个候选，证明恒等是预算一及恒等目标下唯一可行者，并有实际选择理由。

<a id="line-code-leanified-corereader-choice-lean-133"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:133 --> **L133** 在明确的双值候选类型中，要求可行性恰对应 identity。

<a id="line-code-leanified-corereader-choice-lean-134"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:134 --> **L134** 还保留恒等实现真实的输出理由选择依据。

<a id="line-code-leanified-corereader-choice-lean-135"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:135 --> **L135** 分开准确的可行候选刻画与恒等选择已有的理由证明。

<a id="line-code-leanified-corereader-choice-lean-136"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:136 --> **L136** 固定明确恒等、后继类型中的任意候选，再检查其可行性等价关系。

<a id="line-code-leanified-corereader-choice-lean-137"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:137 --> **L137** 穷尽实际双候选类型：identity 或 successor；不涉及未列出的实现。

<a id="line-code-leanified-corereader-choice-lean-138"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:138 --> **L138** 对 identity 展开真实输出与成本；恒等输出和预算条件均满足。

<a id="line-code-leanified-corereader-choice-lean-139"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:139 --> **L139** 对 successor 展开同一要求；该候选不能满足恒等输出，其原始成本也超预算。

<a id="line-code-leanified-corereader-choice-lean-140"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:140 --> **L140** 复用 identityJustified 完成具体候选的有理由选择义务。

<a id="line-code-leanified-corereader-choice-lean-142"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:142 --> **L142** 说明 localNotGlobal 的预定范围。对应声明涉及：两个实现零点相同、一处不同，不能由局部表现推全域等价。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-143"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:143 --> **L143** 开始 CoreReader.Choice.localNotGlobal 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-144"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:144 --> **L144** 登记来源单元 organon.grounds.implementations.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-145"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:145 --> **L145** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-146"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:146 --> **L146** 陈述经检查的结果 localNotGlobal。两个实现零点相同、一处不同，不能由局部表现推全域等价。

<a id="line-code-leanified-corereader-choice-lean-147"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:147 --> **L147** 只在输入 0 范围下比较真实输出。

<a id="line-code-leanified-corereader-choice-lean-148"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:148 --> **L148** 另行要求输入 1 处真实输出不同。

<a id="line-code-leanified-corereader-choice-lean-149"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:149 --> **L149** 分开输入 0 范围内相等与输入 1 处真实不等两个目标。

<a id="line-code-leanified-corereader-choice-lean-150"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:150 --> **L150** 代入局部范围假设 x=0；两个实现输出依定义相等。

<a id="line-code-leanified-corereader-choice-lean-151"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:151 --> **L151** 计算输入 1 处的实际输出，验证所述不等关系。

<a id="line-code-leanified-corereader-choice-lean-153"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:153 --> **L153** 说明 cheapSuccessor 的预定范围。对应声明涉及：把后继成本降为一，但仍不满足恒等输出目标。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-154"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:154 --> **L154** 定义 cheapSuccessor。把后继成本降为一，但仍不满足恒等输出目标。

<a id="line-code-leanified-corereader-choice-lean-156"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:156 --> **L156** 陈述经检查的结果 eligibleInternalReasonNotSufficient。廉价后继有相关简洁性理由，却因输出不可行仍不能获得正当选择。

<a id="line-code-leanified-corereader-choice-lean-157"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:157 --> **L157** 要求 cheapSuccessor 的成本理由在所选要求下真实相关。

<a id="line-code-leanified-corereader-choice-lean-158"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:158 --> **L158** 仍否定它仅凭该理由获得有理由选择，因为可行性还包括输出正确。

<a id="line-code-leanified-corereader-choice-lean-159"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:159 --> **L159** 证明便宜后继实现具有被接纳的成本理由，成本 1 不超过预算 1，再单独否定有理由选择。

<a id="line-code-leanified-corereader-choice-lean-160"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:160 --> **L160** 假定 cheapSuccessor 凭成本理由获得有理由选择，以提取并反驳其必需输出可行性。

<a id="line-code-leanified-corereader-choice-lean-161"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:161 --> **L161** 假定有理由选择包含输出可行性；将其应用于输入 0，而后继实现返回 1，不是预期 0。

<a id="line-code-leanified-corereader-choice-lean-162"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:162 --> **L162** 消去所得不可能输出等式；相关成本理由没有修复错误输出。

<a id="line-code-leanified-corereader-choice-lean-164"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:164 --> **L164** 说明 internalReasons 的预定范围。对应声明涉及：给恒等实现四类有效内部理由，并以廉价后继反驳相关理由自动充分。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-165"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:165 --> **L165** 开始 CoreReader.Choice.internalReasons 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-166"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:166 --> **L166** 登记来源单元 organon.grounds.implementations.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-167"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:167 --> **L167** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-168"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:168 --> **L168** 陈述经检查的结果 internalReasons。给恒等实现四类有效内部理由，并以廉价后继反驳相关理由自动充分。

<a id="line-code-leanified-corereader-choice-lean-169"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:169 --> **L169** 要求同一真实恒等实现具有忠实解释理由。

<a id="line-code-leanified-corereader-choice-lean-170"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:170 --> **L170** 要求其真实适用性覆盖必需输入。

<a id="line-code-leanified-corereader-choice-lean-171"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:171 --> **L171** 要求其真实成本满足所重视的简单性与预算条件。

<a id="line-code-leanified-corereader-choice-lean-172"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:172 --> **L172** 要求其真实轨迹内容满足所重视的过程条件。

<a id="line-code-leanified-corereader-choice-lean-173"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:173 --> **L173** 纳入另一个便宜后继实例，其中成本理由合格。

<a id="line-code-leanified-corereader-choice-lean-174"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:174 --> **L174** 该便宜候选仍未满足有理由选择；组合定理从此开始证明。

<a id="line-code-leanified-corereader-choice-lean-175"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:175 --> **L175** 给 identity 提供被接纳且真实忠实的解释与适用性理由，并在每个必需输入检查内容。

<a id="line-code-leanified-corereader-choice-lean-176"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:176 --> **L176** 提供真实预算与轨迹理由，再纳入便宜却错误的实例，说明相关性本身不充分。

<a id="line-code-leanified-corereader-choice-lean-178"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:178 --> **L178** 说明 openNotEquivalent 的预定范围。对应声明涉及：已有正当选择实例，但恒等与后继在零处仍不同。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-179"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:179 --> **L179** 开始 CoreReader.Choice.openNotEquivalent 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-180"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:180 --> **L180** 登记来源单元 organon.grounds.implementations.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-181"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:181 --> **L181** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-182"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:182 --> **L182** 陈述经检查的结果 openNotEquivalent。已有正当选择实例，但恒等与后继在零处仍不同。

<a id="line-code-leanified-corereader-choice-lean-183"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:183 --> **L183** 基于真实输出理由，保留既有恒等实现的有理由选择。

<a id="line-code-leanified-corereader-choice-lean-184"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:184 --> **L184** 还要求恒等与后继实现在输入 0 产生不同真实输出。

<a id="line-code-leanified-corereader-choice-lean-185"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:185 --> **L185** 保留已有恒等选择理由，并计算 identity 与 successor 在 0 处不同的真实输出。

<a id="line-code-leanified-corereader-choice-lean-187"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:187 --> **L187** 说明 priorityClaim 的预定范围。对应声明涉及：要求被选候选为identity。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-188"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:188 --> **L188** 定义 priorityClaim。要求被选候选为identity。

<a id="line-code-leanified-corereader-choice-lean-190"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:190 --> **L190** 定义 statusFacts。理论只包含固定identity的惯用和既有状态事实，与当前选择无关。

<a id="line-code-leanified-corereader-choice-lean-191"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:191 --> **L191** 第一地位前提记录恒等实现真实惯常地位，不依赖候选解释。

<a id="line-code-leanified-corereader-choice-lean-192"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:192 --> **L192** 第二地位前提记录同一实现真实既有地位。

<a id="line-code-leanified-corereader-choice-lean-194"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:194 --> **L194** 说明 statusFactsModel 的预定范围。对应声明涉及：两个候选都满足这些固定元数据事实。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-195"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:195 --> **L195** 陈述经检查的结果 statusFactsModel。两个候选都满足这些固定元数据事实。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-choice-lean-196"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:196 --> **L196** 两个地位谓词都针对同一真实恒等实现，且独立于选择哪种候选解释而为真；组合其单元素模型。

<a id="line-code-leanified-corereader-choice-lean-198"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:198 --> **L198** 定义 priorityArticulation。把身份事实、对应理由及全范围保存成非空表达。

<a id="line-code-leanified-corereader-choice-lean-199"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:199 --> **L199** 以 statusFacts 为前提理论，表述优先权与真实地位概念。

<a id="line-code-leanified-corereader-choice-lean-200"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:200 --> **L200** 把相同真实惯常与既有事实列为所表述理由。

<a id="line-code-leanified-corereader-choice-lean-201"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:201 --> **L201** 对该地位优先权表述使用不受限候选范围。

<a id="line-code-leanified-corereader-choice-lean-203"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:203 --> **L203** 说明 AssessmentAccurate 的预定范围。对应声明涉及：报告为真恰好对应身份事实蕴涵优先选择的语义结论。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-204"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:204 --> **L204** 定义 AssessmentAccurate。报告为真恰好对应身份事实蕴涵优先选择的语义结论。

<a id="line-code-leanified-corereader-choice-lean-205"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:205 --> **L205** 以 report=true 与这些地位事实语义蕴含该准确优先权问题之间的等价，定义报告准确性。

<a id="line-code-leanified-corereader-choice-lean-207"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:207 --> **L207** 陈述经检查的结果 statusDoesNotEntailPriority。以successor为身份事实的反模型，拒绝推出必须选择identity。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-choice-lean-208"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:208 --> **L208** 假定真实地位事实在全部候选解释中蕴含恒等优先权。

<a id="line-code-leanified-corereader-choice-lean-209"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:209 --> **L209** 将假定的地位到优先权蕴含应用于 successor；它满足全部相同真实地位事实，却不是 identity。

<a id="line-code-leanified-corereader-choice-lean-210"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:210 --> **L210** 不同候选构造子否定在 successor 处推出的优先权等式。

<a id="line-code-leanified-corereader-choice-lean-212"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:212 --> **L212** 陈述经检查的结果 statusAssessmentNonEntailment。保留原事实反模型：身份事实可表达且被准确评估，但不蕴涵恒等优先。

<a id="line-code-leanified-corereader-choice-lean-213"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:213 --> **L213** 要求同一地位优先权评估具有程序表述与正确否定报告。

<a id="line-code-leanified-corereader-choice-lean-214"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:214 --> **L214** 保留所有候选解释为相同真实地位事实的模型。

<a id="line-code-leanified-corereader-choice-lean-215"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:215 --> **L215** 优先权谓词在 identity 处成立，在 successor 处失败。

<a id="line-code-leanified-corereader-choice-lean-216"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:216 --> **L216** 否定仅由地位事实蕴含该优先权谓词。

<a id="line-code-leanified-corereader-choice-lean-217"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:217 --> **L217** 还拒绝只以既有地位作为真实理由选择恒等实现。

<a id="line-code-leanified-corereader-choice-lean-218"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:218 --> **L218** 检查 priorityArticulation 具有非空概念与真实地位理由。

<a id="line-code-leanified-corereader-choice-lean-219"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:219 --> **L219** 证明 false 报告准确：它不可能等于 true；任意蕴含假设又与真实 successor 反模型矛盾。

<a id="line-code-leanified-corereader-choice-lean-220"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:220 --> **L220** 保留两个候选对相同事实的模型、identity 而非 successor 的优先权，以及已证的蕴含失败。

<a id="line-code-leanified-corereader-choice-lean-221"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:221 --> **L221** 对唯一理由为既有地位的明确恒等选择，复用一般的仅凭地位失败定理。

<a id="line-code-leanified-corereader-choice-lean-223"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:223 --> **L223** 说明 PriorityAssessment 的预定范围。对应声明涉及：独立于选择政策保存实际假设、问题及布尔评估报告。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-224"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:224 --> **L224** 声明数据接口 PriorityAssessment。独立于选择政策保存实际假设、问题及布尔评估报告。

<a id="line-code-leanified-corereader-choice-lean-225"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:225 --> **L225** 保存该评估实际审查的前提理论。

<a id="line-code-leanified-corereader-choice-lean-226"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:226 --> **L226** 保存待评估其蕴含的准确优先权主张。

<a id="line-code-leanified-corereader-choice-lean-227"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:227 --> **L227** 保存报告的布尔答案，与事实及问题分开。

<a id="line-code-leanified-corereader-choice-lean-228"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:228 --> **L228** 说明 PriorityAssessment.accurate 的预定范围。对应声明涉及：要求报告精确对应同一假设和问题的语义蕴涵结果。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-229"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:229 --> **L229** 定义 PriorityAssessment.accurate。要求报告精确对应同一假设和问题的语义蕴涵结果。

<a id="line-code-leanified-corereader-choice-lean-230"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:230 --> **L230** 要求该评估真实报告与其自身前提到自身问题的蕴含准确一致。

<a id="line-code-leanified-corereader-choice-lean-231"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:231 --> **L231** 说明 statusPriorityAudit 的预定范围。对应声明涉及：为固定身份事实与优先问题记录不蕴涵报告。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-232"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:232 --> **L232** 定义 statusPriorityAudit。为固定身份事实与优先问题记录不蕴涵报告。

<a id="line-code-leanified-corereader-choice-lean-233"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:233 --> **L233** 说明 ChoicePolicy 的预定范围。对应声明涉及：把所选候选、优先理由和独立储存的评估分开。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-234"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:234 --> **L234** 声明数据接口 ChoicePolicy。把所选候选、优先理由和独立储存的评估分开。

<a id="line-code-leanified-corereader-choice-lean-235"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:235 --> **L235** 保存该政策实际选择的候选。

<a id="line-code-leanified-corereader-choice-lean-236"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:236 --> **L236** 独立于评估记录保存该政策真实优先权理由。

<a id="line-code-leanified-corereader-choice-lean-237"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:237 --> **L237** 保存政策完成其程序的实际评估。

<a id="line-code-leanified-corereader-choice-lean-238"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:238 --> **L238** 说明 GeneralAssessmentFulfilled 的预定范围。对应声明涉及：要求实际表达非空并保留准确身份审查，不加入额外选择标准。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-239"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:239 --> **L239** 定义 GeneralAssessmentFulfilled。要求实际表达非空并保留准确身份审查，不加入额外选择标准。

<a id="line-code-leanified-corereader-choice-lean-240"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:240 --> **L240** 要求非空表述、恰为共享 statusPriorityAudit 及其准确性；这是特定程序履行，不是完整哲学 Grounds。

<a id="line-code-leanified-corereader-choice-lean-241"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:241 --> **L241** 说明 AdditionalChoiceNorm 的预定范围。对应声明涉及：把单独的可行性及相关性规范应用到政策所选实现和理由。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-242"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:242 --> **L242** 定义 AdditionalChoiceNorm。把单独的可行性及相关性规范应用到政策所选实现和理由。

<a id="line-code-leanified-corereader-choice-lean-243"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:243 --> **L243** 把 JustifiedChoice 单独应用于政策实际所选实现及真实理由列表。

<a id="line-code-leanified-corereader-choice-lean-244"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:244 --> **L244** 说明 statusPriorityPolicy 的预定范围。对应声明涉及：政策只凭既有地位选择恒等，同时保留准确的不蕴涵评估。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-245"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:245 --> **L245** 定义 statusPriorityPolicy。政策只凭既有地位选择恒等，同时保留准确的不蕴涵评估。

<a id="line-code-leanified-corereader-choice-lean-246"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:246 --> **L246** 说明 outputPriorityPolicy 的预定范围。对应声明涉及：保留同一选择和评估，把理由改为实际输出理由。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-247"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:247 --> **L247** 定义 outputPriorityPolicy。保留同一选择和评估，把理由改为实际输出理由。

<a id="line-code-leanified-corereader-choice-lean-248"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:248 --> **L248** 说明 statusPriorityAuditAccurate 的预定范围。对应声明涉及：利用后继反模型证明所记不蕴涵报告准确。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-249"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:249 --> **L249** 陈述经检查的结果 statusPriorityAuditAccurate。利用后继反模型证明所记不蕴涵报告准确。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-choice-lean-250"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:250 --> **L250** 把否定审查的准确性拆为与蕴含等价的两个方向。

<a id="line-code-leanified-corereader-choice-lean-251"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:251 --> **L251** 审查的实际 false 报告不可能等于 true，因此该方向的前提不可能成立。

<a id="line-code-leanified-corereader-choice-lean-252"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:252 --> **L252** 任何所断言的蕴含都与 statusDoesNotEntailPriority 矛盾，从而确立 false 报告准确性的反方向。

<a id="line-code-leanified-corereader-choice-lean-253"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:253 --> **L253** 说明 PolicyIndependenceExample 的预定范围。对应声明涉及：要求同选择同审查而理由不同的两政策，均履行所表示评估责任，只有输出理由政策满足额外规范。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-254"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:254 --> **L254** 定义 PolicyIndependenceExample。要求同选择同审查而理由不同的两政策，均履行所表示评估责任，只有输出理由政策满足额外规范。

<a id="line-code-leanified-corereader-choice-lean-255"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:255 --> **L255** 固定两个政策所选候选相同。

<a id="line-code-leanified-corereader-choice-lean-256"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:256 --> **L256** 固定两个政策采用同一实际评估。

<a id="line-code-leanified-corereader-choice-lean-257"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:257 --> **L257** 把该评估前提绑定到真实共享 statusFacts。

<a id="line-code-leanified-corereader-choice-lean-258"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:258 --> **L258** 把其问题绑定到同一 priorityClaim。

<a id="line-code-leanified-corereader-choice-lean-259"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:259 --> **L259** 把共同报告固定为 false，不允许政策变化改变审查答案。

<a id="line-code-leanified-corereader-choice-lean-260"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:260 --> **L260** 为每个候选解释保留相同评估前提的模型。

<a id="line-code-leanified-corereader-choice-lean-261"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:261 --> **L261** 尽管候选与审查相同，仍要求实际优先权理由列表不同。

<a id="line-code-leanified-corereader-choice-lean-262"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:262 --> **L262** 要求两个政策准确完成同一指定评估程序。

<a id="line-code-leanified-corereader-choice-lean-263"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:263 --> **L263** 要求额外选择规范下结果相反：地位失败、输出通过。

<a id="line-code-leanified-corereader-choice-lean-264"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:264 --> **L264** 说明 policyIndependenceExample 的预定范围。对应声明涉及：构造两个独立政策对象，结合真实审查准确性、身份理由拒绝和输出理由成立。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-265"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:265 --> **L265** 陈述经检查的结果 policyIndependenceExample。构造两个独立政策对象，结合真实审查准确性、身份理由拒绝和输出理由成立。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-choice-lean-266"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:266 --> **L266** 为两个政策构造同一个关于真实地位优先权问题的非空表述。

<a id="line-code-leanified-corereader-choice-lean-267"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:267 --> **L267** 为两个政策构造同一个关于真实地位优先权问题的非空表述。

<a id="line-code-leanified-corereader-choice-lean-268"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:268 --> **L268** 固定相同所选候选、审查、前提、问题与 false 报告；保留真实事实模型，留下理由列表差异。

<a id="line-code-leanified-corereader-choice-lean-269"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:269 --> **L269** 证明仅凭地位的政策完成了这一确切、具有表述且报告在数学上准确的审查。

<a id="line-code-leanified-corereader-choice-lean-270"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:270 --> **L270** 给输出政策提供同样已履行的审查，留下两个分别的额外选择规范结果。

<a id="line-code-leanified-corereader-choice-lean-271"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:271 --> **L271** 计算仅凭地位与基于输出的优先权理由列表不同，尽管所选候选与审查相同。

<a id="line-code-leanified-corereader-choice-lean-272"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:272 --> **L272** 把 statusOnlyFails 应用于实际地位政策的优先权理由，证明其未满足 AdditionalChoiceNorm。

<a id="line-code-leanified-corereader-choice-lean-273"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:273 --> **L273** 对输出政策实际相关的输出理由使用 identityJustified，证明其满足 AdditionalChoiceNorm。

<a id="line-code-leanified-corereader-choice-lean-275"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:275 --> **L275** 说明 generalGroundsNotChoice 的预定范围。对应声明涉及：将事实非蕴涵与独立政策层反例组合，表明所表示一般评估责任不推出额外选择规范。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-276"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:276 --> **L276** 说明 generalGroundsNotChoice 的预定范围。对应声明涉及：将事实非蕴涵与独立政策层反例组合，表明所表示一般评估责任不推出额外选择规范。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-choice-lean-277"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:277 --> **L277** 开始 CoreReader.Choice.generalGroundsNotChoice 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-choice-lean-278"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:278 --> **L278** 登记来源单元 organon.grounds.implementations#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-279"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:279 --> **L279** 登记来源单元 organon.grounds.implementations#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-280"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:280 --> **L280** 登记来源单元 organon.relationships.roles#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-281"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:281 --> **L281** 登记来源单元 organon.relationships.roles#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-282"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:282 --> **L282** 登记来源单元 organon.relationships.roles#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-choice-lean-283"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:283 --> **L283** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-choice-lean-284"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:284 --> **L284** 陈述经检查的结果 generalGroundsNotChoice。将事实非蕴涵与独立政策层反例组合，表明所表示一般评估责任不推出额外选择规范。

<a id="line-code-leanified-corereader-choice-lean-285"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:285 --> **L285** 将原有具有表述且准确否定的地位评估保留为登记结果的一部分。

<a id="line-code-leanified-corereader-choice-lean-286"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:286 --> **L286** 保留每个候选都满足的相同真实地位前提。

<a id="line-code-leanified-corereader-choice-lean-287"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:287 --> **L287** 保留 identity 优先权为真、successor 优先权为假。

<a id="line-code-leanified-corereader-choice-lean-288"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:288 --> **L288** 保留已展示的地位到优先权非蕴含。

<a id="line-code-leanified-corereader-choice-lean-289"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:289 --> **L289** 保留仅凭地位的选择失败，再与更强的政策独立变化实例结合。

<a id="line-code-leanified-corereader-choice-lean-290"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:290 --> **L290** 通过 PolicyIndependenceExample 纳入真实政策变化，而不停留于地位非蕴含。

<a id="line-code-leanified-corereader-choice-lean-291"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:291 --> **L291** 把保留的地位非蕴含证明与 policyIndependenceExample 组合，使登记定理包含真实独立的优先权理由变化。

<a id="line-code-leanified-corereader-choice-lean-293"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:293 --> **L293** 关闭命名空间 CoreReader.Choice；这不增加证明或前提。

<a id="code-leanified-corereader-evidence-lean"></a>
### `leanified/CoreReader/Evidence.lean`

<!-- lean-code leanified/CoreReader/Evidence.lean -->
```lean
import CoreReader.Logic
import CoreReader.Agency

namespace CoreReader.Evidence
open CoreReader.Logic
open CoreReader.Agency

/- An observation records the outcome of a specified test on the represented world. -/
structure Record (W : Type) where
  test : W → Bool
  observed : Bool
/- Compatible worlds reproduce the actual contents of every recorded observation. -/
def Compatible {W : Type} (records : List (Record W)) (w : W) : Prop :=
  ∀ r, r ∈ records → r.test w = r.observed
/- Inferential support requires the same claim in every evidence-compatible world. -/
def Supports {W : Type} (records : List (Record W)) (claim : Claim W) : Prop :=
  ∀ w, Compatible records w → claim w
/- Articulation identifies concepts, premises, reason contents and an application limit. -/
structure Articulation (W : Type) where
  concepts : List String
  assumptions : Theory W
  reasons : List (Claim W)
  limits : Claim W
/- Nonempty identifiable concepts and reasons are procedural articulation requirements. -/
def Articulated {W : Type} (a : Articulation W) : Prop :=
  a.concepts ≠ [] ∧ a.reasons ≠ []
/- This application model interprets an adopted option through its actual outcomes and stated goals/constraints. -/
structure ValuePosition (W : Type) where
  Position : Type
  Outcome : Type
  adopted : Position
  selected : W → Position
  outcome : W → Position → Outcome
  objective : Outcome → Prop
  constraints : W → Position → Prop
  starting : Theory W
  reasons : List (W → Position → Prop)
  limits : Claim W
  relevantCriticism : Claim W
  response : W → Option String
/- The adopted position's claim is derived from the same selected option used by the outcome interpretation. -/
def ValuePosition.commitment {W : Type} (v : ValuePosition W) : Claim W :=
  fun w => v.selected w = v.adopted
/- Assessed consequences concern this adopted option's actual outcome, objective and constraints. -/
def ValuePosition.consequence {W : Type} (v : ValuePosition W) : Claim W :=
  fun w => v.objective (v.outcome w v.adopted) ∧ v.constraints w v.adopted
/- Articulated reasons specialize the actual option-indexed premises to the adopted option. -/
def ValuePosition.activeReasons {W : Type} (v : ValuePosition W) : List (Claim W) :=
  v.reasons.map (fun reason w => reason w v.adopted)
/- A joint witness excludes inconsistent starts and impossible adoption states. -/
def JointAdoption {W : Type} (v : ValuePosition W) : Prop :=
  ∃ w, Models v.starting w ∧ v.limits w ∧ v.commitment w ∧
    ∀ reason, reason ∈ v.reasons → reason w v.adopted
/- This declared option/outcome adapter checks joint reasons for an assessed consequence; it is not a necessary deductive form for all value justification. -/
def ValueProcedure {W : Type} (v : ValuePosition W) : Prop :=
  v.reasons ≠ [] ∧ JointAdoption v ∧
  (∀ w, Models v.starting w → v.limits w →
    (∀ reason, reason ∈ v.reasons → reason w v.adopted) → v.consequence w) ∧
  (∀ w, v.limits w → v.relevantCriticism w → ∃ answer, v.response w = some answer ∧ answer ≠ "")
/- A facet carries its specific contents; several different facets can have the same conclusion. -/
inductive Facet (W : Type) where
  | empirical (records : List (Record W)) (scope conclusion uncertainty : Claim W)
  | inferential (assumptions : Theory W) (conclusion : Claim W)
  | value (position : ValuePosition W)
/- The claim referred to by each assessment facet is explicit. -/
def Facet.claim {W : Type} : Facet W → Claim W
  | .empirical _ _ p _ => p
  | .inferential _ p => p
  | .value v => v.commitment
/- These disclosed semantic adapters implement selected nature-specific checks; passing them does not establish all real empirical or value adequacy. -/
def FacetDischarged {W : Type} : Facet W → Prop
  | .empirical records scope p uncertainty =>
      (∃ w, Compatible records w ∧ scope w) ∧
      Supports records (fun w => scope w → p w) ∧ Supports records uncertainty
  | .inferential assumptions p => Satisfiable assumptions ∧ Entails assumptions p
  | .value v => ValueProcedure v
/- This model's semantic adapter identifies the actual assumptions, reason content and limit of a facet. -/
def FacetArticulated {W : Type} (a : Articulation W) : Facet W → Prop
  | .empirical records scope _ _ =>
      a.assumptions = singleton (Compatible records) ∧ a.reasons = [Compatible records] ∧ a.limits = scope
  | .inferential assumptions _ =>
      a.assumptions = assumptions ∧ a.reasons = [Models assumptions] ∧ a.limits = (fun _ => True)
  | .value v => a.assumptions = v.starting ∧ a.reasons = v.activeReasons ∧ a.limits = v.limits
/- A canonical articulation exposes this adapter; the source does not mandate this particular representation of grounds. -/
def canonicalArticulation {W : Type} : Facet W → Articulation W
  | .empirical records scope _ _ =>
      ⟨["recorded test outcomes", "observation conditions"], singleton (Compatible records), [Compatible records], scope⟩
  | .inferential assumptions _ =>
      ⟨["stated assumptions", "semantic consequence"], assumptions, [Models assumptions], fun _ => True⟩
  | .value v =>
      ⟨["adopted position", "reasons and consequences"], v.starting, v.activeReasons, v.limits⟩
/- Canonical articulation is connected to the very facet whose grounds it identifies. -/
theorem canonicalFacetArticulated {W : Type} (f : Facet W) :
    FacetArticulated (canonicalArticulation f) f := by
  cases f <;> exact ⟨rfl, rfl, rfl⟩
/- A discharged facet has nonempty canonical reason articulation, including the value procedure's reason requirement. -/
theorem canonicalArticulated {W : Type} (f : Facet W) (h : FacetDischarged f) :
    Articulated (canonicalArticulation f) := by
  cases f with
  | empirical records scope p uncertainty => simp [Articulated, canonicalArticulation]
  | inferential assumptions p => simp [Articulated, canonicalArticulation]
  | value v =>
      refine ⟨by simp [canonicalArticulation], ?_⟩
      simpa [canonicalArticulation, ValuePosition.activeReasons] using h.1
/- This model of the Grounds obligation binds each actual facet to its claim and articulation. Its disclosed FacetDischarged adapters do not replace all source-level assessment responsibilities or prove real adequacy. -/
/-- organon-map CoreReader.Evidence.Grounds
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
def Grounds {W : Type} (claim : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
  facets ≠ [] ∧ (∀ facet, actualApplicable facet → facet ∈ facets) ∧
  ∀ facet, facet ∈ facets → facet.claim = claim ∧ Articulated (articulations facet) ∧
    FacetArticulated (articulations facet) facet ∧ FacetDischarged facet
/- The achievement obligation requires grounds for this very claim, without making observation a universal prerequisite. -/
/-- organon-map CoreReader.Evidence.AchievementAccountability
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
def AchievementAccountability {W : Type} (achievement : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
  Grounds achievement articulations actualApplicable facets
/- The concrete achievement claim refers to each transition's own before/after states. -/
def transitionAchievement : Claim TransitionCase :=
  fun transition => Expanded (transitionBefore transition) (transitionAfter transition)
/- This observation inspects an actually constructed successor and its output under that transition's input condition. -/
def transitionPerformanceRecord : Record TransitionCase :=
  ⟨fun transition => (transitionAfter transition).constructed.any
    (fun operation => operation == .successor && decide (operation.run (transitionInput transition) = 1)), true⟩
/- The positive report test reads its asserted operation, input and output; it does not verify their presence in the after-state. -/
def transitionReportRecord : Record TransitionCase :=
  ⟨fun transition =>
    let report := transitionAnnouncement transition
    report.reportedNewOperation == .successor && report.input == 0 && report.expectedOutput == 1, true⟩
/- Only the genuine extension matches the operation/performance observation in this two-transition model. -/
theorem transitionPerformanceCompatible :
    ∀ transition, Compatible [transitionPerformanceRecord] transition ↔ transition = .extend := by
  intro transition
  constructor
  · intro h
    have observed := h transitionPerformanceRecord (List.mem_singleton.mpr rfl)
    cases transition
    · cases observed
    · rfl
  · intro h; cases h
    intro record hr; have hr' := List.mem_singleton.mp hr; subst record
    rfl
/- A compatible performance observation establishes the same transition's report content and hence its represented expansion. -/
theorem transitionSupported : Supports [transitionPerformanceRecord] transitionAchievement := by
  intro transition compatible
  have h := (transitionPerformanceCompatible transition).1 compatible
  subst transition
  have reportTrue : (transitionAnnouncement .extend).claim := by
    simp [transitionAnnouncement, transitionAfter, transitionInput,
      Announcement.claim, GeneratingSystem.report, generatingSystem, extendedState, baseState, Operation.run]
  exact announcementClaimImpliesExpansion _ reportTrue
/- The actual scope is the shared input-zero condition, with no probabilistic inference introduced. -/
def transitionFacet : Facet TransitionCase :=
  .empirical [transitionPerformanceRecord] (fun transition => transitionInput transition = 0)
    transitionAchievement (fun _ => True)
/- The empirical assessment has a real compatible witness and supports this scoped achievement. -/
theorem transitionFacetDischarged : FacetDischarged transitionFacet := by
  refine ⟨⟨.extend, (transitionPerformanceCompatible _).2 rfl, rfl⟩, ?_, ?_⟩
  · intro transition compatible _; exact transitionSupported transition compatible
  · intro _ _; trivial
/- Every applicable facet of this specified achievement has matching articulation and actual discharged evidence. -/
theorem transitionAccountable :
    AchievementAccountability transitionAchievement canonicalArticulation
      (fun facet => facet = transitionFacet) [transitionFacet] := by
  refine ⟨by simp, ?_, ?_⟩
  · intro facet hf; subst facet; exact List.mem_singleton.mpr rfl
  · intro facet hf; have hf' := List.mem_singleton.mp hf; subst facet
    exact ⟨rfl, canonicalArticulated _ transitionFacetDischarged,
      canonicalFacetArticulated _, transitionFacetDischarged⟩
/- Both actual transitions issue the same positive report about their own identified state pair. -/
theorem transitionReportCompatible (transition : TransitionCase) :
    Compatible [transitionReportRecord] transition := by
  intro record hr; have hr' := List.mem_singleton.mp hr; subst record
  rfl
/- Inflation is a concrete report-compatible counterworld, so the positive report alone does not support the same achievement claim. -/
theorem transitionReportDoesNotSupport :
    Compatible [transitionReportRecord] .inflate ∧ ¬ transitionAchievement .inflate ∧
    ¬ Supports [transitionReportRecord] transitionAchievement := by
  have noExpansion : ¬ transitionAchievement .inflate := by
    simp [transitionAchievement, transitionBefore, transitionAfter, Expanded, baseState, inflatedState]
  exact ⟨transitionReportCompatible _, noExpansion, fun h => noExpansion (h _ (transitionReportCompatible _))⟩
/- These concrete obligations, positive evidence and negative report case all refer to the same state-pair and input semantics. -/
def ConcreteAchievementExample : Prop :=
  AchievementAccountability transitionAchievement canonicalArticulation
    (fun facet => facet = transitionFacet) [transitionFacet] ∧
  Compatible [transitionPerformanceRecord] .extend ∧
  Supports [transitionPerformanceRecord] transitionAchievement ∧ transitionAchievement .extend ∧
  (Compatible [transitionReportRecord] .inflate ∧ ¬ transitionAchievement .inflate ∧
    ¬ Supports [transitionReportRecord] transitionAchievement) ∧
  (∀ transition, (transitionAnnouncement transition).before = transitionBefore transition ∧
    (transitionAnnouncement transition).after = transitionAfter transition ∧
    (transitionAnnouncement transition).input = transitionInput transition ∧ transitionInput transition = 0)
/- The concrete example jointly inhabits accountability, evidence compatibility, actual gain, and the report-only countermodel. -/
theorem concreteAchievementExample : ConcreteAchievementExample := by
  refine ⟨transitionAccountable, (transitionPerformanceCompatible _).2 rfl, transitionSupported,
    transitionSupported .extend ((transitionPerformanceCompatible _).2 rfl),
    transitionReportDoesNotSupport, ?_⟩
  intro transition; exact ⟨rfl,rfl,rfl,rfl⟩
/- Semantic evidence yields truth only at a world that actually satisfies those evidence conditions. -/
/-- organon-map CoreReader.Evidence.achievementNeedsSupport
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem achievementNeedsSupport {W : Type} (achievement : Claim W) (records : List (Record W))
    (actual : W) (reliableHere : Compatible records actual) (support : Supports records achievement) :
    achievement actual ∧ ConcreteAchievementExample :=
  ⟨support actual reliableHere, concreteAchievementExample⟩
/- Weakening a conclusion preserves support; this makes no claim about weakening the evidence. -/
/-- organon-map CoreReader.Evidence.supportWeakening
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem supportWeakening {W : Type} (records : List (Record W)) (p q : Claim W)
    (support : Supports records p) (weaker : ∀ w, p w → q w) : Supports records q :=
  fun w hw => weaker w (support w hw)
/- Discarding the only informative observation loses support for the unchanged switch claim. -/
theorem evidenceWeakeningCanLoseSupport :
    Supports ([⟨id, true⟩] : List (Record Bool)) (fun w => w = true) ∧
    ¬ Supports ([] : List (Record Bool)) (fun w => w = true) := by
  refine ⟨?_, ?_⟩
  · intro w hw; exact hw ⟨id,true⟩ (by simp)
  · intro h; have bad := h false (by intro r hr; cases hr); cases bad
/- Restricting the quantified application domain preserves a supported universal conclusion. -/
/-- organon-map CoreReader.Evidence.scopeRestriction
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem scopeRestriction {W X : Type} (records : List (Record W)) (p : W → X → Prop)
    (wide narrow : X → Prop) (included : ∀ x, narrow x → wide x)
    (support : Supports records (fun w => ∀ x, wide x → p w x)) :
    Supports records (fun w => ∀ x, narrow x → p w x) :=
  fun w hw x hx => support w hw x (included x hx)
/- Actual applicability, rather than an optional classifier label, determines facet responsibility. -/
def Duties {W : Type} (applicable : Facet W → Prop) : Prop :=
  ∀ f, applicable f → FacetDischarged f
def LabeledDuties {W : Type} (_labels : List String) (applicable : Facet W → Prop) : Prop :=
  Duties applicable
/- Combining applicable facets requires both sets of substantive duties. -/
/-- organon-map CoreReader.Evidence.assessmentUnion
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem assessmentUnion {W : Type} (a b : Facet W → Prop) :
    Duties (fun f => a f ∨ b f) ↔ Duties a ∧ Duties b := by
  constructor
  · intro h; exact ⟨fun f hf => h f (Or.inl hf), fun f hf => h f (Or.inr hf)⟩
  · rintro ⟨ha,hb⟩ f (hf|hf); exact ha f hf; exact hb f hf
/- Omitting or changing labels does not remove an applicable duty. -/
/-- organon-map CoreReader.Evidence.labelsCannotWaive
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem labelsCannotWaive {W : Type} (xs ys : List String) (a : Facet W → Prop) :
    LabeledDuties xs a ↔ LabeledDuties ys a := Iff.rfl
/- The observed switch is the outcome itself, not a record identifier. -/
def switchRecord : Record Bool := ⟨id, true⟩
theorem switchCompatible (w : Bool) : Compatible [switchRecord] w ↔ w = true := by
  constructor
  · intro h; exact h switchRecord (by simp)
  · intro hw r hr; simp only [List.mem_singleton] at hr; cases hr; exact hw
theorem switchSupported : Supports [switchRecord] (fun w : Bool => w = true) :=
  fun w hw => (switchCompatible w).1 hw
/- The candidate action has specific benefit and cost outcomes; its inactive alternative has neither. -/
def optionBenefit (selected : Bool) : Nat := if selected then 4 else 0
def optionCost (selected : Bool) : Nat := if selected then 3 else 0
/- The report describes each option's actual cost and benefit; it does not itself assert which option ought to be selected. -/
def optionReport (selected : Bool) : Prop :=
  optionCost selected ≤ 3 ∧ optionBenefit selected = (if selected then 4 else 0)
/- The on position connects its own selected option to that option's benefit/cost outcome. -/
def switchPosition : ValuePosition Bool where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := id
  outcome := fun _ option => (optionBenefit option, optionCost option)
  objective := fun result => result.2 < result.1
  constraints := fun _ option => optionCost option ≤ 3
  starting := singleton (fun w => w = true)
  reasons := [fun _ option => optionReport option]
  limits := fun _ => True
  relevantCriticism := fun w => w = false
  response := fun w => if w then some "benefit exceeds cost within budget" else some "reconsider if the budget no longer permits this cost"
theorem switchValueProcedure : ValueProcedure switchPosition := by
  refine ⟨by simp [switchPosition], ?_, ?_, ?_⟩
  · refine ⟨true, (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  · intro w _ _ allReasons
    have evidence := allReasons (fun (_ : Bool) (option : Bool) => optionReport option) (List.mem_singleton.mpr rfl)
    change optionReport true at evidence
    have benefitAboveBudget : 3 < optionBenefit true := by rw [evidence.2]; decide
    exact ⟨Nat.lt_of_le_of_lt evidence.1 benefitAboveBudget, evidence.1⟩
  · intro w _ _; cases w <;> simp [switchPosition]
/- Adopting the other option updates the adopted starting state too, so rejection cannot be blamed on an inconsistent start. -/
def oppositePosition : ValuePosition Bool :=
  { switchPosition with adopted := false, starting := singleton (fun w => w = false) }
/- The alternative has a joint adoption witness but its actual zero benefit/cost fails the adopted strict-benefit objective. -/
theorem oppositePositionRejected : JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition := by
  have witness : JointAdoption oppositePosition := by
    refine ⟨false, (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  refine ⟨witness, ?_⟩
  intro h
  have allReasons : ∀ reason, reason ∈ oppositePosition.reasons → reason false oppositePosition.adopted := by
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  have bad := h.2.2.1 false ((modelsSingleton _ _).2 rfl) trivial allReasons
  exact Nat.lt_irrefl 0 bad.1
/- Contradictory starting assumptions and an impossible selected/adopted equality are separate inadmissible variants. -/
def contradictoryStartingPosition : ValuePosition Bool :=
  { switchPosition with starting := singleton (fun _ => False) }
def impossibleAdoptionPosition : ValuePosition Bool :=
  { switchPosition with selected := fun _ => false }
/- The common-world witness rejects both contradiction and an impossible commitment instead of proving them vacuously. -/
theorem inadmissibleValuePositionsRejected :
    ¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition := by
  constructor
  · intro h; obtain ⟨w,hw,_,_,_⟩ := h.2.1
    exact (modelsSingleton _ _).1 hw
  · intro h; obtain ⟨w,_,_,hw,_⟩ := h.2.1
    cases hw
/- Removing the reasons leaves only a position and assertion, which fails this value procedure. -/
def unsupportedPosition : ValuePosition Bool := { switchPosition with reasons := [] }
def switchEmpirical : Facet Bool :=
  .empirical [switchRecord] (fun _ => True) (fun w => w = true) (fun _ => True)
theorem switchEmpiricalDischarged : FacetDischarged switchEmpirical := by
  refine ⟨⟨true, (switchCompatible true).2 rfl, trivial⟩, ?_, ?_⟩
  · intro w hw _; exact switchSupported w hw
  · intro w _; trivial
/- A mixed empirical/value position has actual empirical evidence but still lacks its value-reason duty. -/
/-- organon-map CoreReader.Evidence.mixedMissingResponsibility
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem mixedMissingResponsibility :
    FacetDischarged switchEmpirical ∧
    ¬ LabeledDuties [] (fun f : Facet Bool => f = switchEmpirical ∨ f = .value unsupportedPosition) := by
  refine ⟨switchEmpiricalDischarged, ?_⟩
  intro h
  have bad := (h (.value unsupportedPosition) (Or.inr rfl)).1
  exact bad rfl
/- A fully identified argument may still fail to entail the stated conclusion. -/
def uninformativeArgument : Articulation Bool :=
  ⟨["switch state"], emptyTheory, [fun _ => True], fun _ => True⟩
/-- organon-map CoreReader.Evidence.articulationNotSupport
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem articulationNotSupport : Articulated uninformativeArgument ∧
    ¬ Entails uninformativeArgument.assumptions (fun w : Bool => w = true) := by
  exact ⟨⟨by simp [uninformativeArgument], by simp [uninformativeArgument]⟩,
    consistentIncomplete.2.1⟩
/- Identifiable but unrelated argument fields cannot replace the actual observation grounds under the connected adapter. -/
theorem unrelatedArticulationRejected :
    Articulated uninformativeArgument ∧ FacetDischarged switchEmpirical ∧
    ¬ FacetArticulated uninformativeArgument switchEmpirical := by
  refine ⟨articulationNotSupport.1, switchEmpiricalDischarged, ?_⟩
  intro h
  have relation := congrFun h.1 (Compatible [switchRecord])
  have bad : False := relation.mpr rfl
  exact bad
/- Repetition of the same unrelated temperature observation leaves the switch state undetermined. -/
def temperatureRecord : Record (Bool × Bool) := ⟨Prod.fst, true⟩
theorem temperatureCompatible (b : Bool) :
    Compatible [temperatureRecord, temperatureRecord] (true,b) := by
  intro r hr
  simp at hr
  cases hr
  rfl
/- The world identifies a selected action and its budget; the action costs three units. -/
abbrev BudgetWorld := Bool × Nat
/- A real issued announcement asserts the selected action, but says nothing about affordability. -/
def announcement : String := "activate"
def announcementPosition : ValuePosition BudgetWorld where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := Prod.fst
  outcome := fun _ option => (optionBenefit option, optionCost option)
  objective := fun result => result.2 < result.1
  constraints := fun w option => optionCost option ≤ w.2
  starting := singleton (fun w => w.1 = true)
  reasons := [fun _ option => announcement = (if option then "activate" else "disable")]
  limits := fun _ => True
  relevantCriticism := fun w => w.2 < 3
  response := fun _ => some "reconsider the action when its cost exceeds budget"
/- The zero-budget counterworld satisfies the stated starts, adoption and all announced reasons jointly. -/
theorem announcementHasJointAdoption : JointAdoption announcementPosition := by
  refine ⟨(true,0), (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
  intro reason hr
  have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) :=
    List.mem_singleton.mp hr
  subst reason
  rfl
/- A nonempty announcement remains true in a jointly admissible zero-budget world but cannot support the action's affordability. -/
theorem announcementNotBudgetReason :
    announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
    (∀ reason, reason ∈ announcementPosition.reasons → reason (true,0) announcementPosition.adopted) ∧
    ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition := by
  refine ⟨by simp [announcementPosition], rfl, ?_, (by intro h; cases h.2), ?_⟩
  · intro reason hr
    have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) := List.mem_singleton.mp hr
    subst reason
    rfl
  · intro h
    have allReasons : ∀ reason, reason ∈ announcementPosition.reasons → reason (true,0) announcementPosition.adopted := by
      intro reason hr
      have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) := List.mem_singleton.mp hr
      subst reason
      rfl
    have bad := h.2.2.1 (true,0) ((modelsSingleton _ _).2 rfl) trivial allReasons
    cases bad.2
/- A repeated actual selection observation contains no budget information. -/
def actionRecord : Record BudgetWorld := ⟨Prod.fst, true⟩
theorem actionCompatible (budget : Nat) : Compatible [actionRecord, actionRecord] (true,budget) := by
  intro r hr; simp at hr; cases hr; rfl
/- Single and repeated irrelevant observations cannot establish the other outcome or the same action's budget adequacy. -/
/-- organon-map CoreReader.Evidence.measurementRepeatNotSupport
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem measurementRepeatNotSupport :
    temperatureRecord.test (true,false) = true ∧
    Compatible [temperatureRecord,temperatureRecord] (true,false) ∧
    Compatible [temperatureRecord,temperatureRecord] (true,true) ∧
    ¬ Supports [temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    ¬ Supports [temperatureRecord,temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    Compatible [actionRecord,actionRecord] (true,0) ∧
    Compatible [actionRecord,actionRecord] (true,3) ∧
    ¬ Supports [actionRecord] announcementPosition.consequence ∧
    ¬ Supports [actionRecord,actionRecord] announcementPosition.consequence ∧
    ¬ ValueProcedure announcementPosition := by
  refine ⟨rfl, temperatureCompatible false, temperatureCompatible true, ?_, ?_,
    actionCompatible 0, actionCompatible 3, ?_, ?_, announcementNotBudgetReason.2.2.2.2⟩
  · intro h
    have bad := h (true,false) (by intro r hr; simp only [List.mem_singleton] at hr; cases hr; rfl)
    cases bad
  · intro h; have bad := h (true,false) (temperatureCompatible false); cases bad
  · intro h
    have bad := h (true,0) (by intro r hr; simp only [List.mem_singleton] at hr; cases hr; rfl)
    cases bad.2
  · intro h; have bad := h (true,0) (actionCompatible 0); cases bad.2
/- Missing reason records fail a procedure; independently, a present announcement fails the explicit budget-support criterion. -/
/-- organon-map CoreReader.Evidence.selfAssertionNotReason
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem selfAssertionNotReason :
    (unsupportedPosition.commitment true ∧ ¬ ValueProcedure unsupportedPosition) ∧
    (announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
      ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition) ∧
    JointAdoption announcementPosition :=
  ⟨⟨rfl, fun h => h.1 rfl⟩,
    ⟨announcementNotBudgetReason.1, announcementNotBudgetReason.2.1,
      announcementNotBudgetReason.2.2.2.1, announcementNotBudgetReason.2.2.2.2⟩,
    announcementHasJointAdoption⟩
/- The value procedure is satisfiable although the adopted starting commitment is not entailed by empty facts. -/
/-- organon-map CoreReader.Evidence.valueWithoutSelfProof
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem valueWithoutSelfProof : ValueProcedure switchPosition ∧
    Satisfiable switchPosition.starting ∧
    ¬ Entails (emptyTheory : Theory Bool) switchPosition.commitment ∧
    (JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition) ∧
    (¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition) :=
  ⟨switchValueProcedure, ⟨true, (modelsSingleton _ _).2 rfl⟩, consistentIncomplete.2.1,
    oppositePositionRejected, inadmissibleValuePositionsRejected⟩
/- The world records the selected option and its actual benefit/cost outcomes. -/
abbrev BenefitCostWorld := Bool × (Nat × Nat)
def measuredOutcome (world : BenefitCostWorld) (option : Bool) : Nat × Nat :=
  if option then world.2 else (0,0)
def benefitReason (world : BenefitCostWorld) (option : Bool) : Prop :=
  (measuredOutcome world option).1 = 4
def costReason (world : BenefitCostWorld) (option : Bool) : Prop :=
  (measuredOutcome world option).2 ≤ 3
/- Neither recorded benefit nor recorded cost alone establishes the selected option's joint consequence. -/
def jointReasonPosition : ValuePosition BenefitCostWorld where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := Prod.fst
  outcome := measuredOutcome
  objective := fun result => result.2 < result.1
  constraints := fun world option => (measuredOutcome world option).2 ≤ 3
  starting := singleton (fun world => world.1 = true)
  reasons := [benefitReason, costReason]
  limits := fun _ => True
  relevantCriticism := fun world => 3 < world.2.2
  response := fun _ => some "reassess the option when its cost exceeds the budget"
/- These two content constraints jointly establish the consequence in a nonempty adopted world. -/
theorem jointReasonProcedure : ValueProcedure jointReasonPosition := by
  refine ⟨by simp [jointReasonPosition], ?_, ?_, ?_⟩
  · refine ⟨(true,(4,3)), (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    change reason ∈ [benefitReason,costReason] at hr
    rcases List.mem_cons.mp hr with hr | hr
    · subst reason; rfl
    · have hr' := List.mem_singleton.mp hr
      subst reason
      change 3 ≤ 3; exact Nat.le_refl 3
  · intro world _ _ reasons
    have benefit := reasons benefitReason (by change benefitReason ∈ [benefitReason,costReason]; simp)
    have cost := reasons costReason (by change costReason ∈ [benefitReason,costReason]; simp)
    change (measuredOutcome world true).1 = 4 at benefit
    change (measuredOutcome world true).2 ≤ 3 at cost
    refine ⟨?_, cost⟩
    have bigger : 3 < (measuredOutcome world true).1 := by rw [benefit]; decide
    exact Nat.lt_of_le_of_lt cost bigger
  · intro world _ _
    exact ⟨"reassess the option when its cost exceeds the budget", rfl, by decide⟩
/- Each separate reason has a concrete same-start/limit/adoption counterworld; their conjunction is sufficient. -/
def JointReasonsExample : Prop :=
  ValueProcedure jointReasonPosition ∧
  (Models jointReasonPosition.starting (true,(4,5)) ∧ jointReasonPosition.limits (true,(4,5)) ∧
    jointReasonPosition.commitment (true,(4,5)) ∧ benefitReason (true,(4,5)) true ∧
    ¬ jointReasonPosition.consequence (true,(4,5))) ∧
  (Models jointReasonPosition.starting (true,(0,3)) ∧ jointReasonPosition.limits (true,(0,3)) ∧
    jointReasonPosition.commitment (true,(0,3)) ∧ costReason (true,(0,3)) true ∧
    ¬ jointReasonPosition.consequence (true,(0,3)))
theorem jointReasonsExample : JointReasonsExample := by
  refine ⟨jointReasonProcedure,
    ⟨(modelsSingleton _ _).2 rfl, trivial, rfl, rfl, ?_⟩,
    ⟨(modelsSingleton _ _).2 rfl, trivial, rfl, Nat.le_refl 3, ?_⟩⟩
  · intro h; have bad : 5 ≤ 3 := h.2; omega
  · intro h; have bad : 3 < 0 := h.1; omega
/- Empirical observations, semantic inference and criticism-responsive reasons coexist without a scalar score. -/
/-- organon-map CoreReader.Evidence.heterogeneousReasons
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem heterogeneousReasons :
    FacetDischarged switchEmpirical ∧
    FacetDischarged (Facet.inferential (singleton (fun w : Bool => w = true)) (fun w => w = true)) ∧
    FacetDischarged (Facet.value switchPosition) ∧ JointReasonsExample := by
  refine ⟨switchEmpiricalDischarged, ⟨⟨true, (modelsSingleton _ _).2 rfl⟩, ?_⟩, switchValueProcedure, jointReasonsExample⟩
  intro w hw; exact (modelsSingleton (fun x : Bool => x = true) w).1 hw

/- This local observation checks the actual output on input zero. -/
def zeroRecord : Record (Nat → Bool) := ⟨fun f => f 0, true⟩
def localGenerator (seed : Nat) : Nat → Bool := fun n => n == seed
/- All outputs being true is a stronger, explicitly quantified capability claim. -/
def allTrue : Claim (Nat → Bool) := fun f => ∀ n, f n = true
theorem zeroCompatible (f : Nat → Bool) : Compatible [zeroRecord] f ↔ f 0 = true := by
  constructor
  · intro h; exact h zeroRecord (by simp)
  · intro hf r hr; simp only [List.mem_singleton] at hr; cases hr; exact hf
/- A generating subject owns an earlier predicate and a seed used to revise that actual predicate. -/
structure GeneratingProcess where
  owner : Nat
  prior : Nat → Bool
  generateSeed : Nat
/- The revision preserves prior successes and adds the seed-selected case through the actual generator. -/
def GeneratingProcess.outputRevision (process : GeneratingProcess) : Nat → Bool :=
  fun input => process.prior input || localGenerator process.generateSeed input
/- A produced revision retains its producer and exact old/new objects. -/
structure ProducedRevision where
  producer : Nat
  before : Nat → Bool
  after : Nat → Bool
/- The subject itself constructs the owned before/after revision object. -/
def GeneratingProcess.produce (process : GeneratingProcess) : ProducedRevision :=
  ⟨process.owner, process.prior, process.outputRevision⟩
def sampleGeneratingProcess : GeneratingProcess := ⟨17, fun _ => false, 0⟩
/- This same-owner revision actually changes input zero, while its produced predicate still fails at input one. -/
def OwnedRevisionExample : Prop :=
  sampleGeneratingProcess.produce.producer = sampleGeneratingProcess.owner ∧
  sampleGeneratingProcess.produce.before = sampleGeneratingProcess.prior ∧
  sampleGeneratingProcess.produce.after = sampleGeneratingProcess.outputRevision ∧
  sampleGeneratingProcess.produce.before 0 = false ∧ sampleGeneratingProcess.produce.after 0 = true ∧
  sampleGeneratingProcess.produce.after 1 = false ∧
  Compatible [zeroRecord] sampleGeneratingProcess.produce.after ∧
  ¬ Supports [zeroRecord] allTrue
/- Actual producer/old/new links and the compatible failing revision witness the insufficiency of self-origin. -/
theorem ownedRevisionExample : OwnedRevisionExample := by
  refine ⟨rfl,rfl,rfl,rfl,rfl,rfl,(zeroCompatible _).2 rfl, ?_⟩
  intro h
  have bad := h sampleGeneratingProcess.produce.after ((zeroCompatible _).2 rfl) 1
  cases bad
/- The generator's own sample succeeds, but its generated revision has a concrete unsupported global claim. -/
/-- organon-map CoreReader.Evidence.selfOriginDoesNotSupport
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem selfOriginDoesNotSupport :
    localGenerator 0 0 = true ∧ localGenerator 0 1 = false ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue ∧ OwnedRevisionExample := by
  refine ⟨rfl, rfl, (zeroCompatible _).2 rfl, ?_, ownedRevisionExample⟩
  intro h
  have bad := h (localGenerator 0) ((zeroCompatible _).2 rfl) 1
  cases bad
/- A proper local observation allows both a universally successful and a failing extension. -/
/-- organon-map CoreReader.Evidence.localNotUniversal
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem localNotUniversal :
    (∃ outside : Nat, outside ≠ 0) ∧
    Compatible [zeroRecord] (fun _ => true) ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    allTrue (fun _ => true) ∧ ¬ allTrue (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue := by
  refine ⟨⟨1, by decide⟩, (zeroCompatible _).2 rfl, (zeroCompatible _).2 rfl,
    (fun _ => rfl), ?_, selfOriginDoesNotSupport.2.2.2.1⟩
  intro h; have bad := h 1; cases bad
/- Two implementations agree on the actual observed input and differ on a specified relevant omitted input. -/
/-- organon-map CoreReader.Evidence.hiddenDifference
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem hiddenDifference :
    (∀ n : Nat, n = 0 → (fun _ : Nat => true) n = localGenerator 0 n) ∧
    (fun _ : Nat => true) 1 ≠ localGenerator 0 1 := by
  refine ⟨?_, by decide⟩
  intro n hn; cases hn; rfl
/- One observation supplies only its actual input-specific consequence, without repetition. -/
/-- organon-map CoreReader.Evidence.singleObservation
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem singleObservation : [zeroRecord].length = 1 ∧
    (∃ f, Compatible [zeroRecord] f) ∧
    Supports [zeroRecord] (fun f => f 0 = true) ∧
    ¬ Supports [zeroRecord] allTrue :=
  ⟨rfl, ⟨localGenerator 0, (zeroCompatible _).2 rfl⟩,
    (fun f hf => (zeroCompatible f).1 hf), selfOriginDoesNotSupport.2.2.2.1⟩
/- This inferential assessment derives a successor value from its explicit numeric premise without observation. -/
def arithmeticFacet : Facet Nat := .inferential (singleton (fun n => n = 2)) (fun n => n + 1 = 3)
def usesObservation {W : Type} : Facet W → Bool
  | .empirical _ _ _ _ => true
  | _ => false
/- An actual valid inferential assessment refutes a mandatory measurement/repetition/framework chain. -/
/-- organon-map CoreReader.Evidence.noUniversalChain
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem noUniversalChain : FacetDischarged arithmeticFacet ∧ usesObservation arithmeticFacet = false := by
  refine ⟨⟨⟨2, (modelsSingleton _ _).2 rfl⟩, ?_⟩, rfl⟩
  intro n hn
  have premise := (modelsSingleton (fun x : Nat => x = 2) n).1 hn
  change n + 1 = 3
  rw [premise]
/- A trial has a reproducible setting, an actual outcome and a separately recorded outcome. -/
structure Trial where
  setting : Nat
  actualOutcome : Nat
  recordedOutcome : Nat
/- Verifying a record, reproducing settings and retaining a conclusion are separate predicates. -/
def Verified (t : Trial) : Prop := t.recordedOutcome = t.actualOutcome
def Reproduced (a b : Trial) : Prop := a.setting = b.setting
def Bounded (t : Trial) : Prop := t.actualOutcome ≤ 2
/- Same-setting possible trials can differ while preserving the chosen bound; no probability semantics is claimed. -/
/-- organon-map CoreReader.Evidence.variableOutcomesStableBound
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem variableOutcomesStableBound :
    let a : Trial := ⟨0,1,1⟩
    let b : Trial := ⟨0,2,2⟩
    Reproduced a b ∧ a.actualOutcome ≠ b.actualOutcome ∧ Bounded a ∧ Bounded b := by
  simp [Reproduced, Bounded]
/- Concrete records distinguish record accuracy, condition reproduction and conclusion stability. -/
/-- organon-map CoreReader.Evidence.verificationReproductionStability
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem verificationReproductionStability :
    (Verified ⟨0,1,1⟩ ∧ Verified ⟨1,1,1⟩ ∧ ¬ Reproduced ⟨0,1,1⟩ ⟨1,1,1⟩) ∧
    (Reproduced ⟨0,1,1⟩ ⟨0,3,2⟩ ∧ ¬ Verified ⟨0,3,2⟩ ∧ ¬ Bounded ⟨0,3,2⟩) ∧
    (Bounded ⟨0,1,1⟩ ∧ Bounded ⟨0,2,0⟩ ∧ ¬ Verified ⟨0,2,0⟩) := by
  simp [Verified, Reproduced, Bounded]
/- Explanation certificates are executable syntax for this same arithmetic process. -/
inductive Program where
  | doubleInput
  | constant (value : Nat)
def Program.eval : Program → Nat → Nat
  | .doubleInput, n => n + n
  | .constant value, _ => value
/- A process exposes outputs and an explanation response, whose certificate can be checked against those outputs. -/
structure Process where
  output : Nat → Nat
  explanation : Option Program
/- The output-only application contract checks every relevant input. -/
def OutputContract (p : Process) : Prop := ∀ n, p.output n = n + n
/- The explanation application contract requires a provided certificate faithful to this very process. -/
def ExplanationContract (p : Process) : Prop :=
  ∃ program, p.explanation = some program ∧ ∀ n, program.eval n = p.output n
/- This process produces doubled values but returns no explanatory certificate. -/
def outputOnlyProcess : Process := ⟨fun n => n + n, none⟩
def explainedProcess : Process := ⟨fun n => n + n, some .doubleInput⟩
/- Object scope fixes the very process whose contract is assessed; contract inputs themselves still range over all naturals. -/
def processScope (assessed : Process) : Theory Process :=
  singleton (fun candidate => candidate = assessed)
/- This inferential facet checks an explicit contract under exact process-identity assumptions. -/
def processContractFacet (assessed : Process) (contract : Claim Process) : Facet Process :=
  .inferential (processScope assessed) contract
/- The scope's compatible interpretations are exactly this assessed process, not an unrelated substitute. -/
theorem processScopeModels (assessed candidate : Process) :
    Models (processScope assessed) candidate ↔ candidate = assessed :=
  modelsSingleton (fun process => process = assessed) candidate
/- A concrete contract proof supplies the facet's consequence for its scoped object. -/
theorem processContractDischarged (assessed : Process) (contract : Claim Process) (proof : contract assessed) :
    FacetDischarged (processContractFacet assessed contract) := by
  refine ⟨⟨assessed,(processScopeModels _ _).2 rfl⟩, ?_⟩
  intro candidate hc
  have same := (processScopeModels _ _).1 hc
  subst candidate
  exact proof
/- Scoped capability grounds include exact claim, object-specific assumptions, canonical articulation and actual assessment. -/
def ProcessGrounds (assessed : Process) (contract : Claim Process) : Prop :=
  Grounds contract canonicalArticulation (fun facet => facet = processContractFacet assessed contract)
    [processContractFacet assessed contract]
theorem processGrounds (assessed : Process) (contract : Claim Process) (proof : contract assessed) :
    ProcessGrounds assessed contract := by
  have discharged := processContractDischarged assessed contract proof
  refine ⟨by simp, ?_, ?_⟩
  · intro facet hf; subst facet; exact List.mem_singleton.mpr rfl
  · intro facet hf; have hf' := List.mem_singleton.mp hf; subst facet
    exact ⟨rfl,canonicalArticulated _ discharged,canonicalFacetArticulated _,discharged⟩
/- Universal output correctness here comes from the concrete program definition, not from an assumed capability label. -/
theorem outputCorrectByEvaluation : OutputContract outputOnlyProcess := fun _ => rfl
/- This same process actually returns no explanation certificate. -/
theorem outputOnlyNoExplanation : ¬ ExplanationContract outputOnlyProcess := by
  rintro ⟨program,h,_⟩; cases h
/- The full application contract requires outputs and an explanation of that same process. -/
def FullProcessContract (assessed : Process) : Prop := OutputContract assessed ∧ ExplanationContract assessed
/- Output-only grounds have the assessed process itself as a counterworld to the stronger contract. -/
def OutputContractEvidence : Prop :=
  ProcessGrounds outputOnlyProcess OutputContract ∧
  Models (processScope outputOnlyProcess) outputOnlyProcess ∧
  ¬ Entails (processScope outputOnlyProcess) FullProcessContract
/- Existing output evidence does not supply the absent explanation for the same object and scope. -/
theorem outputContractEvidence : OutputContractEvidence := by
  refine ⟨processGrounds _ _ outputCorrectByEvaluation, (processScopeModels _ _).2 rfl, ?_⟩
  intro stronger
  exact outputOnlyNoExplanation (stronger outputOnlyProcess ((processScopeModels _ _).2 rfl)).2
/- Both actual application contracts have grounds and explicit object scopes; neither scope is empty. -/
def ScopedApplicationEvidence : Prop :=
  ProcessGrounds outputOnlyProcess OutputContract ∧
  ProcessGrounds explainedProcess FullProcessContract ∧
  (∀ candidate, Models (processScope outputOnlyProcess) candidate ↔ candidate = outputOnlyProcess) ∧
  (∀ candidate, Models (processScope explainedProcess) candidate ↔ candidate = explainedProcess) ∧
  Satisfiable (processScope outputOnlyProcess) ∧ Satisfiable (processScope explainedProcess)
/- Concrete evaluation and a faithful double-input certificate establish the two differently scoped contracts. -/
theorem scopedApplicationEvidence : ScopedApplicationEvidence := by
  refine ⟨processGrounds _ _ outputCorrectByEvaluation, processGrounds _ _ ?_,
    processScopeModels _,processScopeModels _,⟨_,(processScopeModels _ _).2 rfl⟩,
    ⟨_,(processScopeModels _ _).2 rfl⟩⟩
  exact ⟨fun _ => rfl,⟨.doubleInput,rfl,fun _ => rfl⟩⟩
/- Universal output correctness does not entail the explanation-requiring contract for the same process. -/
/-- organon-map CoreReader.Evidence.outputNotExplanation
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem outputNotExplanation : OutputContract outputOnlyProcess ∧
    ¬ ExplanationContract outputOnlyProcess ∧ OutputContractEvidence :=
  ⟨outputCorrectByEvaluation, outputOnlyNoExplanation, outputContractEvidence⟩
/- Applications may use distinct contracts, and a faithful certificate can satisfy the stronger one. -/
/-- organon-map CoreReader.Evidence.applicationContractsDiffer
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem applicationContractsDiffer :
    (OutputContract outputOnlyProcess ∧ ¬ (OutputContract outputOnlyProcess ∧ ExplanationContract outputOnlyProcess)) ∧
    (OutputContract explainedProcess ∧ ExplanationContract explainedProcess) ∧
    ScopedApplicationEvidence :=
  ⟨⟨outputCorrectByEvaluation, fun h => outputOnlyNoExplanation h.2⟩,
    ⟨(fun _ => rfl), ⟨.doubleInput, rfl, fun _ => rfl⟩⟩, scopedApplicationEvidence⟩
/- The assessor supplies a mathematical certificate; the process's own explanation response is unnecessary. -/
structure ExternalCertificate (p : Process) where
  assessorId : Nat
  assessedId : Nat
  distinctParticipants : assessorId ≠ assessedId
  outputCorrect : ∀ n, p.output n = n + n
/- The external assessor 42 evaluates the specified process 7; the full output proof is constructed by evaluation. -/
def externalOutputCertificate : ExternalCertificate outputOnlyProcess :=
  ⟨42,7,by decide,fun _ => rfl⟩
/- An external certificate establishes the output contract without producing an internal explanation. -/
/-- organon-map CoreReader.Evidence.externalAssessment
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem externalAssessment :
    (∃ certificate : ExternalCertificate outputOnlyProcess,
      certificate.assessorId = 42 ∧ certificate.assessedId = 7 ∧
      certificate.assessorId ≠ certificate.assessedId ∧ OutputContract outputOnlyProcess) ∧
    ProcessGrounds outputOnlyProcess OutputContract ∧
    ¬ ExplanationContract outputOnlyProcess :=
  ⟨⟨externalOutputCertificate,rfl,rfl,externalOutputCertificate.distinctParticipants,
    externalOutputCertificate.outputCorrect⟩,
    processGrounds outputOnlyProcess OutputContract externalOutputCertificate.outputCorrect,
    outputOnlyNoExplanation⟩
/- This argument records concepts and actual premises for a semantic inference, separately from executable tests. -/
def arithmeticArticulation : Articulation Nat := canonicalArticulation arithmeticFacet
/- A reasoned inferential assessment needs no observation method, while applicable empirical assessment retains observations. -/
/-- organon-map CoreReader.Evidence.nonExecutableAssessment
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem nonExecutableAssessment :
    Grounds (fun n : Nat => n + 1 = 3) canonicalArticulation (fun f => f = arithmeticFacet) [arithmeticFacet] ∧
    usesObservation arithmeticFacet = false ∧
    FacetDischarged switchEmpirical ∧ usesObservation switchEmpirical = true := by
  refine ⟨⟨by simp, (by intro f hf; cases hf; simp), ?_⟩, rfl, switchEmpiricalDischarged, rfl⟩
  intro f hf; simp only [List.mem_singleton] at hf; cases hf
  exact ⟨rfl, canonicalArticulated _ noUniversalChain.1, canonicalFacetArticulated _, noUniversalChain.1⟩

end CoreReader.Evidence
```
<!-- /lean-code leanified/CoreReader/Evidence.lean -->

<a id="line-code-leanified-corereader-evidence-lean-1"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:1 --> **L1** 导入 CoreReader.Logic，使其已检查声明可供本模块使用；这一行不提出新的哲学结论。

<a id="line-code-leanified-corereader-evidence-lean-2"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:2 --> **L2** 导入 CoreReader.Agency，使其已检查声明可供本模块使用；这一行不提出新的哲学结论。

<a id="line-code-leanified-corereader-evidence-lean-4"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:4 --> **L4** 打开命名空间 CoreReader.Evidence，使后续声明获得这一模块限定名。

<a id="line-code-leanified-corereader-evidence-lean-5"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:5 --> **L5** 允许不加限定使用 CoreReader.Logic 中的名称；这改变名称解析，不增加假设。

<a id="line-code-leanified-corereader-evidence-lean-6"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:6 --> **L6** 允许不加限定使用 CoreReader.Agency 中的名称；这改变名称解析，不增加假设。

<a id="line-code-leanified-corereader-evidence-lean-8"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:8 --> **L8** 说明 Record 的预定范围。对应声明涉及：记录给定世界的布尔测试及其记录结果，不包含测量出处或真实性验证。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-9"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:9 --> **L9** 声明数据接口 Record。记录给定世界的布尔测试及其记录结果，不包含测量出处或真实性验证。

<a id="line-code-leanified-corereader-evidence-lean-10"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:10 --> **L10** 保存读取实际被表示世界的指定布尔测试。

<a id="line-code-leanified-corereader-evidence-lean-11"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:11 --> **L11** 保存将与该测试比较的已观测布尔结果。

<a id="line-code-leanified-corereader-evidence-lean-12"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:12 --> **L12** 说明 Compatible 的预定范围。对应声明涉及：每条记录的测试结果都必须与记录值一致；空列表允许任意世界。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-13"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:13 --> **L13** 定义 Compatible。每条记录的测试结果都必须与记录值一致；空列表允许任意世界。

<a id="line-code-leanified-corereader-evidence-lean-14"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:14 --> **L14** 要求每条列出记录在 w 的真实测试等于该记录的观测结果。

<a id="line-code-leanified-corereader-evidence-lean-15"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:15 --> **L15** 说明 Supports 的预定范围。对应声明涉及：主张在所有记录兼容世界成立；这是模型内蕴涵，不是统计置信度。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-16"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:16 --> **L16** 定义 Supports。主张在所有记录兼容世界成立；这是模型内蕴涵，不是统计置信度。

<a id="line-code-leanified-corereader-evidence-lean-17"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:17 --> **L17** 要求同一主张在与全部记录相容的每个世界成立；没有相容世界时，该蕴含本身可能空真。

<a id="line-code-leanified-corereader-evidence-lean-18"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:18 --> **L18** 说明 Articulation 的预定范围。对应声明涉及：保存概念字符串、假设理论、理由列表和限度谓词。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-19"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:19 --> **L19** 声明数据接口 Articulation。保存概念字符串、假设理论、理由列表和限度谓词。

<a id="line-code-leanified-corereader-evidence-lean-20"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:20 --> **L20** 保存可识别概念名称；字符串本身不确立语义充分性。

<a id="line-code-leanified-corereader-evidence-lean-21"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:21 --> **L21** 保存作为表述假设陈述的实际理论。

<a id="line-code-leanified-corereader-evidence-lean-22"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:22 --> **L22** 把理由内容保存为针对同一世界类型的命题。

<a id="line-code-leanified-corereader-evidence-lean-23"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:23 --> **L23** 保存这些理由的真实应用限度谓词。

<a id="line-code-leanified-corereader-evidence-lean-24"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:24 --> **L24** 说明 Articulated 的预定范围。对应声明涉及：只要求概念与理由列表非空，不单独保证相关性或充分性。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-25"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:25 --> **L25** 定义 Articulated。只要求概念与理由列表非空，不单独保证相关性或充分性。

<a id="line-code-leanified-corereader-evidence-lean-26"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:26 --> **L26** 只要求概念与理由列表非空；这一程序条件弱于匹配且已履行的 Grounds。

<a id="line-code-leanified-corereader-evidence-lean-27"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:27 --> **L27** 说明 ValuePosition 的预定范围。对应声明涉及：表示采纳选项、实际选择、选项相关结果及理由、目标、约束、起点、范围和批评响应；这是明示应用适配模型。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-28"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:28 --> **L28** 声明数据接口 ValuePosition。表示采纳选项、实际选择、选项相关结果及理由、目标、约束、起点、范围和批评响应；这是明示应用适配模型。

<a id="line-code-leanified-corereader-evidence-lean-29"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:29 --> **L29** 给出该价值立场从中采纳某一项的选项类型。

<a id="line-code-leanified-corereader-evidence-lean-30"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:30 --> **L30** 给出用于解释各选项效果的后果类型。

<a id="line-code-leanified-corereader-evidence-lean-31"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:31 --> **L31** 规定被采纳的选项，与世界实际选择哪个选项分开。

<a id="line-code-leanified-corereader-evidence-lean-32"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:32 --> **L32** 从各世界读取实际选择的选项。

<a id="line-code-leanified-corereader-evidence-lean-33"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:33 --> **L33** 解释各世界中各选项的真实后果，而不保存任意支持标签。

<a id="line-code-leanified-corereader-evidence-lean-34"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:34 --> **L34** 把被采纳目标规定为后果上的谓词；该字段不证明其价值权威。

<a id="line-code-leanified-corereader-evidence-lean-35"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:35 --> **L35** 规定与目标一同检查、依赖世界和选项的约束。

<a id="line-code-leanified-corereader-evidence-lean-36"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:36 --> **L36** 保存起点理论；JointAdoption 将要求它与采纳及理由具有真实共同模型。

<a id="line-code-leanified-corereader-evidence-lean-37"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:37 --> **L37** 保存同时按世界与选项参数化的理由，因此切换采纳选项会改变受评理由。

<a id="line-code-leanified-corereader-evidence-lean-38"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:38 --> **L38** 规定该价值评估程序主张结论的范围。

<a id="line-code-leanified-corereader-evidence-lean-39"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:39 --> **L39** 识别哪些世界存在相关批评；这是明确的应用谓词。

<a id="line-code-leanified-corereader-evidence-lean-40"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:40 --> **L40** 保存各世界的可选文本回应；回应存在不证明批评已被充分回答。

<a id="line-code-leanified-corereader-evidence-lean-41"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:41 --> **L41** 说明 ValuePosition.commitment 的预定范围。对应声明涉及：承诺主张表示世界选择了所采纳选项，不再是可独立重贴的任意主张字段。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-42"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:42 --> **L42** 定义 ValuePosition.commitment。承诺主张表示世界选择了所采纳选项，不再是可独立重贴的任意主张字段。

<a id="line-code-leanified-corereader-evidence-lean-43"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:43 --> **L43** 通过实际选择等于同一采纳选项，导出承诺主张。

<a id="line-code-leanified-corereader-evidence-lean-44"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:44 --> **L44** 说明 ValuePosition.consequence 的预定范围。对应声明涉及：以目标及约束检查该采纳选项的模型结果。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-45"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:45 --> **L45** 定义 ValuePosition.consequence。以目标及约束检查该采纳选项的模型结果。

<a id="line-code-leanified-corereader-evidence-lean-46"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:46 --> **L46** 根据同一采纳选项的真实后果满足目标及真实约束，导出受评后果。

<a id="line-code-leanified-corereader-evidence-lean-47"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:47 --> **L47** 说明 ValuePosition.activeReasons 的预定范围。对应声明涉及：把每个选项相关理由实例化到采纳选项，用于根据表达。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-48"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:48 --> **L48** 定义 ValuePosition.activeReasons。把每个选项相关理由实例化到采纳选项，用于根据表达。

<a id="line-code-leanified-corereader-evidence-lean-49"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:49 --> **L49** 把每个按选项索引的理由特化到采纳选项，形成其实际表述的世界谓词。

<a id="line-code-leanified-corereader-evidence-lean-50"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:50 --> **L50** 说明 JointAdoption 的预定范围。对应声明涉及：要求存在一个世界，同时满足起点理论、范围、实际采纳及全部该选项理由。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-51"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:51 --> **L51** 定义 JointAdoption。要求存在一个世界，同时满足起点理论、范围、实际采纳及全部该选项理由。

<a id="line-code-leanified-corereader-evidence-lean-52"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:52 --> **L52** 要求起点假设、应用限度与实际采纳具有一个共同世界。

<a id="line-code-leanified-corereader-evidence-lean-53"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:53 --> **L53** 在同一见证处，要求针对该采纳选项的全部列出理由共同成立。

<a id="line-code-leanified-corereader-evidence-lean-54"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:54 --> **L54** 说明 ValueProcedure 的预定范围。对应声明涉及：要求非空理由、联合采纳见证、起点和范围内联合理由支持该选项后果，以及非空批评响应；不证明终极价值正确性。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-55"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:55 --> **L55** 定义 ValueProcedure。要求非空理由、联合采纳见证、起点和范围内联合理由支持该选项后果，以及非空批评响应；不证明终极价值正确性。

<a id="line-code-leanified-corereader-evidence-lean-56"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:56 --> **L56** 以理由非空与完整共同采纳见证开始 ValueProcedure。

<a id="line-code-leanified-corereader-evidence-lean-57"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:57 --> **L57** 对满足真实起点理论与限度的每个世界，施加后续条件后果要求。

<a id="line-code-leanified-corereader-evidence-lean-58"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:58 --> **L58** 用采纳选项的全部理由合取蕴含其真实后果；不要求单条理由充分。

<a id="line-code-leanified-corereader-evidence-lean-59"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:59 --> **L59** 在限度内，每项相关批评必须有指定的非空回应；这里检查回应记录，而非说服力。

<a id="line-code-leanified-corereader-evidence-lean-60"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:60 --> **L60** 说明 Facet 的预定范围。对应声明涉及：区分经验、推论、价值三个面向；同一主张可有多个面向。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-61"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:61 --> **L61** 声明可选构造 Facet。区分经验、推论、价值三个面向；同一主张可有多个面向。

<a id="line-code-leanified-corereader-evidence-lean-62"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:62 --> **L62** 经验方面保存真实测试记录，以及范围、结论与所述不确定性谓词。

<a id="line-code-leanified-corereader-evidence-lean-63"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:63 --> **L63** 推论方面保存真实前提理论及待从中蕴含的结论。

<a id="line-code-leanified-corereader-evidence-lean-64"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:64 --> **L64** 价值方面保存完整的选项与后果立场，包括起点理论、理由、限度及批评回应。

<a id="line-code-leanified-corereader-evidence-lean-65"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:65 --> **L65** 说明 Facet.claim 的预定范围。对应声明涉及：抽取经验或推论结论，价值面向则抽取其立场承诺。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-66"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:66 --> **L66** 定义 Facet.claim。抽取经验或推论结论，价值面向则抽取其立场承诺。

<a id="line-code-leanified-corereader-evidence-lean-67"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:67 --> **L67** 把经验方面自身结论 p 读为主张；记录、范围与不确定性仍为评估输入。

<a id="line-code-leanified-corereader-evidence-lean-68"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:68 --> **L68** 把推论方面自身结论 p 读为主张，与前提理论分开。

<a id="line-code-leanified-corereader-evidence-lean-69"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:69 --> **L69** 价值方面的主张是实际选择等于自身采纳选项，通过 v.commitment 导出。

<a id="line-code-leanified-corereader-evidence-lean-70"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:70 --> **L70** 说明 FacetDischarged 的预定范围。对应声明涉及：经验要求非空范围见证及支持，推论要求假设可满足且蕴涵结论，价值使用声明的程序接口。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-71"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:71 --> **L71** 定义 FacetDischarged。经验要求非空范围见证及支持，推论要求假设可满足且蕴涵结论，价值使用声明的程序接口。

<a id="line-code-leanified-corereader-evidence-lean-72"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:72 --> **L72** 进入经验履行情况，使用该方面真实记录、范围、结论 p 与不确定性谓词。

<a id="line-code-leanified-corereader-evidence-lean-73"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:73 --> **L73** 对经验方面，要求存在与记录相容且在范围内的世界，排除空经验域。

<a id="line-code-leanified-corereader-evidence-lean-74"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:74 --> **L74** 要求记录支持范围内结论及明确规定的不确定性谓词。

<a id="line-code-leanified-corereader-evidence-lean-75"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:75 --> **L75** 推论履行要求真实假设具有非空模型，且同一假设语义蕴含 p。

<a id="line-code-leanified-corereader-evidence-lean-76"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:76 --> **L76** 价值履行恰为同一立场声明的 ValueProcedure，不是终极价值充分性的证明。

<a id="line-code-leanified-corereader-evidence-lean-77"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:77 --> **L77** 说明 FacetArticulated 的预定范围。对应声明涉及：要求表达中的假设、理由和限度与对应面向精确对齐。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-78"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:78 --> **L78** 定义 FacetArticulated。要求表达中的假设、理由和限度与对应面向精确对齐。

<a id="line-code-leanified-corereader-evidence-lean-79"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:79 --> **L79** 在经验表述情况下，读取假设、理由与限度必须匹配的真实记录与范围。

<a id="line-code-leanified-corereader-evidence-lean-80"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:80 --> **L80** 这一经验适配器把表述假设及理由与实际记录相容性等同，并把表述限度与经验范围等同。

<a id="line-code-leanified-corereader-evidence-lean-81"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:81 --> **L81** 在推论情况下，以该方面真实假设理论作为表述参照。

<a id="line-code-leanified-corereader-evidence-lean-82"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:82 --> **L82** 这一推论适配器保留准确前提理论，将其模型条件表述为理由，并使用不受限的附加限度。

<a id="line-code-leanified-corereader-evidence-lean-83"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:83 --> **L83** 要求价值表述准确使用该立场的起点理论、采纳选项有效理由与限度。

<a id="line-code-leanified-corereader-evidence-lean-84"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:84 --> **L84** 说明 canonicalArticulation 的预定范围。对应声明涉及：按面向构造固定概念标签及与该面向对齐的假设、理由和限度。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-85"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:85 --> **L85** 定义 canonicalArticulation。按面向构造固定概念标签及与该面向对齐的假设、理由和限度。

<a id="line-code-leanified-corereader-evidence-lean-86"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:86 --> **L86** 从所选方面真实记录列表与范围构造经验规范表述。

<a id="line-code-leanified-corereader-evidence-lean-87"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:87 --> **L87** 构造命名测试结果与条件的经验表述，以实际相容性主张为前提和理由，原范围为限度。

<a id="line-code-leanified-corereader-evidence-lean-88"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:88 --> **L88** 从该方面真实前提理论构造推论规范表述。

<a id="line-code-leanified-corereader-evidence-lean-89"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:89 --> **L89** 从同一理论及其真实模型谓词构造推论表述，不增加限度。

<a id="line-code-leanified-corereader-evidence-lean-90"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:90 --> **L90** 使用同一完整立场 v 构造价值表述。

<a id="line-code-leanified-corereader-evidence-lean-91"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:91 --> **L91** 从真实起点理论、采纳选项理由与原限度构造价值表述。

<a id="line-code-leanified-corereader-evidence-lean-92"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:92 --> **L92** 说明 canonicalFacetArticulated 的预定范围。对应声明涉及：逐个面向用自反等式证明规范表达与原面向对齐。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-93"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:93 --> **L93** 陈述经检查的结果 canonicalFacetArticulated。逐个面向用自反等式证明规范表达与原面向对齐。

<a id="line-code-leanified-corereader-evidence-lean-94"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:94 --> **L94** 断言规范表述与同一方面具有语义连接；证明检查各方面构造子。

<a id="line-code-leanified-corereader-evidence-lean-95"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:95 --> **L95** 按三个方面构造子分类；各规范表述恰有对应分支要求的假设、理由与限度，三个等式均由自反性成立。

<a id="line-code-leanified-corereader-evidence-lean-96"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:96 --> **L96** 说明 canonicalArticulated 的预定范围。对应声明涉及：由已完成面向证明规范表达的概念与理由非空。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-97"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:97 --> **L97** 陈述经检查的结果 canonicalArticulated。由已完成面向证明规范表达的概念与理由非空。

<a id="line-code-leanified-corereader-evidence-lean-98"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:98 --> **L98** 给定该方面已履行，要求其规范概念与理由非空。

<a id="line-code-leanified-corereader-evidence-lean-99"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:99 --> **L99** 分别检查经验、推论与价值方面的规范表述。

<a id="line-code-leanified-corereader-evidence-lean-100"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:100 --> **L100** 在这一经验或推论分支中，规范概念列表和理由列表明确非空；化简验证两个表述要求。

<a id="line-code-leanified-corereader-evidence-lean-101"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:101 --> **L101** 在这一经验或推论分支中，规范概念列表和理由列表明确非空；化简验证两个表述要求。

<a id="line-code-leanified-corereader-evidence-lean-102"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:102 --> **L102** 在价值分支，前提 h 为 ValueProcedure v；其中理由非空必须确立规范有效理由非空。

<a id="line-code-leanified-corereader-evidence-lean-103"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:103 --> **L103** 对价值方面给出规范概念非空性，留下有效理由列表非空的义务。

<a id="line-code-leanified-corereader-evidence-lean-104"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:104 --> **L104** 利用通过检查的价值程序中的理由非空性；将理由特化到采纳选项保持非空。

<a id="line-code-leanified-corereader-evidence-lean-105"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:105 --> **L105** 说明 Grounds 的预定范围。对应声明涉及：要求非空面向清单、覆盖声明适用面、同一主张、表达对齐及各面向检查；不是现实充分性的统一判定器。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-106"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:106 --> **L106** 开始 CoreReader.Evidence.Grounds 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-107"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:107 --> **L107** 登记来源单元 organon.grounds#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-108"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:108 --> **L108** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-109"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:109 --> **L109** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-110"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:110 --> **L110** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-111"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:111 --> **L111** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-112"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:112 --> **L112** 定义 Grounds。要求非空面向清单、覆盖声明适用面、同一主张、表达对齐及各面向检查；不是现实充分性的统一判定器。

<a id="line-code-leanified-corereader-evidence-lean-113"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:113 --> **L113** 独立于有限列表接收 actualApplicable，使覆盖成为明确义务，而非从列表成员关系推定。

<a id="line-code-leanified-corereader-evidence-lean-114"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:114 --> **L114** 要求方面列表非空，并包含每个满足 actualApplicable 的方面。

<a id="line-code-leanified-corereader-evidence-lean-115"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:115 --> **L115** 对每个列出方面，要求主张准确相同，并有属于该方面的非空表述。

<a id="line-code-leanified-corereader-evidence-lean-116"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:116 --> **L116** 还要求语义匹配真实前提、理由与限度，并通过其声明的适配器履行。

<a id="line-code-leanified-corereader-evidence-lean-117"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:117 --> **L117** 说明 AchievementAccountability 的预定范围。对应声明涉及：将成就主张交给同一Grounds接口，不另提供现实成就证明。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-118"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:118 --> **L118** 开始 CoreReader.Evidence.AchievementAccountability 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-119"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:119 --> **L119** 登记来源单元 organon.charter.self-transcendence.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-120"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:120 --> **L120** 登记来源单元 organon.charter.self-transcendence.limits#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-121"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:121 --> **L121** 登记来源单元 organon.grounds#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-122"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:122 --> **L122** 登记来源单元 organon.grounds.capabilities#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-123"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:123 --> **L123** 登记来源单元 organon.grounds.capabilities#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-124"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:124 --> **L124** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-125"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:125 --> **L125** 定义 AchievementAccountability。将成就主张交给同一Grounds接口，不另提供现实成就证明。

<a id="line-code-leanified-corereader-evidence-lean-126"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:126 --> **L126** 成就问责接收与 Grounds 相同的实际适用性谓词及方面列表。

<a id="line-code-leanified-corereader-evidence-lean-127"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:127 --> **L127** 直接以同一成就主张的 Grounds 定义问责，不增加普遍观测要求。

<a id="line-code-leanified-corereader-evidence-lean-128"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:128 --> **L128** 说明 transitionAchievement 的预定范围。对应声明涉及：把成就定义为同一模型变化前后状态的理解或构造扩展。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-129"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:129 --> **L129** 定义 transitionAchievement。把成就定义为同一模型变化前后状态的理解或构造扩展。

<a id="line-code-leanified-corereader-evidence-lean-130"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:130 --> **L130** 成就主张为所选变化自身前后状态之间的真实扩展。

<a id="line-code-leanified-corereader-evidence-lean-131"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:131 --> **L131** 说明 transitionPerformanceRecord 的预定范围。对应声明涉及：在两个变化模型中，测试同一后状态是否包含在该输入输出一的successor。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-132"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:132 --> **L132** 定义 transitionPerformanceRecord。在两个变化模型中，测试同一后状态是否包含在该输入输出一的successor。

<a id="line-code-leanified-corereader-evidence-lean-133"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:133 --> **L133** 表现测试检查该变化后状态中实际建构的操作。

<a id="line-code-leanified-corereader-evidence-lean-134"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:134 --> **L134** 只有后继操作存在且确实把共同变化输入变为 1 时，测试才记录 true。

<a id="line-code-leanified-corereader-evidence-lean-135"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:135 --> **L135** 说明 transitionReportRecord 的预定范围。对应声明涉及：仅记录报告宣称的操作、输入与输出，不直接记录成就是否实现。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-136"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:136 --> **L136** 定义 transitionReportRecord。仅记录报告宣称的操作、输入与输出，不直接记录成就是否实现。

<a id="line-code-leanified-corereader-evidence-lean-137"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:137 --> **L137** 开始构造一条读取实际变化公告的记录。

<a id="line-code-leanified-corereader-evidence-lean-138"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:138 --> **L138** 把 report 绑定到为同一变化生成的公告。

<a id="line-code-leanified-corereader-evidence-lean-139"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:139 --> **L139** 测试其所述后继操作、输入 0 与预期输出 1；记录积极公告，不据此确定操作存在。

<a id="line-code-leanified-corereader-evidence-lean-140"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:140 --> **L140** 说明 transitionPerformanceCompatible 的预定范围。对应声明涉及：穷尽膨胀与扩展两类，证明实际表现记录识别能力扩展。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-141"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:141 --> **L141** 陈述经检查的结果 transitionPerformanceCompatible。穷尽膨胀与扩展两类，证明实际表现记录识别能力扩展。

<a id="line-code-leanified-corereader-evidence-lean-142"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:142 --> **L142** 主张匹配真实积极表现记录当且仅当所选变化为 extend。

<a id="line-code-leanified-corereader-evidence-lean-143"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:143 --> **L143** 固定任意实际变化 inflate 或 extend，以证明记录相容性等价关系。

<a id="line-code-leanified-corereader-evidence-lean-144"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:144 --> **L144** 证明两个方向：表现相容性推出 extend，extend 则提供相容性。

<a id="line-code-leanified-corereader-evidence-lean-145"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:145 --> **L145** 假定该变化匹配真实积极表现记录。

<a id="line-code-leanified-corereader-evidence-lean-146"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:146 --> **L146** 把相容性应用于真实单元素表现记录，得到该变化的观测测试结果。

<a id="line-code-leanified-corereader-evidence-lean-147"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:147 --> **L147** 把实际变化分为 inflate 与 extend，两者后状态的操作内容不同。

<a id="line-code-leanified-corereader-evidence-lean-148"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:148 --> **L148** inflate 状态缺少后继操作，因此其表现测试不可能等于记录的 true。

<a id="line-code-leanified-corereader-evidence-lean-149"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:149 --> **L149** extend 情况通过自反性满足所需变化身份。

<a id="line-code-leanified-corereader-evidence-lean-150"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:150 --> **L150** 反方向中，代入变化等于 extend 的假设。

<a id="line-code-leanified-corereader-evidence-lean-151"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:151 --> **L151** 单元素记录列表的成员关系把任意记录确定为这一准确变化记录；先代入，再检查测试。

<a id="line-code-leanified-corereader-evidence-lean-152"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:152 --> **L152** 计算真实 extend 表现记录；其零输入后继测试等于记录的 true。

<a id="line-code-leanified-corereader-evidence-lean-153"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:153 --> **L153** 说明 transitionSupported 的预定范围。对应声明涉及：从表现识别、实际新增操作及报告内容，证明每个兼容变化都发生扩展。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-154"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:154 --> **L154** 陈述经检查的结果 transitionSupported。从表现识别、实际新增操作及报告内容，证明每个兼容变化都发生扩展。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-155"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:155 --> **L155** 任取变化及其与真实表现记录的相容性，证明同一变化发生扩展。

<a id="line-code-leanified-corereader-evidence-lean-156"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:156 --> **L156** 用 transitionPerformanceCompatible 把每个与表现证据相容的变化确定为 extend。

<a id="line-code-leanified-corereader-evidence-lean-157"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:157 --> **L157** 用 extend 替换变化，使剩余成就主张针对其真实扩展后状态。

<a id="line-code-leanified-corereader-evidence-lean-158"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:158 --> **L158** 针对真实前后状态检查同一系统生成的 extend 报告：后继操作确为新增建构，并把输入 0 变为输出 1。

<a id="line-code-leanified-corereader-evidence-lean-159"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:159 --> **L159** 针对真实前后状态检查同一系统生成的 extend 报告：后继操作确为新增建构，并把输入 0 变为输出 1。

<a id="line-code-leanified-corereader-evidence-lean-160"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:160 --> **L160** 针对真实前后状态检查同一系统生成的 extend 报告：后继操作确为新增建构，并把输入 0 变为输出 1。

<a id="line-code-leanified-corereader-evidence-lean-161"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:161 --> **L161** 将 announcementClaimImpliesExpansion 应用于已核实报告内容，得到同一变化的 Expanded 主张。

<a id="line-code-leanified-corereader-evidence-lean-162"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:162 --> **L162** 说明 transitionFacet 的预定范围。对应声明涉及：把表现记录、零输入范围及精确扩展主张组成经验面向。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-163"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:163 --> **L163** 定义 transitionFacet。把表现记录、零输入范围及精确扩展主张组成经验面向。

<a id="line-code-leanified-corereader-evidence-lean-164"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:164 --> **L164** 从表现记录构造经验方面，并采用准确的输入 0 变化范围。

<a id="line-code-leanified-corereader-evidence-lean-165"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:165 --> **L165** 其结论为同一变化的成就，不确定性谓词明确为 True。

<a id="line-code-leanified-corereader-evidence-lean-166"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:166 --> **L166** 说明 transitionFacetDischarged 的预定范围。对应声明涉及：以扩展为非空见证，提供真实模型支持和恒真不确定性条件。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-167"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:167 --> **L167** 陈述经检查的结果 transitionFacetDischarged。以扩展为非空见证，提供真实模型支持和恒真不确定性条件。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-168"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:168 --> **L168** 提供 extend 作为非空经验见证，包含相容表现证据与共同输入 0 范围；留下范围内支持及不确定性检查。

<a id="line-code-leanified-corereader-evidence-lean-169"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:169 --> **L169** 已证的变化支持为任意相容变化提供成就结论，因此也在所选范围内成立。

<a id="line-code-leanified-corereader-evidence-lean-170"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:170 --> **L170** 明确不受限的不确定性谓词为 True，因此该适配器组件直接成立；并未推得定量不确定性界限。

<a id="line-code-leanified-corereader-evidence-lean-171"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:171 --> **L171** 说明 transitionAccountable 的预定范围。对应声明涉及：用同一成就主张、范围、规范表达及已检查面向建立成就Grounds。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-172"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:172 --> **L172** 陈述经检查的结果 transitionAccountable。用同一成就主张、范围、规范表达及已检查面向建立成就Grounds。

<a id="line-code-leanified-corereader-evidence-lean-173"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:173 --> **L173** 陈述真实变化成就谓词的问责，并采用规范表述。

<a id="line-code-leanified-corereader-evidence-lean-174"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:174 --> **L174** 声明 transitionFacet 为唯一适用方面，并使用准确的单元素证据组合。

<a id="line-code-leanified-corereader-evidence-lean-175"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:175 --> **L175** 把问责拆为方面列表非空、覆盖实际适用性，以及各列出方面的匹配表述与履行。

<a id="line-code-leanified-corereader-evidence-lean-176"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:176 --> **L176** 适用性假设把方面确定为规定的唯一方面，因此它属于该单元素列表。

<a id="line-code-leanified-corereader-evidence-lean-177"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:177 --> **L177** 单元素成员关系把当前方面确定为规定方面；代入后检查其准确主张与依据。

<a id="line-code-leanified-corereader-evidence-lean-178"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:178 --> **L178** 组合主张相同、规范表述非空、表述与同一方面的语义连接，以及 transitionFacetDischarged。

<a id="line-code-leanified-corereader-evidence-lean-179"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:179 --> **L179** 组合主张相同、规范表述非空、表述与同一方面的语义连接，以及 transitionFacetDischarged。

<a id="line-code-leanified-corereader-evidence-lean-180"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:180 --> **L180** 说明 transitionReportCompatible 的预定范围。对应声明涉及：证明两种变化都能产生相同的宣称操作、输入和输出记录。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-181"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:181 --> **L181** 陈述经检查的结果 transitionReportCompatible。证明两种变化都能产生相同的宣称操作、输入和输出记录。

<a id="line-code-leanified-corereader-evidence-lean-182"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:182 --> **L182** 陈述该变化的积极报告记录与变化自身相容，也包括 inflate。

<a id="line-code-leanified-corereader-evidence-lean-183"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:183 --> **L183** 单元素记录列表的成员关系把任意记录确定为这一准确变化记录；先代入，再检查测试。

<a id="line-code-leanified-corereader-evidence-lean-184"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:184 --> **L184** 报告测试只检查真实的积极公告内容，两种变化中的公告内容计算结果相同。

<a id="line-code-leanified-corereader-evidence-lean-185"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:185 --> **L185** 说明 transitionReportDoesNotSupport 的预定范围。对应声明涉及：以库存膨胀变化作为符合自述却未实现成就的反模型。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-186"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:186 --> **L186** 陈述经检查的结果 transitionReportDoesNotSupport。以库存膨胀变化作为符合自述却未实现成就的反模型。

<a id="line-code-leanified-corereader-evidence-lean-187"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:187 --> **L187** 要求 inflate 匹配报告，却未满足同一成就谓词。

<a id="line-code-leanified-corereader-evidence-lean-188"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:188 --> **L188** 因此断言积极报告记录不能在全部相容变化上支持该成就。

<a id="line-code-leanified-corereader-evidence-lean-189"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:189 --> **L189** 展开 inflate 变化：理解和建构操作集合均未改变，因此不存在 Expanded 要求的新操作见证。

<a id="line-code-leanified-corereader-evidence-lean-190"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:190 --> **L190** 展开 inflate 变化：理解和建构操作集合均未改变，因此不存在 Expanded 要求的新操作见证。

<a id="line-code-leanified-corereader-evidence-lean-191"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:191 --> **L191** 组合 inflate 处的积极报告相容性与扩展主张为假；任何假定支持应用于此都会产生矛盾。

<a id="line-code-leanified-corereader-evidence-lean-192"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:192 --> **L192** 说明 ConcreteAchievementExample 的预定范围。对应声明涉及：组合同对象成就责任与获支持扩展，以及不获支持膨胀自述，并保留前后状态和输入身份。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-193"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:193 --> **L193** 定义 ConcreteAchievementExample。组合同对象成就责任与获支持扩展，以及不获支持膨胀自述，并保留前后状态和输入身份。

<a id="line-code-leanified-corereader-evidence-lean-194"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:194 --> **L194** 具体实例包含真实变化成就的实际问责。

<a id="line-code-leanified-corereader-evidence-lean-195"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:195 --> **L195** 其实际适用性谓词与列表确定同一个变化方面。

<a id="line-code-leanified-corereader-evidence-lean-196"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:196 --> **L196** 要求 extend 满足真实表现观测。

<a id="line-code-leanified-corereader-evidence-lean-197"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:197 --> **L197** 要求成就具有语义支持，且在 extend 处为真。

<a id="line-code-leanified-corereader-evidence-lean-198"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:198 --> **L198** 还保留与报告相容但该成就为假的 inflate 世界。

<a id="line-code-leanified-corereader-evidence-lean-199"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:199 --> **L199** 陈述由此得到的仅凭报告支持失败。

<a id="line-code-leanified-corereader-evidence-lean-200"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:200 --> **L200** 对每种变化，把报告前状态绑定到真实变化前状态。

<a id="line-code-leanified-corereader-evidence-lean-201"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:201 --> **L201** 把报告后状态绑定到同一变化的真实后状态。

<a id="line-code-leanified-corereader-evidence-lean-202"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:202 --> **L202** 把报告输入绑定到真实变化输入，并明确把该条件固定为 0。

<a id="line-code-leanified-corereader-evidence-lean-203"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:203 --> **L203** 说明 concreteAchievementExample 的预定范围。对应声明涉及：组合实际表现支持、自述反模型和精确状态与输入联系。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-204"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:204 --> **L204** 陈述经检查的结果 concreteAchievementExample。组合实际表现支持、自述反模型和精确状态与输入联系。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-205"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:205 --> **L205** 在具体实例中组合真实成就的问责、extend 表现相容性与语义支持。

<a id="line-code-leanified-corereader-evidence-lean-206"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:206 --> **L206** 将同一支持应用于 extend 见证，确立该处的实际扩展。

<a id="line-code-leanified-corereader-evidence-lean-207"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:207 --> **L207** 纳入与报告相容的 inflate 反例，留下前后状态与输入相同的关系证明。

<a id="line-code-leanified-corereader-evidence-lean-208"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:208 --> **L208** 对任一变化，所有报告与状态连接及输入 0 的关系均由定义本身成立。

<a id="line-code-leanified-corereader-evidence-lean-209"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:209 --> **L209** 说明 achievementNeedsSupport 的预定范围。对应声明涉及：对任意实际主张应用所给兼容性与支持，并另附已检查的具体变化实例。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-210"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:210 --> **L210** 开始 CoreReader.Evidence.achievementNeedsSupport 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-211"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:211 --> **L211** 登记来源单元 organon.charter.self-transcendence.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-212"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:212 --> **L212** 登记来源单元 organon.charter.self-transcendence.limits#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-213"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:213 --> **L213** 登记来源单元 organon.grounds#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-214"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:214 --> **L214** 登记来源单元 organon.grounds.capabilities#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-215"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:215 --> **L215** 登记来源单元 organon.grounds.capabilities#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-216"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:216 --> **L216** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-217"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:217 --> **L217** 陈述经检查的结果 achievementNeedsSupport。对任意实际主张应用所给兼容性与支持，并另附已检查的具体变化实例。

<a id="line-code-leanified-corereader-evidence-lean-218"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:218 --> **L218** 假定所选实际世界匹配全部记录，且这些记录已经支持成就。

<a id="line-code-leanified-corereader-evidence-lean-219"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:219 --> **L219** 得出该实际世界中的成就为真，并附带另行构造的具体成就实例。

<a id="line-code-leanified-corereader-evidence-lean-220"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:220 --> **L220** 把已假定支持应用于实际证据相容世界，并将该局部真值与另行证明的具体成就实例组合。

<a id="line-code-leanified-corereader-evidence-lean-221"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:221 --> **L221** 说明 supportWeakening 的预定范围。对应声明涉及：同一证据支持p且p在每个世界推出q时，也支持较弱结论q。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-222"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:222 --> **L222** 开始 CoreReader.Evidence.supportWeakening 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-223"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:223 --> **L223** 登记来源单元 organon.grounds#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-224"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:224 --> **L224** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-225"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:225 --> **L225** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-226"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:226 --> **L226** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-227"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:227 --> **L227** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-228"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:228 --> **L228** 陈述经检查的结果 supportWeakening。同一证据支持p且p在每个世界推出q时，也支持较弱结论q。

<a id="line-code-leanified-corereader-evidence-lean-229"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:229 --> **L229** 假定 p 已获支持且逐世界有 p 蕴含 q；使用相同记录得出 q 已获支持。

<a id="line-code-leanified-corereader-evidence-lean-230"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:230 --> **L230** 在每个相容世界 w，先用不变记录得出 p，再应用给定蕴含 weaker 得到 q。

<a id="line-code-leanified-corereader-evidence-lean-231"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:231 --> **L231** 说明 evidenceWeakeningCanLoseSupport 的预定范围。对应声明涉及：真布尔观察支持世界为真，删除该记录后假世界成为反例。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-232"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:232 --> **L232** 陈述经检查的结果 evidenceWeakeningCanLoseSupport。真布尔观察支持世界为真，删除该记录后假世界成为反例。

<a id="line-code-leanified-corereader-evidence-lean-233"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:233 --> **L233** 单一恒等观测支持布尔世界为 true。

<a id="line-code-leanified-corereader-evidence-lean-234"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:234 --> **L234** 删除该观测后记录为空，不能支持未改变的主张。

<a id="line-code-leanified-corereader-evidence-lean-235"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:235 --> **L235** 分开单条记录支持主张与删除该记录后同一主张不获支持两个目标。

<a id="line-code-leanified-corereader-evidence-lean-236"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:236 --> **L236** 从相容性读出有信息的恒等测试，它直接表明布尔世界为 true。

<a id="line-code-leanified-corereader-evidence-lean-237"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:237 --> **L237** 没有记录时 false 也相容；在该处检验假定支持，否定未改变的真世界主张。

<a id="line-code-leanified-corereader-evidence-lean-238"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:238 --> **L238** 说明 scopeRestriction 的预定范围。对应声明涉及：在narrow包含于wide的明确前提下，将支持结论的量词域缩窄。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-239"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:239 --> **L239** 开始 CoreReader.Evidence.scopeRestriction 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-240"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:240 --> **L240** 登记来源单元 organon.grounds#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-241"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:241 --> **L241** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-242"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:242 --> **L242** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-243"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:243 --> **L243** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-244"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:244 --> **L244** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-245"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:245 --> **L245** 陈述经检查的结果 scopeRestriction。在narrow包含于wide的明确前提下，将支持结论的量词域缩窄。

<a id="line-code-leanified-corereader-evidence-lean-246"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:246 --> **L246** 接收广域与窄域，并假定每个窄域输入均属于广域。

<a id="line-code-leanified-corereader-evidence-lean-247"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:247 --> **L247** 假定相同记录支持广域中每个输入上的 p。

<a id="line-code-leanified-corereader-evidence-lean-248"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:248 --> **L248** 得出窄域中每个输入上的支持；证据与谓词 p 都不改变。

<a id="line-code-leanified-corereader-evidence-lean-249"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:249 --> **L249** 对相容世界与窄域输入 x，included 将窄域成员关系转为广域成员关系，再在该处应用原广域支持。

<a id="line-code-leanified-corereader-evidence-lean-250"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:250 --> **L250** 说明 Duties 的预定范围。对应声明涉及：要求每个声明适用的面向完成其相应检查。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-251"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:251 --> **L251** 定义 Duties。要求每个声明适用的面向完成其相应检查。

<a id="line-code-leanified-corereader-evidence-lean-252"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:252 --> **L252** 要求每个实际适用方面通过其自身履行条件。

<a id="line-code-leanified-corereader-evidence-lean-253"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:253 --> **L253** 定义 LabeledDuties。完全忽略标签，保留由适用性决定的义务。

<a id="line-code-leanified-corereader-evidence-lean-254"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:254 --> **L254** 把带标签责任定义为原有适用性责任；标签不提供豁免。

<a id="line-code-leanified-corereader-evidence-lean-255"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:255 --> **L255** 说明 assessmentUnion 的预定范围。对应声明涉及：用析取分支证明适用面向并集的义务等价于分别履行两部分。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-256"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:256 --> **L256** 开始 CoreReader.Evidence.assessmentUnion 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-257"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:257 --> **L257** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-258"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:258 --> **L258** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-259"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:259 --> **L259** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-260"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:260 --> **L260** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-261"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:261 --> **L261** 陈述经检查的结果 assessmentUnion。用析取分支证明适用面向并集的义务等价于分别履行两部分。

<a id="line-code-leanified-corereader-evidence-lean-262"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:262 --> **L262** 将两个适用性谓词并集的责任等同于两组责任均履行。

<a id="line-code-leanified-corereader-evidence-lean-263"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:263 --> **L263** 证明并集适用性谓词的责任与两个组成部分同时履行责任之间的两个方向。

<a id="line-code-leanified-corereader-evidence-lean-264"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:264 --> **L264** 利用对应析取嵌入，把并集责任分别限制到各适用方面谓词。

<a id="line-code-leanified-corereader-evidence-lean-265"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:265 --> **L265** 拆出两组责任，把实际适用性分为左右情况，并用对应责任履行同一方面。

<a id="line-code-leanified-corereader-evidence-lean-266"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:266 --> **L266** 说明 labelsCannotWaive 的预定范围。对应声明涉及：标签不进入义务定义，因此改变标签不改变义务。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-267"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:267 --> **L267** 开始 CoreReader.Evidence.labelsCannotWaive 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-268"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:268 --> **L268** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-269"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:269 --> **L269** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-270"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:270 --> **L270** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-271"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:271 --> **L271** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-272"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:272 --> **L272** 陈述经检查的结果 labelsCannotWaive。标签不进入义务定义，因此改变标签不改变义务。

<a id="line-code-leanified-corereader-evidence-lean-273"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:273 --> **L273** 只改变标签列表不改变责任命题；该等价由自反性成立。

<a id="line-code-leanified-corereader-evidence-lean-274"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:274 --> **L274** 说明 switchRecord 的预定范围。对应声明涉及：记录布尔恒等测试结果为真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-275"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:275 --> **L275** 定义 switchRecord。记录布尔恒等测试结果为真。

<a id="line-code-leanified-corereader-evidence-lean-276"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:276 --> **L276** 陈述经检查的结果 switchCompatible。证明与单条switch观察相容等价于布尔世界为真。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-277"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:277 --> **L277** 证明与单元素开关记录相容，当且仅当真实布尔世界为 true。

<a id="line-code-leanified-corereader-evidence-lean-278"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:278 --> **L278** 把记录相容性应用于唯一指定测试，恢复其真实观测等式。

<a id="line-code-leanified-corereader-evidence-lean-279"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:279 --> **L279** 反方向中，单元素成员关系把任意列出记录确定为该测试，其等式即为给定观测前提。

<a id="line-code-leanified-corereader-evidence-lean-280"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:280 --> **L280** 陈述经检查的结果 switchSupported。从兼容性等价关系抽取被记录的真值结论。 给出的证明项使用所示构造见证或先前引理，而不增加公理。

<a id="line-code-leanified-corereader-evidence-lean-281"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:281 --> **L281** 使用 switchCompatible 的正向蕴含，从同一世界真实记录相容性提取 world=true。

<a id="line-code-leanified-corereader-evidence-lean-282"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:282 --> **L282** 说明 optionBenefit 的预定范围。对应声明涉及：选择true时收益为四，否则为零。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-283"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:283 --> **L283** 定义 optionBenefit。选择true时收益为四，否则为零。

<a id="line-code-leanified-corereader-evidence-lean-284"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:284 --> **L284** 定义 optionCost。选择true时成本为三，否则为零。

<a id="line-code-leanified-corereader-evidence-lean-285"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:285 --> **L285** 说明 optionReport 的预定范围。对应声明涉及：陈述与选项对应的成本和收益事实，不使用无关根据标记。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-286"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:286 --> **L286** 定义 optionReport。陈述与选项对应的成本和收益事实，不使用无关根据标记。

<a id="line-code-leanified-corereader-evidence-lean-287"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:287 --> **L287** 选项报告断言真实成本至多为 3，以及开启收益为 4、关闭收益为 0。

<a id="line-code-leanified-corereader-evidence-lean-288"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:288 --> **L288** 说明 switchPosition 的预定范围。对应声明涉及：采纳true选项，使用实际成本收益、成本小于收益目标、预算约束和范围内批评响应。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-289"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:289 --> **L289** 定义 switchPosition。采纳true选项，使用实际成本收益、成本小于收益目标、预算约束和范围内批评响应。

<a id="line-code-leanified-corereader-evidence-lean-290"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:290 --> **L290** 使用布尔选项表示开启与关闭。

<a id="line-code-leanified-corereader-evidence-lean-291"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:291 --> **L291** 以自然数对表示各后果的真实收益与成本。

<a id="line-code-leanified-corereader-evidence-lean-292"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:292 --> **L292** 明确采纳开启选项；采纳本身不是从算术推导的。

<a id="line-code-leanified-corereader-evidence-lean-293"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:293 --> **L293** 直接从布尔世界读取实际选择。

<a id="line-code-leanified-corereader-evidence-lean-294"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:294 --> **L294** 从同一真实选项计算收益与成本。

<a id="line-code-leanified-corereader-evidence-lean-295"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:295 --> **L295** 采纳真实收益严格超过真实成本这一目标。

<a id="line-code-leanified-corereader-evidence-lean-296"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:296 --> **L296** 按固定预算 3 检查实际选项成本。

<a id="line-code-leanified-corereader-evidence-lean-297"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:297 --> **L297** 假定实际布尔选择为开启；不把受评收益结论加入起点理论。

<a id="line-code-leanified-corereader-evidence-lean-298"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:298 --> **L298** 以按选项索引的真实成本与收益报告为唯一理由。

<a id="line-code-leanified-corereader-evidence-lean-299"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:299 --> **L299** 此例使用不受限世界范围；起点假设与理由内容仍约束程序。

<a id="line-code-leanified-corereader-evidence-lean-300"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:300 --> **L300** 把实际选择关闭的世界标记为相关批评情况。

<a id="line-code-leanified-corereader-evidence-lean-301"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:301 --> **L301** 给两个世界提供不同非空信息，包括在批评情况下重新考虑预算。

<a id="line-code-leanified-corereader-evidence-lean-302"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:302 --> **L302** 陈述经检查的结果 switchValueProcedure。提供一致采纳见证，由实际成本收益理由得到目标与约束，并检查两个布尔情形的响应。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-303"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:303 --> **L303** 拆分 switchPosition 的理由非空、共同采纳见证、全部理由支持后果，以及回应批评的义务。

<a id="line-code-leanified-corereader-evidence-lean-304"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:304 --> **L304** 选择世界 true，满足起点选择、不受限限度与采纳选项，留下实际理由待检查。

<a id="line-code-leanified-corereader-evidence-lean-305"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:305 --> **L305** 任取 switchPosition 列表中的理由；下一步将在采纳的开启见证处确定其真实 optionReport 内容。

<a id="line-code-leanified-corereader-evidence-lean-306"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:306 --> **L306** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-307"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:307 --> **L307** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-308"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:308 --> **L308** 检查采纳的开启选项满足已记录成本界限与所述收益值。

<a id="line-code-leanified-corereader-evidence-lean-309"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:309 --> **L309** 对处于所述起点与限度条件的任意世界，假定全部有效理由合取。

<a id="line-code-leanified-corereader-evidence-lean-310"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:310 --> **L310** 从理由合取提取实际 optionReport 理由，而不是引入独立支持标签。

<a id="line-code-leanified-corereader-evidence-lean-311"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:311 --> **L311** 展开被采纳的选项：该证据针对开启选项。

<a id="line-code-leanified-corereader-evidence-lean-312"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:312 --> **L312** 利用已报告收益等式证明开启选项收益大于 3。

<a id="line-code-leanified-corereader-evidence-lean-313"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:313 --> **L313** 组合成本至多为 3 与收益大于 3，证明成本小于收益，并保留同一成本界限作为约束。

<a id="line-code-leanified-corereader-evidence-lean-314"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:314 --> **L314** 检查两个布尔世界，在需要回应批评时提供已记录的非空回应。

<a id="line-code-leanified-corereader-evidence-lean-315"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:315 --> **L315** 说明 oppositePosition 的预定范围。对应声明涉及：把采纳选项改为false并更新起点选择，保留同一结果模型和目标。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-316"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:316 --> **L316** 定义 oppositePosition。把采纳选项改为false并更新起点选择，保留同一结果模型和目标。

<a id="line-code-leanified-corereader-evidence-lean-317"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:317 --> **L317** 把采纳选项与起点选择都改为关闭，同时保留真实后果与理由解释。

<a id="line-code-leanified-corereader-evidence-lean-318"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:318 --> **L318** 说明 oppositePositionRejected 的预定范围。对应声明涉及：false可被联合采纳，但不满足原成本小于收益目标，故程序检查拒绝。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-319"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:319 --> **L319** 陈述经检查的结果 oppositePositionRejected。false可被联合采纳，但不满足原成本小于收益目标，故程序检查拒绝。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-320"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:320 --> **L320** 在世界 false 为相反的关闭立场构造真实共同采纳见证；后续拒绝因此不依赖空域。

<a id="line-code-leanified-corereader-evidence-lean-321"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:321 --> **L321** 在世界 false 为相反的关闭立场构造真实共同采纳见证；后续拒绝因此不依赖空域。

<a id="line-code-leanified-corereader-evidence-lean-322"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:322 --> **L322** 在相反立场的 false 世界见证处任取列出理由，再检查关闭选项真实报告。

<a id="line-code-leanified-corereader-evidence-lean-323"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:323 --> **L323** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-324"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:324 --> **L324** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-325"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:325 --> **L325** 关闭选项自身的报告为真：零成本满足界限，零收益符合所述报告。

<a id="line-code-leanified-corereader-evidence-lean-326"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:326 --> **L326** 保留非空共同见证，另行否定相反价值程序的履行。

<a id="line-code-leanified-corereader-evidence-lean-327"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:327 --> **L327** 假定相反关闭立场满足完整 ValueProcedure，以从零收益后果导出矛盾。

<a id="line-code-leanified-corereader-evidence-lean-328"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:328 --> **L328** 在应用后果要求之前，先在相反立场的实际 false 世界见证处组合其全部理由。

<a id="line-code-leanified-corereader-evidence-lean-329"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:329 --> **L329** 任取相反立场真实理由，在其非空 false 世界反例处组合全部理由。

<a id="line-code-leanified-corereader-evidence-lean-330"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:330 --> **L330** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-331"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:331 --> **L331** 单元素成员关系把任意理由确定为针对该立场采纳选项的 optionReport；代入这一实际理由。

<a id="line-code-leanified-corereader-evidence-lean-332"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:332 --> **L332** 关闭选项自身的报告为真：零成本满足界限，零收益符合所述报告。

<a id="line-code-leanified-corereader-evidence-lean-333"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:333 --> **L333** 将假定的相反程序之联合理由后果条款，应用于同一起点与限度见证及其全部真实理由。

<a id="line-code-leanified-corereader-evidence-lean-334"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:334 --> **L334** 其假定目标要求关闭选项零成本严格小于零收益，与严格小于的非自反性矛盾。

<a id="line-code-leanified-corereader-evidence-lean-335"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:335 --> **L335** 说明 contradictoryStartingPosition 的预定范围。对应声明涉及：把起点换为恒假单项理论，使联合采纳见证不存在。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-336"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:336 --> **L336** 定义 contradictoryStartingPosition。把起点换为恒假单项理论，使联合采纳见证不存在。

<a id="line-code-leanified-corereader-evidence-lean-337"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:337 --> **L337** 把起点理论替换为不可能的单元素主张 False。

<a id="line-code-leanified-corereader-evidence-lean-338"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:338 --> **L338** 定义 impossibleAdoptionPosition。始终选择false却仍采纳true，使联合采纳不可能。

<a id="line-code-leanified-corereader-evidence-lean-339"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:339 --> **L339** 保留采纳的开启选项，却使所有实际选择为关闭，因此无法共同采纳。

<a id="line-code-leanified-corereader-evidence-lean-340"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:340 --> **L340** 说明 inadmissibleValuePositionsRejected 的预定范围。对应声明涉及：通过必需的联合见证分别拒绝不一致起点和不可能采纳。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-341"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:341 --> **L341** 陈述经检查的结果 inadmissibleValuePositionsRejected。通过必需的联合见证分别拒绝不一致起点和不可能采纳。

<a id="line-code-leanified-corereader-evidence-lean-342"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:342 --> **L342** 分别否定矛盾起点假设与不可能实际采纳的程序。

<a id="line-code-leanified-corereader-evidence-lean-343"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:343 --> **L343** 分开矛盾起点理论与不可能选择、采纳组合两个拒绝证明。

<a id="line-code-leanified-corereader-evidence-lean-344"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:344 --> **L344** 从假定满足程序的矛盾起点立场中提取共同采纳见证。

<a id="line-code-leanified-corereader-evidence-lean-345"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:345 --> **L345** 单元素起点理论在该见证处要求 False，直接否定其模型证明。

<a id="line-code-leanified-corereader-evidence-lean-346"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:346 --> **L346** 从假定的共同见证中提取无法实现的实际选择与采纳组合之间的相等关系。

<a id="line-code-leanified-corereader-evidence-lean-347"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:347 --> **L347** 所需采纳等式令不同布尔选项相等，因此该见证不存在。

<a id="line-code-leanified-corereader-evidence-lean-348"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:348 --> **L348** 说明 unsupportedPosition 的预定范围。对应声明涉及：复制实际价值立场但删除理由，使非空理由要求失败。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-349"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:349 --> **L349** 定义 unsupportedPosition。复制实际价值立场但删除理由，使非空理由要求失败。

<a id="line-code-leanified-corereader-evidence-lean-350"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:350 --> **L350** 定义 switchEmpirical。以switch观察支持世界为真，范围和不确定性谓词均为真。

<a id="line-code-leanified-corereader-evidence-lean-351"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:351 --> **L351** 使用真实开关观测、不受限范围与同一已开启主张；不确定性明确为 True。

<a id="line-code-leanified-corereader-evidence-lean-352"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:352 --> **L352** 陈述经检查的结果 switchEmpiricalDischarged。给true兼容见证、实际支持及平凡不确定性，完成经验检查。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-353"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:353 --> **L353** 用 true 作为与开关记录和不受限经验范围相容的非空世界。

<a id="line-code-leanified-corereader-evidence-lean-354"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:354 --> **L354** 同一开关记录的语义支持，在每个相容世界证明范围内的开关主张。

<a id="line-code-leanified-corereader-evidence-lean-355"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:355 --> **L355** 履行明确为真的不确定性谓词，不增加经验置信度主张。

<a id="line-code-leanified-corereader-evidence-lean-356"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:356 --> **L356** 说明 mixedMissingResponsibility 的预定范围。对应声明涉及：经验面向通过，但同一主张的价值面缺理由，故混合义务整体失败。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-357"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:357 --> **L357** 开始 CoreReader.Evidence.mixedMissingResponsibility 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-358"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:358 --> **L358** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-359"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:359 --> **L359** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-360"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:360 --> **L360** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-361"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:361 --> **L361** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-362"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:362 --> **L362** 陈述经检查的结果 mixedMissingResponsibility。经验面向通过，但同一主张的价值面缺理由，故混合义务整体失败。

<a id="line-code-leanified-corereader-evidence-lean-363"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:363 --> **L363** 保留真实经验开关方面的成功履行。

<a id="line-code-leanified-corereader-evidence-lean-364"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:364 --> **L364** 即使标签为空也否定全部混合责任，因为真实价值方面同样适用，却缺少已记录理由。

<a id="line-code-leanified-corereader-evidence-lean-365"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:365 --> **L365** 保留有效的经验开关方面，另行否定全部混合责任已经履行。

<a id="line-code-leanified-corereader-evidence-lean-366"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:366 --> **L366** 假定每个实际混合方面均已履行，包括已记录理由列表为空的价值方面。

<a id="line-code-leanified-corereader-evidence-lean-367"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:367 --> **L367** 从实际适用并集中选取价值方面，并提取理由列表必须非空的条件。

<a id="line-code-leanified-corereader-evidence-lean-368"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:368 --> **L368** 该理由列表依定义为空，因此否定的是这一已记录程序要求。

<a id="line-code-leanified-corereader-evidence-lean-369"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:369 --> **L369** 说明 uninformativeArgument 的预定范围。对应声明涉及：构造有概念、有恒真理由却无实质假设的表达。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-370"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:370 --> **L370** 定义 uninformativeArgument。构造有概念、有恒真理由却无实质假设的表达。

<a id="line-code-leanified-corereader-evidence-lean-371"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:371 --> **L371** 用空假设与 True 理由表述开关概念；这些非空文字不约束开关世界。

<a id="line-code-leanified-corereader-evidence-lean-372"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:372 --> **L372** 开始 CoreReader.Evidence.articulationNotSupport 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-373"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:373 --> **L373** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-374"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:374 --> **L374** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-375"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:375 --> **L375** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-376"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:376 --> **L376** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-377"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:377 --> **L377** 陈述经检查的结果 articulationNotSupport。表达非空不代表其空假设蕴涵世界为真。

<a id="line-code-leanified-corereader-evidence-lean-378"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:378 --> **L378** 无信息表述的真实假设不蕴含世界为 true。

<a id="line-code-leanified-corereader-evidence-lean-379"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:379 --> **L379** 把非空却无信息的概念与理由，和空理论已证的不能蕴含开关主张组合。

<a id="line-code-leanified-corereader-evidence-lean-380"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:380 --> **L380** 把非空却无信息的概念与理由，和空理论已证的不能蕴含开关主张组合。

<a id="line-code-leanified-corereader-evidence-lean-381"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:381 --> **L381** 说明 unrelatedArticulationRejected 的预定范围。对应声明涉及：虽表达非空且经验面向通过，两者的假设不匹配，不能视为同一根据表达。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-382"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:382 --> **L382** 陈述经检查的结果 unrelatedArticulationRejected。虽表达非空且经验面向通过，两者的假设不匹配，不能视为同一根据表达。

<a id="line-code-leanified-corereader-evidence-lean-383"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:383 --> **L383** 保留无关表述的程序存在性及开关方面的真实履行。

<a id="line-code-leanified-corereader-evidence-lean-384"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:384 --> **L384** 仍否定该无关表述与这一经验方面的语义匹配。

<a id="line-code-leanified-corereader-evidence-lean-385"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:385 --> **L385** 保留表述与有效开关证据，再单独检验这一无关表述是否真正匹配该方面。

<a id="line-code-leanified-corereader-evidence-lean-386"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:386 --> **L386** 假定无信息表述尽管前提理论为空，仍与 switchEmpirical 语义匹配。

<a id="line-code-leanified-corereader-evidence-lean-387"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:387 --> **L387** 在相容性主张自身处，计算假定的表述假设与经验相容性假设相等。

<a id="line-code-leanified-corereader-evidence-lean-388"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:388 --> **L388** 经验单元素理论包含该相容性主张，而无关空理论不包含；假定的相等推出 False。

<a id="line-code-leanified-corereader-evidence-lean-389"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:389 --> **L389** 使用所示局部证据或已证引理完成 unrelatedArticulationRejected 的这一组件；该组件属于下列固定结果：虽表达非空且经验面向通过，两者的假设不匹配，不能视为同一根据表达。

<a id="line-code-leanified-corereader-evidence-lean-390"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:390 --> **L390** 说明 temperatureRecord 的预定范围。对应声明涉及：只观测布尔对第一坐标，未观测第二坐标。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-391"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:391 --> **L391** 定义 temperatureRecord。只观测布尔对第一坐标，未观测第二坐标。

<a id="line-code-leanified-corereader-evidence-lean-392"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:392 --> **L392** 陈述经检查的结果 temperatureCompatible。复制第一坐标记录仍允许第二坐标为任意布尔值。

<a id="line-code-leanified-corereader-evidence-lean-393"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:393 --> **L393** 对任意输出坐标 b，重复温度记录仍与 (true,b) 相容。

<a id="line-code-leanified-corereader-evidence-lean-394"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:394 --> **L394** 对任意输出坐标 b，重复列表的成员关系仍选取同一温度测试；其观测的第一坐标为 true，而 b 不受约束。

<a id="line-code-leanified-corereader-evidence-lean-395"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:395 --> **L395** 对任意输出坐标 b，重复列表的成员关系仍选取同一温度测试；其观测的第一坐标为 true，而 b 不受约束。

<a id="line-code-leanified-corereader-evidence-lean-396"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:396 --> **L396** 对任意输出坐标 b，重复列表的成员关系仍选取同一温度测试；其观测的第一坐标为 true，而 b 不受约束。

<a id="line-code-leanified-corereader-evidence-lean-397"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:397 --> **L397** 对任意输出坐标 b，重复列表的成员关系仍选取同一温度测试；其观测的第一坐标为 true，而 b 不受约束。

<a id="line-code-leanified-corereader-evidence-lean-398"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:398 --> **L398** 说明 BudgetWorld 的预定范围。对应声明涉及：世界由行动布尔值和自然数预算组成。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-399"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:399 --> **L399** 引入类型缩写 BudgetWorld。世界由行动布尔值和自然数预算组成。

<a id="line-code-leanified-corereader-evidence-lean-400"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:400 --> **L400** 说明 announcement 的预定范围。对应声明涉及：定义固定行动宣告字符串，字符串自身不提供预算依据。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-401"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:401 --> **L401** 定义 announcement。定义固定行动宣告字符串，字符串自身不提供预算依据。

<a id="line-code-leanified-corereader-evidence-lean-402"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:402 --> **L402** 定义 announcementPosition。仅用行动自述作为选项理由，却要求实际成本收益及可用预算。

<a id="line-code-leanified-corereader-evidence-lean-403"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:403 --> **L403** 使用布尔选项表示开启与关闭。

<a id="line-code-leanified-corereader-evidence-lean-404"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:404 --> **L404** 以自然数对表示各后果的真实收益与成本。

<a id="line-code-leanified-corereader-evidence-lean-405"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:405 --> **L405** 明确采纳开启选项；采纳本身不是从算术推导的。

<a id="line-code-leanified-corereader-evidence-lean-406"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:406 --> **L406** 从第一坐标读取实际选择，同时让预算独立变化。

<a id="line-code-leanified-corereader-evidence-lean-407"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:407 --> **L407** 从同一真实选项计算收益与成本。

<a id="line-code-leanified-corereader-evidence-lean-408"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:408 --> **L408** 采纳真实收益严格超过真实成本这一目标。

<a id="line-code-leanified-corereader-evidence-lean-409"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:409 --> **L409** 比较采纳选项真实成本与该世界独立给定的预算。

<a id="line-code-leanified-corereader-evidence-lean-410"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:410 --> **L410** 固定选择为开启，不增加可负担性或预算假设。

<a id="line-code-leanified-corereader-evidence-lean-411"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:411 --> **L411** 使用真实按选项区分的公告文本作为理由；它不说明可用预算。

<a id="line-code-leanified-corereader-evidence-lean-412"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:412 --> **L412** 此例使用不受限世界范围；起点假设与理由内容仍约束程序。

<a id="line-code-leanified-corereader-evidence-lean-413"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:413 --> **L413** 把预算低于 3 认定为对该成本为 3 行动的相关批评。

<a id="line-code-leanified-corereader-evidence-lean-414"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:414 --> **L414** 记录成本超预算时重新考虑行动的非空信息。

<a id="line-code-leanified-corereader-evidence-lean-415"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:415 --> **L415** 说明 announcementHasJointAdoption 的预定范围。对应声明涉及：构造行动为真、预算零且自述理由成立的世界；后续失败不是缺少采纳见证。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-416"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:416 --> **L416** 陈述经检查的结果 announcementHasJointAdoption。构造行动为真、预算零且自述理由成立的世界；后续失败不是缺少采纳见证。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-417"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:417 --> **L417** 选择已开启且预算为 0 的世界作为共同采纳见证；起点理论固定选择，却不假定可负担性。

<a id="line-code-leanified-corereader-evidence-lean-418"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:418 --> **L418** 在已开启且零预算的共同见证处任取公告理由。

<a id="line-code-leanified-corereader-evidence-lean-419"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:419 --> **L419** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-420"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:420 --> **L420** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-421"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:421 --> **L421** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-422"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:422 --> **L422** 实际公告等于开启选项的启动文本；这证明公告理由成立，不证明预算约束。

<a id="line-code-leanified-corereader-evidence-lean-423"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:423 --> **L423** 说明 announcementNotBudgetReason 的预定范围。对应声明涉及：预算零时，已采纳行动及非空真自述仍不能满足预算后果，故程序不成立。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-424"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:424 --> **L424** 陈述经检查的结果 announcementNotBudgetReason。预算零时，已采纳行动及非空真自述仍不能满足预算后果，故程序不成立。

<a id="line-code-leanified-corereader-evidence-lean-425"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:425 --> **L425** 要求公告理由非空，并在已开启且预算 0 处实际采纳。

<a id="line-code-leanified-corereader-evidence-lean-426"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:426 --> **L426** 在同一零预算世界，全部真实公告理由成立。

<a id="line-code-leanified-corereader-evidence-lean-427"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:427 --> **L427** 仍否定真实后果及整个价值程序。

<a id="line-code-leanified-corereader-evidence-lean-428"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:428 --> **L428** 组合非空公告理由与真实公告，否定零预算后果，留下整个程序失败的证明。

<a id="line-code-leanified-corereader-evidence-lean-429"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:429 --> **L429** 为预算 0 处的理由合取，任取真实公告理由列表成员。

<a id="line-code-leanified-corereader-evidence-lean-430"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:430 --> **L430** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-431"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:431 --> **L431** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-432"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:432 --> **L432** 实际公告等于开启选项的启动文本；这证明公告理由成立，不证明预算约束。

<a id="line-code-leanified-corereader-evidence-lean-433"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:433 --> **L433** 假定公告立场满足 ValueProcedure，以在预算 0 处检验其后果条款。

<a id="line-code-leanified-corereader-evidence-lean-434"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:434 --> **L434** 在同一已开启且预算为零的世界收集全部公告理由。

<a id="line-code-leanified-corereader-evidence-lean-435"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:435 --> **L435** 为该条款提供全部理由，在同一零预算世界任取公告理由。

<a id="line-code-leanified-corereader-evidence-lean-436"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:436 --> **L436** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-437"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:437 --> **L437** 根据成员关系，把实际理由确定为按选项索引的公告文本，再特化到采纳的开启选项。

<a id="line-code-leanified-corereader-evidence-lean-438"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:438 --> **L438** 实际公告等于开启选项的启动文本；这证明公告理由成立，不证明预算约束。

<a id="line-code-leanified-corereader-evidence-lean-439"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:439 --> **L439** 把假定程序应用于这一非空的零预算起点、限度实例及其真实公告理由。

<a id="line-code-leanified-corereader-evidence-lean-440"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:440 --> **L440** 所得成本约束要求成本 3 不超过预算 0，这是不可能的。

<a id="line-code-leanified-corereader-evidence-lean-441"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:441 --> **L441** 说明 actionRecord 的预定范围。对应声明涉及：只观测行动布尔值，不限制预算。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-442"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:442 --> **L442** 定义 actionRecord。只观测行动布尔值，不限制预算。

<a id="line-code-leanified-corereader-evidence-lean-443"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:443 --> **L443** 陈述经检查的结果 actionCompatible。两个重复行动记录仍与任意预算相容。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-444"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:444 --> **L444** 重复列表中的每条行动记录只测试实际已开启坐标，因此任意给定预算仍相容。

<a id="line-code-leanified-corereader-evidence-lean-445"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:445 --> **L445** 说明 measurementRepeatNotSupport 的预定范围。对应声明涉及：用未观测坐标和预算零反例，分别拒绝单次及重复测量对无关结论和价值后果的支持。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-446"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:446 --> **L446** 开始 CoreReader.Evidence.measurementRepeatNotSupport 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-447"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:447 --> **L447** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-448"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:448 --> **L448** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-449"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:449 --> **L449** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-450"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:450 --> **L450** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-451"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:451 --> **L451** 陈述经检查的结果 measurementRepeatNotSupport。用未观测坐标和预算零反例，分别拒绝单次及重复测量对无关结论和价值后果的支持。

<a id="line-code-leanified-corereader-evidence-lean-452"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:452 --> **L452** 即使独立输出坐标为 false，真实温度测试仍返回 true。

<a id="line-code-leanified-corereader-evidence-lean-453"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:453 --> **L453** 在重复温度观测下保留该假输出世界。

<a id="line-code-leanified-corereader-evidence-lean-454"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:454 --> **L454** 在相同重复观测下也保留真输出世界。

<a id="line-code-leanified-corereader-evidence-lean-455"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:455 --> **L455** 单条温度记录不支持另一输出为 true。

<a id="line-code-leanified-corereader-evidence-lean-456"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:456 --> **L456** 重复该温度记录仍不支持另一输出为 true。

<a id="line-code-leanified-corereader-evidence-lean-457"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:457 --> **L457** 重复观测到启动与已开启、预算为 0 相容。

<a id="line-code-leanified-corereader-evidence-lean-458"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:458 --> **L458** 相同重复记录也与预算为 3 相容。

<a id="line-code-leanified-corereader-evidence-lean-459"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:459 --> **L459** 单条启动记录不支持该选项的真实目标与预算后果。

<a id="line-code-leanified-corereader-evidence-lean-460"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:460 --> **L460** 重复启动记录不能修复这一后果支持缺失。

<a id="line-code-leanified-corereader-evidence-lean-461"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:461 --> **L461** 基于公告的价值程序也未满足同一实际选项与约束。

<a id="line-code-leanified-corereader-evidence-lean-462"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:462 --> **L462** 记录观测真实值为 true，以及两个温度相容的输出选择，留下输出主张不获支持的反证。

<a id="line-code-leanified-corereader-evidence-lean-463"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:463 --> **L463** 保留预算 0 与预算 3 两个行动相容世界及已证的公告程序失败，留下可负担性支持主张的反证。

<a id="line-code-leanified-corereader-evidence-lean-464"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:464 --> **L464** 假定单次温度观测支持独立表示的第二输出为 true。

<a id="line-code-leanified-corereader-evidence-lean-465"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:465 --> **L465** 将假定的单记录输出支持应用于 (true,false)：其温度观测为真，另一输出主张却为假。

<a id="line-code-leanified-corereader-evidence-lean-466"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:466 --> **L466** 将假定的单记录输出支持应用于 (true,false)：其温度观测为真，另一输出主张却为假。

<a id="line-code-leanified-corereader-evidence-lean-467"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:467 --> **L467** 同一 (true,false) 反世界仍与重复温度记录相容，因此否定重复数据支持输出的主张。

<a id="line-code-leanified-corereader-evidence-lean-468"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:468 --> **L468** 假定单次行动观测支持采纳选项的收益与预算后果。

<a id="line-code-leanified-corereader-evidence-lean-469"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:469 --> **L469** 单次观测到启动与预算 0 相容；假定支持该处后果会迫使不可能的成本约束。

<a id="line-code-leanified-corereader-evidence-lean-470"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:470 --> **L470** 单次观测到启动与预算 0 相容；假定支持该处后果会迫使不可能的成本约束。

<a id="line-code-leanified-corereader-evidence-lean-471"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:471 --> **L471** 重复启动记录仍保留同一零预算反世界，因此仍不支持实际可负担后果。

<a id="line-code-leanified-corereader-evidence-lean-472"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:472 --> **L472** 说明 selfAssertionNotReason 的预定范围。对应声明涉及：组合无理由与非空但无预算依据的自断言反例，并为后者提供联合采纳见证。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-473"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:473 --> **L473** 开始 CoreReader.Evidence.selfAssertionNotReason 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-474"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:474 --> **L474** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-475"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:475 --> **L475** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-476"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:476 --> **L476** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-477"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:477 --> **L477** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-478"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:478 --> **L478** 陈述经检查的结果 selfAssertionNotReason。组合无理由与非空但无预算依据的自断言反例，并为后者提供联合采纳见证。

<a id="line-code-leanified-corereader-evidence-lean-479"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:479 --> **L479** 缺少理由的立场可以被实际采纳，却未通过其记录程序。

<a id="line-code-leanified-corereader-evidence-lean-480"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:480 --> **L480** 更强的公告实例具有非空理由，并在预算 0 处实际采纳。

<a id="line-code-leanified-corereader-evidence-lean-481"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:481 --> **L481** 其真实后果及程序仍失败，因为同一采纳选项超出预算。

<a id="line-code-leanified-corereader-evidence-lean-482"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:482 --> **L482** 保留真实共同采纳见证，排除以空起点域解释此失败。

<a id="line-code-leanified-corereader-evidence-lean-483"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:483 --> **L483** 按定义证明 unsupportedPosition.commitment true；若假定存在 ValueProcedure，则其理由非空要求与实际空理由列表矛盾。

<a id="line-code-leanified-corereader-evidence-lean-484"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:484 --> **L484** 复用 announcementNotBudgetReason 中非空真实公告理由与采纳等式。

<a id="line-code-leanified-corereader-evidence-lean-485"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:485 --> **L485** 还复用同一零预算后果及整个公告程序的失败。

<a id="line-code-leanified-corereader-evidence-lean-486"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:486 --> **L486** 保留 announcementHasJointAdoption，因此该失败不能由空或不一致起点域解释。

<a id="line-code-leanified-corereader-evidence-lean-487"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:487 --> **L487** 说明 valueWithoutSelfProof 的预定范围。对应声明涉及：给出有理由且一致、却不能由空假设推出的立场，并拒绝相反选项、不一致起点和不可能采纳变体。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-488"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:488 --> **L488** 开始 CoreReader.Evidence.valueWithoutSelfProof 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-489"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:489 --> **L489** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-490"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:490 --> **L490** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-491"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:491 --> **L491** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-492"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:492 --> **L492** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-493"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:493 --> **L493** 陈述经检查的结果 valueWithoutSelfProof。给出有理由且一致、却不能由空假设推出的立场，并拒绝相反选项、不一致起点和不可能采纳变体。

<a id="line-code-leanified-corereader-evidence-lean-494"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:494 --> **L494** 要求开关立场的真实起点理论具有模型。

<a id="line-code-leanified-corereader-evidence-lean-495"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:495 --> **L495** 否定从空布尔理论推导其采纳承诺。

<a id="line-code-leanified-corereader-evidence-lean-496"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:496 --> **L496** 相反立场具有共同见证，却未通过后果评估。

<a id="line-code-leanified-corereader-evidence-lean-497"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:497 --> **L497** 还拒绝矛盾起点与无法采纳的变体，区分未由自身推得与不一致起点。

<a id="line-code-leanified-corereader-evidence-lean-498"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:498 --> **L498** 组合真实开关程序、作为起点模型的 true 世界，以及采纳主张不由 emptyTheory 蕴含。

<a id="line-code-leanified-corereader-evidence-lean-499"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:499 --> **L499** 加入非空相反选项的拒绝，以及矛盾起点与无法采纳两个单独变体。

<a id="line-code-leanified-corereader-evidence-lean-500"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:500 --> **L500** 说明 BenefitCostWorld 的预定范围。对应声明涉及：世界保存所选布尔选项及可变收益和成本。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-501"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:501 --> **L501** 引入类型缩写 BenefitCostWorld。世界保存所选布尔选项及可变收益和成本。

<a id="line-code-leanified-corereader-evidence-lean-502"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:502 --> **L502** 定义 measuredOutcome。true选项返回世界的收益成本对，false结果为零与零。

<a id="line-code-leanified-corereader-evidence-lean-503"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:503 --> **L503** 开启选项读取世界真实收益与成本对；关闭选项得到 (0,0)。

<a id="line-code-leanified-corereader-evidence-lean-504"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:504 --> **L504** 定义 benefitReason。要求同一选项测得收益为四。

<a id="line-code-leanified-corereader-evidence-lean-505"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:505 --> **L505** 收益理由要求实际选项的测得收益等于 4。

<a id="line-code-leanified-corereader-evidence-lean-506"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:506 --> **L506** 定义 costReason。要求该选项测得成本至多三。

<a id="line-code-leanified-corereader-evidence-lean-507"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:507 --> **L507** 成本理由要求同一选项的测得成本至多为 3。

<a id="line-code-leanified-corereader-evidence-lean-508"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:508 --> **L508** 说明 jointReasonPosition 的预定范围。对应声明涉及：用相互独立的选项收益与成本理由，共同支持采纳选项目标及预算。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-509"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:509 --> **L509** 定义 jointReasonPosition。用相互独立的选项收益与成本理由，共同支持采纳选项目标及预算。

<a id="line-code-leanified-corereader-evidence-lean-510"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:510 --> **L510** 使用布尔选项表示开启与关闭。

<a id="line-code-leanified-corereader-evidence-lean-511"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:511 --> **L511** 以自然数对表示各后果的真实收益与成本。

<a id="line-code-leanified-corereader-evidence-lean-512"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:512 --> **L512** 明确采纳开启选项；采纳本身不是从算术推导的。

<a id="line-code-leanified-corereader-evidence-lean-513"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:513 --> **L513** 从世界第一坐标读取选择，与测得收益及成本分开。

<a id="line-code-leanified-corereader-evidence-lean-514"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:514 --> **L514** 使用 measuredOutcome，使受评选项的真实收益与成本来自该世界。

<a id="line-code-leanified-corereader-evidence-lean-515"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:515 --> **L515** 采纳真实收益严格超过真实成本这一目标。

<a id="line-code-leanified-corereader-evidence-lean-516"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:516 --> **L516** 要求该选项测得成本至多为 3。

<a id="line-code-leanified-corereader-evidence-lean-517"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:517 --> **L517** 假定所选选项为开启，不假定收益或成本结论。

<a id="line-code-leanified-corereader-evidence-lean-518"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:518 --> **L518** 同时列出 benefitReason 与 costReason；程序将使用其合取。

<a id="line-code-leanified-corereader-evidence-lean-519"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:519 --> **L519** 此例使用不受限世界范围；起点假设与理由内容仍约束程序。

<a id="line-code-leanified-corereader-evidence-lean-520"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:520 --> **L520** 把真实测得成本大于 3 识别为相关批评。

<a id="line-code-leanified-corereader-evidence-lean-521"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:521 --> **L521** 记录当该选项真实成本超预算时重新评估它的非空回应。

<a id="line-code-leanified-corereader-evidence-lean-522"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:522 --> **L522** 说明 jointReasonProcedure 的预定范围。对应声明涉及：以收益四成本三构造联合见证，合用两个理由证明成本低于收益且不超预算。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-523"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:523 --> **L523** 陈述经检查的结果 jointReasonProcedure。以收益四成本三构造联合见证，合用两个理由证明成本低于收益且不超预算。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-524"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:524 --> **L524** 拆分联合理由立场的理由非空、共同见证、基于合取的后果与批评回应。

<a id="line-code-leanified-corereader-evidence-lean-525"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:525 --> **L525** 用已开启、收益为 4、成本为 3 的世界作为共同的起点、限度与采纳见证。

<a id="line-code-leanified-corereader-evidence-lean-526"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:526 --> **L526** 在真实 (true,(4,3)) 见证处任取两条理由之一，再拆分成员关系检查各不同理由。

<a id="line-code-leanified-corereader-evidence-lean-527"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:527 --> **L527** 展开实际的双元素理由列表：benefitReason 与 costReason。

<a id="line-code-leanified-corereader-evidence-lean-528"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:528 --> **L528** 把理由成员关系分为收益理由，或剩余单元素成本理由。

<a id="line-code-leanified-corereader-evidence-lean-529"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:529 --> **L529** 代入收益理由，检查见证的测得收益恰为 4。

<a id="line-code-leanified-corereader-evidence-lean-530"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:530 --> **L530** 把剩余理由确定为 costReason 并代入。

<a id="line-code-leanified-corereader-evidence-lean-531"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:531 --> **L531** 把剩余理由确定为 costReason 并代入。

<a id="line-code-leanified-corereader-evidence-lean-532"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:532 --> **L532** 利用自然数序的自反性检查见证的成本界限 3 ≤ 3。

<a id="line-code-leanified-corereader-evidence-lean-533"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:533 --> **L533** 对任意被接纳世界，假定全部有效理由共同成立，而不要求任一理由单独充分。

<a id="line-code-leanified-corereader-evidence-lean-534"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:534 --> **L534** 在该世界与采纳选项处，从理由合取提取实际 benefitReason。

<a id="line-code-leanified-corereader-evidence-lean-535"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:535 --> **L535** 在同一世界与选项处，从同一合取提取 costReason。

<a id="line-code-leanified-corereader-evidence-lean-536"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:536 --> **L536** 展开 benefitReason：采纳的开启选项之测得收益等于 4。

<a id="line-code-leanified-corereader-evidence-lean-537"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:537 --> **L537** 展开 costReason：同一选项的测得成本至多为 3。

<a id="line-code-leanified-corereader-evidence-lean-538"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:538 --> **L538** 保留实际成本约束，只留下收益严格大于成本的目标。

<a id="line-code-leanified-corereader-evidence-lean-539"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:539 --> **L539** 把测得收益改写为 4，并检查它大于 3。

<a id="line-code-leanified-corereader-evidence-lean-540"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:540 --> **L540** 合成成本至多为 3 与 3 小于收益，使用两个理由确立成本小于收益。

<a id="line-code-leanified-corereader-evidence-lean-541"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:541 --> **L541** 对限度内且批评相关的世界，构造针对该选项成本过高的必需回应。

<a id="line-code-leanified-corereader-evidence-lean-542"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:542 --> **L542** 提供关于成本超预算时重新评估选项的明确非空回应；这登记回应，不证明其说服充分性。

<a id="line-code-leanified-corereader-evidence-lean-543"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:543 --> **L543** 说明 JointReasonsExample 的预定范围。对应声明涉及：表示联合理由程序通过，但任一单独理由都可在后果失败的世界成立。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-544"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:544 --> **L544** 定义 JointReasonsExample。表示联合理由程序通过，但任一单独理由都可在后果失败的世界成立。

<a id="line-code-leanified-corereader-evidence-lean-545"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:545 --> **L545** 要求双理由立场满足完整 ValueProcedure。

<a id="line-code-leanified-corereader-evidence-lean-546"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:546 --> **L546** 固定仅满足收益理由的反世界 (true,(4,5))，它满足同一起点假设与限度。

<a id="line-code-leanified-corereader-evidence-lean-547"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:547 --> **L547** 在该世界，实际采纳与收益理由均成立。

<a id="line-code-leanified-corereader-evidence-lean-548"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:548 --> **L548** 否定该处受评后果，因为真实成本过高。

<a id="line-code-leanified-corereader-evidence-lean-549"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:549 --> **L549** 在同一起点假设与限度下固定仅满足成本理由的反世界 (true,(0,3))。

<a id="line-code-leanified-corereader-evidence-lean-550"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:550 --> **L550** 在该世界，实际采纳与成本理由成立。

<a id="line-code-leanified-corereader-evidence-lean-551"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:551 --> **L551** 否定其受评后果，因为零收益没有超过成本 3。

<a id="line-code-leanified-corereader-evidence-lean-552"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:552 --> **L552** 陈述经检查的结果 jointReasonsExample。以收益四成本五及收益零成本三分别反驳单个理由充分。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-553"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:553 --> **L553** 以已检查的双理由程序开始组合实例。

<a id="line-code-leanified-corereader-evidence-lean-554"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:554 --> **L554** 提供仅满足收益理由的反世界：收益 4、成本 5，且满足相同起点、限度与采纳条件。

<a id="line-code-leanified-corereader-evidence-lean-555"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:555 --> **L555** 在相同条件下提供仅满足成本理由的反世界：收益 0、成本 3。

<a id="line-code-leanified-corereader-evidence-lean-556"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:556 --> **L556** 仅有收益理由的世界违反成本约束 5 ≤ 3；自然数算术消去该矛盾。

<a id="line-code-leanified-corereader-evidence-lean-557"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:557 --> **L557** 仅有成本理由的世界不可能满足严格目标 3 < 0；算术完成该反例。

<a id="line-code-leanified-corereader-evidence-lean-558"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:558 --> **L558** 说明 heterogeneousReasons 的预定范围。对应声明涉及：组合经验、推论、价值实例，并加入任一理由单独不足的真实联合理由实例。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-559"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:559 --> **L559** 开始 CoreReader.Evidence.heterogeneousReasons 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-560"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:560 --> **L560** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-561"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:561 --> **L561** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-562"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:562 --> **L562** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-563"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:563 --> **L563** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-564"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:564 --> **L564** 陈述经检查的结果 heterogeneousReasons。组合经验、推论、价值实例，并加入任一理由单独不足的真实联合理由实例。

<a id="line-code-leanified-corereader-evidence-lean-565"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:565 --> **L565** 纳入真实已履行的经验开关方面。

<a id="line-code-leanified-corereader-evidence-lean-566"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:566 --> **L566** 纳入推论方面，其可满足的真世界前提蕴含同一真世界主张。

<a id="line-code-leanified-corereader-evidence-lean-567"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:567 --> **L567** 在此登记定理中纳入真实开关价值程序与双理由共同支持实例。

<a id="line-code-leanified-corereader-evidence-lean-568"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:568 --> **L568** 组合已检查经验方面、非空推论单元素理论、价值程序及联合理由反例。

<a id="line-code-leanified-corereader-evidence-lean-569"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:569 --> **L569** 对推论方面，其单元素前提在任意模型中直接给出同一真世界主张。

<a id="line-code-leanified-corereader-evidence-lean-571"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:571 --> **L571** 说明 zeroRecord 的预定范围。对应声明涉及：只测试布尔函数在自然数零处的输出。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-572"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:572 --> **L572** 定义 zeroRecord。只测试布尔函数在自然数零处的输出。

<a id="line-code-leanified-corereader-evidence-lean-573"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:573 --> **L573** 定义 localGenerator。生成只在seed输入处返回真的布尔函数。

<a id="line-code-leanified-corereader-evidence-lean-574"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:574 --> **L574** 说明 allTrue 的预定范围。对应声明涉及：要求函数在每个自然数输入都返回真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-575"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:575 --> **L575** 定义 allTrue。要求函数在每个自然数输入都返回真。

<a id="line-code-leanified-corereader-evidence-lean-576"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:576 --> **L576** 陈述经检查的结果 zeroCompatible。证明零点记录的兼容性恰好只要求f(0)=true。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-577"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:577 --> **L577** 证明匹配 zeroRecord 与真实函数在输入 0 返回 true 之间的两个方向。

<a id="line-code-leanified-corereader-evidence-lean-578"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:578 --> **L578** 把记录相容性应用于唯一指定测试，恢复其真实观测等式。

<a id="line-code-leanified-corereader-evidence-lean-579"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:579 --> **L579** 反方向中，单元素成员关系把任意列出记录确定为该测试，其等式即为给定观测前提。

<a id="line-code-leanified-corereader-evidence-lean-580"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:580 --> **L580** 说明 GeneratingProcess 的预定范围。对应声明涉及：保存生产者身份、实际旧谓词及修订算法种子。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-581"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:581 --> **L581** 声明数据接口 GeneratingProcess。保存生产者身份、实际旧谓词及修订算法种子。

<a id="line-code-leanified-corereader-evidence-lean-582"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:582 --> **L582** 保存实际生成过程的所有者标识。

<a id="line-code-leanified-corereader-evidence-lean-583"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:583 --> **L583** 保存该过程生成修订之前的布尔值函数。

<a id="line-code-leanified-corereader-evidence-lean-584"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:584 --> **L584** 保存该过程真实局部生成器使用的种子输入。

<a id="line-code-leanified-corereader-evidence-lean-585"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:585 --> **L585** 说明 GeneratingProcess.outputRevision 的预定范围。对应声明涉及：保留旧谓词成功输入，并由实际局部生成器增加种子输入。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-586"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:586 --> **L586** 定义 GeneratingProcess.outputRevision。保留旧谓词成功输入，并由实际局部生成器增加种子输入。

<a id="line-code-leanified-corereader-evidence-lean-587"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:587 --> **L587** 修订函数保留每个原先为真的输出，或在实际生成种子输入处增加真值。

<a id="line-code-leanified-corereader-evidence-lean-588"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:588 --> **L588** 说明 ProducedRevision 的预定范围。对应声明涉及：保存生产者及精确旧新谓词对象。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-589"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:589 --> **L589** 声明数据接口 ProducedRevision。保存生产者及精确旧新谓词对象。

<a id="line-code-leanified-corereader-evidence-lean-590"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:590 --> **L590** 标识哪个所有者生成了这一具体修订对象。

<a id="line-code-leanified-corereader-evidence-lean-591"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:591 --> **L591** 保存修订的真实前函数。

<a id="line-code-leanified-corereader-evidence-lean-592"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:592 --> **L592** 保存修订的真实后函数。

<a id="line-code-leanified-corereader-evidence-lean-593"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:593 --> **L593** 说明 GeneratingProcess.produce 的预定范围。对应声明涉及：由该过程构造带自身主体及实际旧函数、输出函数的修订。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-594"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:594 --> **L594** 定义 GeneratingProcess.produce。由该过程构造带自身主体及实际旧函数、输出函数的修订。

<a id="line-code-leanified-corereader-evidence-lean-595"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:595 --> **L595** 直接以该过程的所有者、原函数及计算所得输出修订构造修订对象。

<a id="line-code-leanified-corereader-evidence-lean-596"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:596 --> **L596** 定义 sampleGeneratingProcess。以主体十七、恒假旧谓词及零种子构造实际生成过程。

<a id="line-code-leanified-corereader-evidence-lean-597"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:597 --> **L597** 说明 OwnedRevisionExample 的预定范围。对应声明涉及：把自身来源与精确旧新函数关联到零输入上的实际变化，而全局主张仍无支持。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-598"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:598 --> **L598** 定义 OwnedRevisionExample。把自身来源与精确旧新函数关联到零输入上的实际变化，而全局主张仍无支持。

<a id="line-code-leanified-corereader-evidence-lean-599"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:599 --> **L599** 把修订生成者标识绑定到真实生成过程所有者。

<a id="line-code-leanified-corereader-evidence-lean-600"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:600 --> **L600** 把其前函数绑定到该过程的真实原函数。

<a id="line-code-leanified-corereader-evidence-lean-601"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:601 --> **L601** 把其后函数绑定到该过程的真实 outputRevision。

<a id="line-code-leanified-corereader-evidence-lean-602"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:602 --> **L602** 要求输入 0 处实际从此前 false 变为此后 true。

<a id="line-code-leanified-corereader-evidence-lean-603"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:603 --> **L603** 保留修订后输入 1 处真实为 false 的输出。

<a id="line-code-leanified-corereader-evidence-lean-604"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:604 --> **L604** 实际生成的后函数匹配输入 0 观测。

<a id="line-code-leanified-corereader-evidence-lean-605"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:605 --> **L605** 该记录仍不支持所有输入为真的主张。

<a id="line-code-leanified-corereader-evidence-lean-606"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:606 --> **L606** 说明 ownedRevisionExample 的预定范围。对应声明涉及：计算主体和对象联系，并用自产函数在一处失败反驳全称支持。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-607"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:607 --> **L607** 陈述经检查的结果 ownedRevisionExample。计算主体和对象联系，并用自产函数在一处失败反驳全称支持。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-608"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:608 --> **L608** 通过计算检查生成者身份、旧对象与输出修订关系及真实样本值；保留零输入记录相容性，留下全称支持的反证。

<a id="line-code-leanified-corereader-evidence-lean-609"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:609 --> **L609** 假定 zeroRecord 支持 allTrue，以该所有者实际生成的修订反驳它。

<a id="line-code-leanified-corereader-evidence-lean-610"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:610 --> **L610** 把假定支持应用于该所有者实际生成的后函数及输入 1；该修订在此仍返回 false。

<a id="line-code-leanified-corereader-evidence-lean-611"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:611 --> **L611** 消去所得 false=true 等式；实际修订构成证据相容反例。

<a id="line-code-leanified-corereader-evidence-lean-612"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:612 --> **L612** 说明 selfOriginDoesNotSupport 的预定范围。对应声明涉及：保留局部观察反模型，另加具有同一未获支持全局主张的真实自身旧新修订。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-613"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:613 --> **L613** 开始 CoreReader.Evidence.selfOriginDoesNotSupport 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-614"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:614 --> **L614** 登记来源单元 organon.charter.reflexivity.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-615"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:615 --> **L615** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-616"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:616 --> **L616** 陈述经检查的结果 selfOriginDoesNotSupport。保留局部观察反模型，另加具有同一未获支持全局主张的真实自身旧新修订。

<a id="line-code-leanified-corereader-evidence-lean-617"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:617 --> **L617** 计算 localGenerator 0 在 0 处为 true、在 1 处为 false。

<a id="line-code-leanified-corereader-evidence-lean-618"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:618 --> **L618** 要求该生成函数匹配同一输入 0 记录。

<a id="line-code-leanified-corereader-evidence-lean-619"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:619 --> **L619** 陈述全域支持失败，并纳入具体所有者、原对象与修订关系实例。

<a id="line-code-leanified-corereader-evidence-lean-620"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:620 --> **L620** 计算生成函数在 0 与 1 的值，给出零输入记录相容性，并纳入自有修订关系实例。

<a id="line-code-leanified-corereader-evidence-lean-621"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:621 --> **L621** 假定局部零输入观测蕴含每个相容函数的全部输入均输出 true。

<a id="line-code-leanified-corereader-evidence-lean-622"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:622 --> **L622** 把假定全称支持实例化到 localGenerator 0，再取输入 1；零输入相容性并未约束这一失败输入。

<a id="line-code-leanified-corereader-evidence-lean-623"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:623 --> **L623** 消去所得 false=true 等式；实际修订构成证据相容反例。

<a id="line-code-leanified-corereader-evidence-lean-624"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:624 --> **L624** 说明 localNotUniversal 的预定范围。对应声明涉及：常真函数与零点真函数都符合局部记录，但只有前者全称成立，故局部记录不支持全称结论。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-625"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:625 --> **L625** 开始 CoreReader.Evidence.localNotUniversal 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-626"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:626 --> **L626** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-627"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:627 --> **L627** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-628"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:628 --> **L628** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-629"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:629 --> **L629** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-630"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:630 --> **L630** 陈述经检查的结果 localNotUniversal。常真函数与零点真函数都符合局部记录，但只有前者全称成立，故局部记录不支持全称结论。

<a id="line-code-leanified-corereader-evidence-lean-631"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:631 --> **L631** 要求至少存在一个自然数输入处于观测单元素范围之外。

<a id="line-code-leanified-corereader-evidence-lean-632"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:632 --> **L632** 恒真函数匹配零输入观测。

<a id="line-code-leanified-corereader-evidence-lean-633"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:633 --> **L633** 局部生成器也匹配同一观测。

<a id="line-code-leanified-corereader-evidence-lean-634"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:634 --> **L634** 第一个函数全域为真，第二个却不是。

<a id="line-code-leanified-corereader-evidence-lean-635"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:635 --> **L635** 因此共同观测不支持全域为真。

<a id="line-code-leanified-corereader-evidence-lean-636"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:636 --> **L636** 提供观测范围以外的输入，并证明恒真函数与局部生成器都满足同一零输入观测。

<a id="line-code-leanified-corereader-evidence-lean-637"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:637 --> **L637** 恒真函数全域为真；保留已知支持反例，留下局部生成器全称主张的反证。

<a id="line-code-leanified-corereader-evidence-lean-638"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:638 --> **L638** 在输入 1 检验局部生成器的假定全域真值，而其实际结果为 false。

<a id="line-code-leanified-corereader-evidence-lean-639"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:639 --> **L639** 说明 hiddenDifference 的预定范围。对应声明涉及：两函数在零点范围相同，却在一处不同，说明排除范围不能否认相关差异。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-640"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:640 --> **L640** 开始 CoreReader.Evidence.hiddenDifference 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-641"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:641 --> **L641** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-642"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:642 --> **L642** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-643"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:643 --> **L643** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-644"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:644 --> **L644** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-645"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:645 --> **L645** 陈述经检查的结果 hiddenDifference。两函数在零点范围相同，却在一处不同，说明排除范围不能否认相关差异。

<a id="line-code-leanified-corereader-evidence-lean-646"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:646 --> **L646** 只对满足 n=0 的输入陈述两个函数相等。

<a id="line-code-leanified-corereader-evidence-lean-647"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:647 --> **L647** 陈述它们在输入 1 处真实输出不等。

<a id="line-code-leanified-corereader-evidence-lean-648"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:648 --> **L648** 分开输入 0 范围内一致与输入 1 处真实输出不同两个结论。

<a id="line-code-leanified-corereader-evidence-lean-649"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:649 --> **L649** 根据范围前提代入 n=0；两个函数都计算为 true。

<a id="line-code-leanified-corereader-evidence-lean-650"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:650 --> **L650** 说明 singleObservation 的预定范围。对应声明涉及：单条记录有兼容见证并支持局部结果，但不支持全输入结论。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-651"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:651 --> **L651** 开始 CoreReader.Evidence.singleObservation 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-652"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:652 --> **L652** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-653"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:653 --> **L653** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-654"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:654 --> **L654** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-655"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:655 --> **L655** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-656"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:656 --> **L656** 陈述经检查的结果 singleObservation。单条记录有兼容见证并支持局部结果，但不支持全输入结论。

<a id="line-code-leanified-corereader-evidence-lean-657"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:657 --> **L657** 要求存在与单次观测相容的真实函数，避免空证据语义。

<a id="line-code-leanified-corereader-evidence-lean-658"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:658 --> **L658** 该单条记录支持其真实输入 0 主张。

<a id="line-code-leanified-corereader-evidence-lean-659"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:659 --> **L659** 它不支持更强的全输入主张。

<a id="line-code-leanified-corereader-evidence-lean-660"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:660 --> **L660** 计算记录数量为一，并提供 localGenerator 0 作为真实相容见证。

<a id="line-code-leanified-corereader-evidence-lean-661"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:661 --> **L661** 从相容性直接提取获支持的输入 0 事实，并复用已证的 allTrue 支持失败。

<a id="line-code-leanified-corereader-evidence-lean-662"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:662 --> **L662** 说明 arithmeticFacet 的预定范围。对应声明涉及：以n=2为假设、n+1=3为结论构造推论面向。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-663"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:663 --> **L663** 定义 arithmeticFacet。以n=2为假设、n+1=3为结论构造推论面向。

<a id="line-code-leanified-corereader-evidence-lean-664"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:664 --> **L664** 定义 usesObservation。只按面向标签判断是否经验型，不判断命题是否可计算。

<a id="line-code-leanified-corereader-evidence-lean-665"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:665 --> **L665** 经验方面携带真实测试记录，因此将其分类为使用观测。

<a id="line-code-leanified-corereader-evidence-lean-666"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:666 --> **L666** 在此已表示的方法分类器中，把推论与价值方面分类为不使用观测。

<a id="line-code-leanified-corereader-evidence-lean-667"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:667 --> **L667** 说明 noUniversalChain 的预定范围。对应声明涉及：以二为模型证明算术推论面向成立且无需经验观察。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-668"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:668 --> **L668** 开始 CoreReader.Evidence.noUniversalChain 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-669"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:669 --> **L669** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-670"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:670 --> **L670** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-671"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:671 --> **L671** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-672"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:672 --> **L672** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-673"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:673 --> **L673** 陈述经检查的结果 noUniversalChain。以二为模型证明算术推论面向成立且无需经验观察。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-674"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:674 --> **L674** 提供 n=2 作为推论理论的非空见证，并指出其方面构造子不使用观测。

<a id="line-code-leanified-corereader-evidence-lean-675"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:675 --> **L675** 任取满足算术方面真实前提理论的自然数世界 n。

<a id="line-code-leanified-corereader-evidence-lean-676"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:676 --> **L676** 从真实单元素前提提取 n=2，而不是假定所需后继结论。

<a id="line-code-leanified-corereader-evidence-lean-677"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:677 --> **L677** 把算术结论 n+1=3 展开为剩余目标。

<a id="line-code-leanified-corereader-evidence-lean-678"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:678 --> **L678** 根据前提把 n 改写为 2；所需算术等式通过计算化简。

<a id="line-code-leanified-corereader-evidence-lean-679"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:679 --> **L679** 说明 Trial 的预定范围。对应声明涉及：分别保存设置、实际结果和记录结果三个自然数字段。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-680"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:680 --> **L680** 声明数据接口 Trial。分别保存设置、实际结果和记录结果三个自然数字段。

<a id="line-code-leanified-corereader-evidence-lean-681"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:681 --> **L681** 保存试次设置，与结果分开。

<a id="line-code-leanified-corereader-evidence-lean-682"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:682 --> **L682** 保存试次实际结果，无论记录是否准确。

<a id="line-code-leanified-corereader-evidence-lean-683"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:683 --> **L683** 保存独立记录的结果，以便比较准确性。

<a id="line-code-leanified-corereader-evidence-lean-684"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:684 --> **L684** 说明 Verified 的预定范围。对应声明涉及：记录结果等于给定实际结果即满足此验证谓词。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-685"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:685 --> **L685** 定义 Verified。记录结果等于给定实际结果即满足此验证谓词。

<a id="line-code-leanified-corereader-evidence-lean-686"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:686 --> **L686** 定义 Reproduced。只要求两次设置相等，不要求结果相同。

<a id="line-code-leanified-corereader-evidence-lean-687"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:687 --> **L687** 定义 Bounded。要求实际结果不超过固定阈值二。

<a id="line-code-leanified-corereader-evidence-lean-688"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:688 --> **L688** 说明 variableOutcomesStableBound 的预定范围。对应声明涉及：同设置的结果一和二不同，却都满足给定范围界限。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-689"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:689 --> **L689** 开始 CoreReader.Evidence.variableOutcomesStableBound 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-690"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:690 --> **L690** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-691"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:691 --> **L691** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-692"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:692 --> **L692** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-693"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:693 --> **L693** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-694"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:694 --> **L694** 陈述经检查的结果 variableOutcomesStableBound。同设置的结果一和二不同，却都满足给定范围界限。

<a id="line-code-leanified-corereader-evidence-lean-695"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:695 --> **L695** 固定第一试次：设置 0，实际及记录结果均为 1。

<a id="line-code-leanified-corereader-evidence-lean-696"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:696 --> **L696** 固定第二试次：设置相同，实际及记录结果均为 2。

<a id="line-code-leanified-corereader-evidence-lean-697"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:697 --> **L697** 要求两个明确固定试次的设置相同、真实结果不同，且都满足 actualOutcome ≤ 2。

<a id="line-code-leanified-corereader-evidence-lean-698"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:698 --> **L698** 计算两个相同设置的试次：实际结果 1 与 2 不同，却都满足 actualOutcome ≤ 2。

<a id="line-code-leanified-corereader-evidence-lean-699"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:699 --> **L699** 说明 verificationReproductionStability 的预定范围。对应声明涉及：用具体数字分别区分记录准确、设置复现和结果有界。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-700"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:700 --> **L700** 开始 CoreReader.Evidence.verificationReproductionStability 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-701"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:701 --> **L701** 登记来源单元 organon.grounds.scope#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-702"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:702 --> **L702** 登记来源单元 organon.grounds.scope#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-703"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:703 --> **L703** 登记来源单元 organon.grounds.scope#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-704"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:704 --> **L704** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-705"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:705 --> **L705** 陈述经检查的结果 verificationReproductionStability。用具体数字分别区分记录准确、设置复现和结果有界。

<a id="line-code-leanified-corereader-evidence-lean-706"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:706 --> **L706** 要求两个记录准确但设置不同的试次。

<a id="line-code-leanified-corereader-evidence-lean-707"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:707 --> **L707** 要求设置复现，同时第二记录不准确且实际结果超出界限。

<a id="line-code-leanified-corereader-evidence-lean-708"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:708 --> **L708** 要求界限保持，即使其中一个结果记录不准确。

<a id="line-code-leanified-corereader-evidence-lean-709"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:709 --> **L709** 分别计算各具体试次谓词，展示设置变化、记录不准确及界限失败或保持，而不混淆这些性质。

<a id="line-code-leanified-corereader-evidence-lean-710"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:710 --> **L710** 说明 Program 的预定范围。对应声明涉及：定义只含输入翻倍及常量的微型解释程序语法。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-711"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:711 --> **L711** 声明可选构造 Program。定义只含输入翻倍及常量的微型解释程序语法。

<a id="line-code-leanified-corereader-evidence-lean-712"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:712 --> **L712** 提供把实际输入加倍的解释程序语法。

<a id="line-code-leanified-corereader-evidence-lean-713"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:713 --> **L713** 提供常量输出解释程序语法，携带其返回自然数。

<a id="line-code-leanified-corereader-evidence-lean-714"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:714 --> **L714** 定义 Program.eval。执行翻倍或返回储存常量。

<a id="line-code-leanified-corereader-evidence-lean-715"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:715 --> **L715** 通过真实加法 n+n 计算 doubleInput 解释程序在 n 处的结果。

<a id="line-code-leanified-corereader-evidence-lean-716"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:716 --> **L716** 通过返回存储值计算常量程序，与输入无关。

<a id="line-code-leanified-corereader-evidence-lean-717"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:717 --> **L717** 说明 Process 的预定范围。对应声明涉及：保存实际输出函数和可缺失的解释程序。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-718"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:718 --> **L718** 声明数据接口 Process。保存实际输出函数和可缺失的解释程序。

<a id="line-code-leanified-corereader-evidence-lean-719"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:719 --> **L719** 保存同一过程在自然数输入上的真实输出函数。

<a id="line-code-leanified-corereader-evidence-lean-720"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:720 --> **L720** 保存过程可选的已提供解释程序，与输出函数分开。

<a id="line-code-leanified-corereader-evidence-lean-721"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:721 --> **L721** 说明 OutputContract 的预定范围。对应声明涉及：要求每个自然数输入的输出等于输入翻倍。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-722"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:722 --> **L722** 定义 OutputContract。要求每个自然数输入的输出等于输入翻倍。

<a id="line-code-leanified-corereader-evidence-lean-723"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:723 --> **L723** 说明 ExplanationContract 的预定范围。对应声明涉及：要求已附程序在所有输入上与同一过程输出相等，不断言因果理解。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-724"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:724 --> **L724** 定义 ExplanationContract。要求已附程序在所有输入上与同一过程输出相等，不断言因果理解。

<a id="line-code-leanified-corereader-evidence-lean-725"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:725 --> **L725** 要求实际提供程序，且其在每个自然数输入的计算等于该过程输出。

<a id="line-code-leanified-corereader-evidence-lean-726"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:726 --> **L726** 说明 outputOnlyProcess 的预定范围。对应声明涉及：给出正确翻倍输出，却不提供解释程序。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-727"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:727 --> **L727** 定义 outputOnlyProcess。给出正确翻倍输出，却不提供解释程序。

<a id="line-code-leanified-corereader-evidence-lean-728"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:728 --> **L728** 定义 explainedProcess。给同样输出并附上翻倍程序。

<a id="line-code-leanified-corereader-evidence-lean-729"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:729 --> **L729** 说明 processScope 的预定范围。对应声明涉及：把候选范围限定为同一被评过程，不缩窄合同的输入量词域。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-730"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:730 --> **L730** 定义 processScope。把候选范围限定为同一被评过程，不缩窄合同的输入量词域。

<a id="line-code-leanified-corereader-evidence-lean-731"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:731 --> **L731** 用真实等式 candidate=assessed 限制理论模型，而不是假定所需契约。

<a id="line-code-leanified-corereader-evidence-lean-732"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:732 --> **L732** 说明 processContractFacet 的预定范围。对应声明涉及：在精确被评过程身份假设下构造合同推论面向。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-733"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:733 --> **L733** 定义 processContractFacet。在精确被评过程身份假设下构造合同推论面向。

<a id="line-code-leanified-corereader-evidence-lean-734"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:734 --> **L734** 用这一准确对象身份范围与给定契约结论构造推论方面。

<a id="line-code-leanified-corereader-evidence-lean-735"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:735 --> **L735** 说明 processScopeModels 的预定范围。对应声明涉及：证明满足身份范围恰好等价于候选为同一被评过程。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-736"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:736 --> **L736** 陈述经检查的结果 processScopeModels。证明满足身份范围恰好等价于候选为同一被评过程。

<a id="line-code-leanified-corereader-evidence-lean-737"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:737 --> **L737** 陈述满足该范围恰等于成为受评过程。

<a id="line-code-leanified-corereader-evidence-lean-738"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:738 --> **L738** 用等于真实受评 Process 的谓词实例化 modelsSingleton，准确证明哪些候选满足 processScope。

<a id="line-code-leanified-corereader-evidence-lean-739"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:739 --> **L739** 说明 processContractDischarged 的预定范围。对应声明涉及：利用给定实际过程合同证明及范围身份等式，完成对应推论检查。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-740"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:740 --> **L740** 陈述经检查的结果 processContractDischarged。利用给定实际过程合同证明及范围身份等式，完成对应推论检查。

<a id="line-code-leanified-corereader-evidence-lean-741"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:741 --> **L741** 使用明确契约证明前提，得出同一对象契约方面的履行。

<a id="line-code-leanified-corereader-evidence-lean-742"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:742 --> **L742** 以受评过程自身作为其身份范围的模型，留下契约的语义蕴含。

<a id="line-code-leanified-corereader-evidence-lean-743"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:743 --> **L743** 任取候选及其处于真实受评过程身份范围的证明 hc。

<a id="line-code-leanified-corereader-evidence-lean-744"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:744 --> **L744** 从范围模型 hc 恢复候选恰为受评过程。

<a id="line-code-leanified-corereader-evidence-lean-745"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:745 --> **L745** 代入该过程身份，使契约目标针对实际受评对象。

<a id="line-code-leanified-corereader-evidence-lean-746"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:746 --> **L746** 使用明确给出的该对象契约证明前提；此一般辅助结果不会无前提地产生契约正确性。

<a id="line-code-leanified-corereader-evidence-lean-747"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:747 --> **L747** 说明 ProcessGrounds 的预定范围。对应声明涉及：为精确过程及合同面向要求规范Grounds，适用范围只含该面向。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-748"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:748 --> **L748** 定义 ProcessGrounds。为精确过程及合同面向要求规范Grounds，适用范围只含该面向。

<a id="line-code-leanified-corereader-evidence-lean-749"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:749 --> **L749** 要求给定契约具有 Grounds，使用规范表述，并将准确受评过程方面认定为适用。

<a id="line-code-leanified-corereader-evidence-lean-750"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:750 --> **L750** 列出的证据组合恰好包含同一过程契约方面。

<a id="line-code-leanified-corereader-evidence-lean-751"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:751 --> **L751** 陈述经检查的结果 processGrounds。从同一被评过程的实际合同证明构造匹配Grounds。

<a id="line-code-leanified-corereader-evidence-lean-752"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:752 --> **L752** 由受评过程处的明确契约证明，得出这些同一对象 ProcessGrounds。

<a id="line-code-leanified-corereader-evidence-lean-753"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:753 --> **L753** 把契约履行辅助结果应用于同一受评过程的明确证明。

<a id="line-code-leanified-corereader-evidence-lean-754"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:754 --> **L754** 拆分方面非空、准确适用性覆盖，以及各方面的主张、表述与履行义务。

<a id="line-code-leanified-corereader-evidence-lean-755"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:755 --> **L755** 适用性假设把方面确定为规定的唯一方面，因此它属于该单元素列表。

<a id="line-code-leanified-corereader-evidence-lean-756"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:756 --> **L756** 单元素成员关系把当前方面确定为规定方面；代入后检查其准确主张与依据。

<a id="line-code-leanified-corereader-evidence-lean-757"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:757 --> **L757** 组合相同契约主张、非空规范表述、与对象范围的语义连接及已确立履行。

<a id="line-code-leanified-corereader-evidence-lean-758"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:758 --> **L758** 说明 outputCorrectByEvaluation 的预定范围。对应声明涉及：从实际输出函数直接证明全输入翻倍，不假定成功标记。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-759"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:759 --> **L759** 陈述经检查的结果 outputCorrectByEvaluation。从实际输出函数直接证明全输入翻倍，不假定成功标记。 给出的证明项使用所示构造见证或先前引理，而不增加公理。

<a id="line-code-leanified-corereader-evidence-lean-760"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:760 --> **L760** 说明 outputOnlyNoExplanation 的预定范围。对应声明涉及：因同一过程储存none而拒绝已附解释程序的存在。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-761"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:761 --> **L761** 陈述经检查的结果 outputOnlyNoExplanation。因同一过程储存none而拒绝已附解释程序的存在。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-762"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:762 --> **L762** 任何解释契约都需提供程序，令其 some 值等于该过程实际的 none 回应；不同选项构造子使之不可能。

<a id="line-code-leanified-corereader-evidence-lean-763"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:763 --> **L763** 说明 FullProcessContract 的预定范围。对应声明涉及：要求同一过程既输出正确，又附有输出一致的解释程序。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-764"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:764 --> **L764** 定义 FullProcessContract。要求同一过程既输出正确，又附有输出一致的解释程序。

<a id="line-code-leanified-corereader-evidence-lean-765"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:765 --> **L765** 说明 OutputContractEvidence 的预定范围。对应声明涉及：组合有根据输出及非空精确过程范围，以该模型反驳更强完整合同。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-766"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:766 --> **L766** 定义 OutputContractEvidence。组合有根据输出及非空精确过程范围，以该模型反驳更强完整合同。

<a id="line-code-leanified-corereader-evidence-lean-767"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:767 --> **L767** 要求真实只输出过程具有输出正确性依据。

<a id="line-code-leanified-corereader-evidence-lean-768"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:768 --> **L768** 保留该过程自身作为准确评估范围中的实例。

<a id="line-code-leanified-corereader-evidence-lean-769"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:769 --> **L769** 否定同一范围蕴含更强的输出与解释联合契约。

<a id="line-code-leanified-corereader-evidence-lean-770"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:770 --> **L770** 说明 outputContractEvidence 的预定范围。对应声明涉及：由计算建立输出Grounds，并用同一过程缺少解释反驳完整合同蕴涵。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-771"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:771 --> **L771** 陈述经检查的结果 outputContractEvidence。由计算建立输出Grounds，并用同一过程缺少解释反驳完整合同蕴涵。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-772"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:772 --> **L772** 提供真实输出契约的依据及过程自身的范围见证，再在同一范围内否定更强契约。

<a id="line-code-leanified-corereader-evidence-lean-773"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:773 --> **L773** 假定该准确过程范围蕴含更强的输出与解释联合契约。

<a id="line-code-leanified-corereader-evidence-lean-774"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:774 --> **L774** 在 outputOnlyProcess 自身处实例化假定的完整契约蕴含；其解释部分与已证的解释缺失矛盾。

<a id="line-code-leanified-corereader-evidence-lean-775"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:775 --> **L775** 说明 ScopedApplicationEvidence 的预定范围。对应声明涉及：要求两个不同应用合同分别具有Grounds及非空精确过程范围。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-776"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:776 --> **L776** 定义 ScopedApplicationEvidence。要求两个不同应用合同分别具有Grounds及非空精确过程范围。

<a id="line-code-leanified-corereader-evidence-lean-777"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:777 --> **L777** 纳入 outputOnlyProcess 的输出正确性依据。

<a id="line-code-leanified-corereader-evidence-lean-778"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:778 --> **L778** 纳入 explainedProcess 的输出与解释联合依据。

<a id="line-code-leanified-corereader-evidence-lean-779"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:779 --> **L779** 对每个候选明确第一个范围准确固定为 outputOnlyProcess。

<a id="line-code-leanified-corereader-evidence-lean-780"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:780 --> **L780** 同样明确第二个范围准确固定为 explainedProcess。

<a id="line-code-leanified-corereader-evidence-lean-781"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:781 --> **L781** 要求两个真实过程身份理论均可满足。

<a id="line-code-leanified-corereader-evidence-lean-782"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:782 --> **L782** 说明 scopedApplicationEvidence 的预定范围。对应声明涉及：提供实际全输入输出证明，并为强合同提供翻倍解释程序。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-783"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:783 --> **L783** 陈述经检查的结果 scopedApplicationEvidence。提供实际全输入输出证明，并为强合同提供翻倍解释程序。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-evidence-lean-784"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:784 --> **L784** 通过计算构造只输出依据，并留下有解释过程的更强契约证明。

<a id="line-code-leanified-corereader-evidence-lean-785"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:785 --> **L785** 提供准确的过程身份范围等价关系，并用各过程自身作为其非空范围见证。

<a id="line-code-leanified-corereader-evidence-lean-786"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:786 --> **L786** 提供准确的过程身份范围等价关系，并用各过程自身作为其非空范围见证。

<a id="line-code-leanified-corereader-evidence-lean-787"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:787 --> **L787** 对 explainedProcess，通过自反性证明每个加倍输出，并提供实际给出且外延忠实的解释程序 doubleInput。

<a id="line-code-leanified-corereader-evidence-lean-788"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:788 --> **L788** 说明 outputNotExplanation 的预定范围。对应声明涉及：证明输出正确但无已附解释，并附同对象Grounds及反模型证据。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-789"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:789 --> **L789** 开始 CoreReader.Evidence.outputNotExplanation 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-790"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:790 --> **L790** 登记来源单元 organon.grounds.capabilities#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-791"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:791 --> **L791** 登记来源单元 organon.grounds.capabilities#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-792"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:792 --> **L792** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-793"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:793 --> **L793** 陈述经检查的结果 outputNotExplanation。证明输出正确但无已附解释，并附同对象Grounds及反模型证据。

<a id="line-code-leanified-corereader-evidence-lean-794"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:794 --> **L794** 保留该过程解释契约缺失及其范围内输出证据。

<a id="line-code-leanified-corereader-evidence-lean-795"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:795 --> **L795** 组合真实输出正确性、同一过程解释缺失及其匹配的范围内输出证据。

<a id="line-code-leanified-corereader-evidence-lean-796"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:796 --> **L796** 说明 applicationContractsDiffer 的预定范围。对应声明涉及：证明仅输出不足以满足强合同，解释过程满足两者；两个应用各有对应Grounds。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-797"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:797 --> **L797** 开始 CoreReader.Evidence.applicationContractsDiffer 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-798"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:798 --> **L798** 登记来源单元 organon.grounds.capabilities#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-799"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:799 --> **L799** 登记来源单元 organon.grounds.capabilities#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-800"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:800 --> **L800** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-801"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:801 --> **L801** 陈述经检查的结果 applicationContractsDiffer。证明仅输出不足以满足强合同，解释过程满足两者；两个应用各有对应Grounds。

<a id="line-code-leanified-corereader-evidence-lean-802"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:802 --> **L802** 只输出过程满足输出正确性，却未满足输出与解释联合契约。

<a id="line-code-leanified-corereader-evidence-lean-803"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:803 --> **L803** 有解释过程满足两个真实契约。

<a id="line-code-leanified-corereader-evidence-lean-804"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:804 --> **L804** 纳入两个应用契约的明确范围内依据与非空见证。

<a id="line-code-leanified-corereader-evidence-lean-805"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:805 --> **L805** 对 outputOnlyProcess 提供真实输出正确性，并通过提取不可能解释组件反驳任何联合契约。

<a id="line-code-leanified-corereader-evidence-lean-806"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:806 --> **L806** 对 explainedProcess 计算全部加倍输出，提供忠实 doubleInput 语法，并纳入两个契约匹配的范围内依据。

<a id="line-code-leanified-corereader-evidence-lean-807"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:807 --> **L807** 说明 ExternalCertificate 的预定范围。对应声明涉及：把输出证明绑定到精确过程及不同评估者、被评者编号；这是数学角色模型，不认证现实出处。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-808"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:808 --> **L808** 声明数据接口 ExternalCertificate。把输出证明绑定到精确过程及不同评估者、被评者编号；这是数学角色模型，不认证现实出处。

<a id="line-code-leanified-corereader-evidence-lean-809"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:809 --> **L809** 保存外部评估者标识。

<a id="line-code-leanified-corereader-evidence-lean-810"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:810 --> **L810** 保存受评参与者标识；证书类型已固定受评 Process。

<a id="line-code-leanified-corereader-evidence-lean-811"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:811 --> **L811** 把参与者标识不同规定为明确证书字段。

<a id="line-code-leanified-corereader-evidence-lean-812"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:812 --> **L812** 要求同一过程每个输入加倍输出的证明；一般证书假定该字段，具体证书则构造它。

<a id="line-code-leanified-corereader-evidence-lean-813"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:813 --> **L813** 说明 externalOutputCertificate 的预定范围。对应声明涉及：由实际输出计算构造评估者四十二对被评对象七的证书。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-814"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:814 --> **L814** 定义 externalOutputCertificate。由实际输出计算构造评估者四十二对被评对象七的证书。

<a id="line-code-leanified-corereader-evidence-lean-815"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:815 --> **L815** 构造参与者 42 与 7，计算其不等，并依真实程序自反性证明每个加倍输出。

<a id="line-code-leanified-corereader-evidence-lean-816"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:816 --> **L816** 说明 externalAssessment 的预定范围。对应声明涉及：由不同参与者证书提供匹配输出Grounds，而被评过程仍不返回解释。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-817"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:817 --> **L817** 开始 CoreReader.Evidence.externalAssessment 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-818"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:818 --> **L818** 登记来源单元 organon.grounds.capabilities#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-819"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:819 --> **L819** 登记来源单元 organon.grounds.capabilities#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-820"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:820 --> **L820** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-821"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:821 --> **L821** 陈述经检查的结果 externalAssessment。由不同参与者证书提供匹配输出Grounds，而被评过程仍不返回解释。

<a id="line-code-leanified-corereader-evidence-lean-822"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:822 --> **L822** 要求存在以 outputOnlyProcess 为索引的真实外部证书。

<a id="line-code-leanified-corereader-evidence-lean-823"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:823 --> **L823** 确定其评估者为 42、受评参与者为 7。

<a id="line-code-leanified-corereader-evidence-lean-824"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:824 --> **L824** 要求两者不同，且同一过程真实输出正确。

<a id="line-code-leanified-corereader-evidence-lean-825"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:825 --> **L825** 还保留同一输出契约匹配的 ProcessGrounds。

<a id="line-code-leanified-corereader-evidence-lean-826"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:826 --> **L826** 仍否定该实际过程具有内部解释契约。

<a id="line-code-leanified-corereader-evidence-lean-827"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:827 --> **L827** 使用真实 externalOutputCertificate，参与者固定为 42 与 7，并带有两者不同的证明。

<a id="line-code-leanified-corereader-evidence-lean-828"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:828 --> **L828** 从该具体证书提取全称输出正确性，其证明由真实程序构造。

<a id="line-code-leanified-corereader-evidence-lean-829"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:829 --> **L829** 使用同一具体输出证明，为该 outputOnlyProcess 构造匹配的 ProcessGrounds。

<a id="line-code-leanified-corereader-evidence-lean-830"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:830 --> **L830** 保留 outputOnlyNoExplanation，因此外部证书不声称存在内部解释。

<a id="line-code-leanified-corereader-evidence-lean-831"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:831 --> **L831** 说明 arithmeticArticulation 的预定范围。对应声明涉及：取得算术推论面向的规范表达。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-832"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:832 --> **L832** 定义 arithmeticArticulation。取得算术推论面向的规范表达。

<a id="line-code-leanified-corereader-evidence-lean-833"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:833 --> **L833** 说明 nonExecutableAssessment 的预定范围。对应声明涉及：实际算术根据检查不要求经验测试，同时保留经验面向的观察义务。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-evidence-lean-834"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:834 --> **L834** 开始 CoreReader.Evidence.nonExecutableAssessment 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-evidence-lean-835"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:835 --> **L835** 登记来源单元 organon.relationships.terms#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-836"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:836 --> **L836** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-837"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:837 --> **L837** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-838"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:838 --> **L838** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-evidence-lean-839"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:839 --> **L839** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-evidence-lean-840"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:840 --> **L840** 陈述经检查的结果 nonExecutableAssessment。实际算术根据检查不要求经验测试，同时保留经验面向的观察义务。

<a id="line-code-leanified-corereader-evidence-lean-841"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:841 --> **L841** 要求仅用 arithmeticFacet，为 n+1=3 提供匹配的规范 Grounds。

<a id="line-code-leanified-corereader-evidence-lean-842"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:842 --> **L842** 规定该推论方面不使用观测。

<a id="line-code-leanified-corereader-evidence-lean-843"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:843 --> **L843** 同时纳入确实使用观测且真实已履行的经验方面。

<a id="line-code-leanified-corereader-evidence-lean-844"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:844 --> **L844** 构造算术主张的非空且覆盖适用性的 Grounds，保留其无观测分类，并纳入有效的观测开关方面。

<a id="line-code-leanified-corereader-evidence-lean-845"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:845 --> **L845** 单元素成员关系把受评方面固定为 arithmeticFacet，因此检查其具体假设与结论。

<a id="line-code-leanified-corereader-evidence-lean-846"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:846 --> **L846** 使用同一算术方面已证的履行，配以非空规范表述及其准确语义连接。

<a id="line-code-leanified-corereader-evidence-lean-848"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:848 --> **L848** 关闭命名空间 CoreReader.Evidence；这不增加证明或前提。

<a id="code-leanified-corereader-integration-lean"></a>
### `leanified/CoreReader/Integration.lean`

<!-- lean-code leanified/CoreReader/Integration.lean -->
```lean
import CoreReader.Agency
import CoreReader.Choice

namespace CoreReader.Integration
open CoreReader.Logic CoreReader.Evidence CoreReader.Agency CoreReader.Choice

/- Canonical articulation preserves the actual assessment contents of each facet. -/
theorem canonicalGrounds {W : Type} (claim : Claim W) (facets : List (Facet W))
    (hne : facets ≠ []) (checked : ∀ f ∈ facets, f.claim = claim ∧ FacetDischarged f) :
    Grounds claim canonicalArticulation (fun f => f ∈ facets) facets := by
  exact ⟨hne, fun _ h => h, fun f hf =>
    ⟨(checked f hf).1, canonicalArticulated f (checked f hf).2,
      canonicalFacetArticulated f, (checked f hf).2⟩⟩

theorem canonicalGroundsForSingleton {W : Type} (f : Facet W) (checked : FacetDischarged f) :
    Grounds f.claim canonicalArticulation (fun g => g = f) [f] := by
  refine ⟨by simp, (by intro g hg; cases hg; simp), ?_⟩
  intro g hg
  simp only [List.mem_singleton] at hg
  subst g
  exact ⟨rfl, canonicalArticulated f checked, canonicalFacetArticulated f, checked⟩

/- A mode selects whether a system applies or waives the modeled governance rule. -/
inductive Mode | apply | waive
  deriving DecidableEq, Repr

/- The four hypotheses vary algorithm and governance independently for the same assessed system. -/
abbrev World := Candidate × Mode

def actual : World := (.identity, .apply)

/- A method's form and its possible executable realizations belong to one object. -/
structure Method where
  form : Form
  realize : World → Implementation

/- System fields identify the owner, its method, its current principle form, policy and work. -/
structure System where
  owner : Nat
  method : Method
  principleForm : Form
  governance : World → Mode
  requirements : Requirements

def policyFor : Mode → Policy
  | .apply => openPolicy
  | .waive => neutralPolicy

def workFor (owner : Nat) : Mode → List WorkRecord
  | .apply => completeOwnWork owner
  | .waive => []

def System.policy (s : System) (w : World) : Policy := policyFor (s.governance w)
def System.rules (s : System) (_w : World) : List Principle := ownRules s.owner
def System.work (s : System) (w : World) : List WorkRecord := workFor s.owner (s.governance w)

def actualSystem : System where
  owner := 0
  method := ⟨⟨.method, 0⟩, fun w => implementation w.1⟩
  principleForm := ⟨.principle, 0⟩
  governance := Prod.snd
  requirements := identityRequirements

def systemCapability (s : System) : Claim World :=
  fun w => ∀ n, s.requirements.inputs n → (s.method.realize w).run n = s.requirements.expected n

def systemBudget (s : System) : Claim World :=
  fun w => (s.method.realize w).cost ≤ s.requirements.budget

def systemObservation (s : System) : Record World :=
  ⟨fun w => decide ((s.method.realize w).run 0 = s.requirements.expected 0), true⟩

def systemHeld (s : System) : Theory World :=
  union (singleton (systemCapability s)) (singleton (systemBudget s))

inductive Question | correctOutput | affordable
  deriving DecidableEq, Repr

def systemContext (s : System) : Context World Question :=
  ⟨singleton (Compatible [systemObservation s]),
    (fun q => match q with | .correctOutput => systemCapability s | .affordable => systemBudget s),
    fun w => (s.method.realize w).domain 0 ∧ w.2 = .apply⟩

abbrev capability := systemCapability actualSystem
abbrev observation := systemObservation actualSystem
abbrev held := systemHeld actualSystem
abbrev context := systemContext actualSystem

/- The output observation identifies the algorithm, without identifying its independently varied governance mode. -/
theorem observationIdentifies (w : World) : Compatible [observation] w ↔ w.1 = .identity := by
  rcases w with ⟨candidate, mode⟩
  cases candidate <;> simp [Compatible, observation, systemObservation, actualSystem,
    implementation, identityRequirements, identityImpl, successorImpl]

theorem capabilityActual : capability actual := fun _ _ => rfl

theorem observedCapability : Supports [observation] capability := by
  intro w hw
  have hid := (observationIdentifies w).1 hw
  rcases w with ⟨candidate, mode⟩
  change candidate = .identity at hid
  subst candidate
  exact fun _ _ => rfl

def capabilityFacet : Facet World := .empirical [observation] (fun _ => True) capability (fun _ => True)

theorem capabilityFacetChecked : FacetDischarged capabilityFacet := by
  exact ⟨⟨actual, (observationIdentifies actual).2 rfl, trivial⟩,
    (fun w hw _ => observedCapability w hw), fun _ _ => trivial⟩

theorem capabilityGrounds : Grounds capability canonicalArticulation
    (fun f => f = capabilityFacet) [capabilityFacet] :=
  canonicalGroundsForSingleton capabilityFacet capabilityFacetChecked

theorem actualAdmissible : Admissible held context actual := by
  refine ⟨(modelsUnion _ _ _).2 ⟨(modelsSingleton _ _).2 capabilityActual,
    (modelsSingleton _ _).2 (by change 1 ≤ 1; decide)⟩,
    (modelsSingleton _ _).2 ((observationIdentifies actual).2 rfl), trivial, rfl⟩

theorem jointConsistent : Consistent held context :=
  consequenceConsistency held context ⟨actual, actualAdmissible⟩

/- The current method/principle forms, judgments, rules and own work are read from this very system and world. -/
def Charter (s : System) (w : World) : Prop :=
  Generative (s.policy w) ∧ Consistent (systemHeld s) (systemContext s) ∧
  Reflexive s.owner (s.rules w) (s.work w) ∧
  (s.policy w).current s.method.form ∧ (s.policy w).current s.principleForm

theorem charterChecked : Charter actualSystem actual :=
  ⟨⟨Or.inl rfl, fun _ _ => trivial⟩, jointConsistent, completeOwnWork_reflexive 0, rfl, rfl⟩

/- Revision adds a supported input-specific assertion about the same system's realized method. -/
def revisedHeld : Theory World := union held
  (singleton (fun w => (actualSystem.method.realize w).run 0 = actualSystem.requirements.expected 0))

def initialSnapshot : Snapshot World Question := ⟨held, context, 0⟩
def revisedSnapshot : Snapshot World Question := ⟨revisedHeld, context, 1⟩

/-- organon-map CoreReader.Integration.revisionKeepsConsistency
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem revisionKeepsConsistency :
    Charter actualSystem actual ∧ Consistent revisedHeld context ∧
    TruthfulReport initialSnapshot revisedSnapshot true ∧
    ¬ TruthfulReport initialSnapshot revisedSnapshot false := by
  refine ⟨charterChecked, consequenceConsistency revisedHeld context ⟨actual,
    (modelsUnion _ _ _).2 ⟨actualAdmissible.1, (modelsSingleton _ _).2 rfl⟩,
    actualAdmissible.2⟩, (fun _ => rfl), ?_⟩
  intro h
  have bad := h (Or.inr (by decide))
  cases bad

/- A claim about this system's method is assessed as its owner's system claim. -/
def OwnCapabilityDuty (s : System) (w : World) (facets : List (Facet World)) : Prop :=
  Performed (s.work w) (.system s.owner) .assessment ∧
  Grounds (systemCapability s) canonicalArticulation (fun f => f ∈ facets) facets

/-- organon-map CoreReader.Integration.ownCapabilityGrounded
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem ownCapabilityGrounded :
    OwnCapabilityDuty actualSystem actual [capabilityFacet] ∧ capability actual := by
  refine ⟨⟨?_, ?_⟩, capabilityActual⟩
  · exact ownAssessmentPerformed 0 (.system 0) (by simp [ownSubjects])
  · exact canonicalGrounds capability [capabilityFacet] (by simp)
      (by intro f hf; simp only [List.mem_singleton] at hf; cases hf; exact ⟨rfl, capabilityFacetChecked⟩)

/- This cost observation is true of both algorithms but does not discriminate their output behavior. -/
def costAllowanceRecord : Record World :=
  ⟨fun w => decide ((actualSystem.method.realize w).cost ≤ 2), true⟩

def unsupportedCapabilityFacet : Facet World :=
  .empirical [costAllowanceRecord] (fun _ => True) capability (fun _ => True)

theorem costCompatibleWithFailure : Compatible [costAllowanceRecord] (.successor, .apply) := by
  intro r hr
  simp only [List.mem_singleton] at hr
  subst r
  rfl

theorem costDoesNotSupportOutput : ¬ Supports [costAllowanceRecord] capability := by
  intro h
  have bad := h (.successor, .apply) costCompatibleWithFailure 0 trivial
  cases bad

theorem unsupportedGrounds : ¬ Grounds capability canonicalArticulation
    (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
  intro h
  have discharged := (h.2.2 unsupportedCapabilityFacet (by simp)).2.2.2
  exact costDoesNotSupportOutput (fun w hw => discharged.2.1 w hw trivial)

/- Five separately adopted requirements govern distinct operations; the mode does not give them priority over one another. -/
inductive Commitment | generation | consistency | reflexivity | grounds | choice
  deriving DecidableEq, Repr

/- A Grounds policy governs arbitrary claims, articulations and applicable facets, rather than only one capability claim. -/
def groundsPermission (mode : Mode) (claim : Claim World) (a : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World)) : Prop :=
  match mode with
  | .apply => Grounds claim a applicable facets
  | .waive => True

def GroundsProvision (mode : Mode) : Prop :=
  ∀ claim a applicable facets, groundsPermission mode claim a applicable facets →
    Grounds claim a applicable facets

theorem groundsProvisionMeaning (mode : Mode) : GroundsProvision mode ↔ mode = .apply := by
  cases mode with
  | apply => exact ⟨fun _ => rfl, fun _ _ _ _ _ h => h⟩
  | waive =>
    constructor
    · intro h
      exact False.elim (unsupportedGrounds (h capability canonicalArticulation
        (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] trivial))
    · intro h; cases h

/- The consistency policy checks a whole same-context theory, not isolated judgments. -/
def consistencyPermission (mode : Mode) (t : Theory World) (c : Context World Question) : Prop :=
  match mode with | .apply => Consistent t c | .waive => True

def conflictingHeld : Theory World := union (singleton capability) (singleton (fun w => ¬ capability w))

theorem conflictConsequences :
    Consequence conflictingHeld context .correctOutput true ∧
    Consequence conflictingHeld context .correctOutput false := by
  exact ⟨fun w hw => hw.1 capability (Or.inl rfl),
    fun w hw => hw.1 (fun w => ¬ capability w) (Or.inr rfl)⟩

theorem conflictingHeldInconsistent : ¬ Consistent conflictingHeld context :=
  conflictRequiresChange conflictingHeld context .correctOutput conflictConsequences.1 conflictConsequences.2

/- The selection policy applies the actual output/budget and relevant-reason conditions to every implementation. -/
def choicePermission (mode : Mode) (req : Requirements) (i : Implementation) (reasons : List Reason) : Prop :=
  match mode with | .apply => JustifiedChoice req i reasons | .waive => True

/- The following consequences are computed from distinct rule applications; they are not interchangeable support flags. -/
def proposedOperation : Mode → Operation
  | .apply => .successor
  | .waive => .copy

def selfSamples : Mode → List Nat
  | .apply => [0, 1]
  | .waive => [1]

noncomputable def conflictDecision (mode : Mode) : Bool :=
  @decide (consistencyPermission mode conflictingHeld context) (Classical.propDecidable _)

noncomputable def groundsDecision (mode : Mode) (facet : Facet World) : Bool :=
  @decide (groundsPermission mode facet.claim canonicalArticulation (fun f => f = facet) [facet])
    (Classical.propDecidable _)

noncomputable def choiceDecision (mode : Mode) (i : Implementation) (reasons : List Reason) : Bool :=
  @decide (choicePermission mode identityRequirements i reasons) (Classical.propDecidable _)

theorem decisionsApply : conflictDecision .apply = false ∧
    groundsDecision .apply unsupportedCapabilityFacet = false ∧
    groundsDecision .apply capabilityFacet = true ∧
    choiceDecision .apply cheapSuccessor [.method .simplicity] = false ∧
    choiceDecision .apply identityImpl objectiveReason = true := by
  classical
  simp only [conflictDecision, groundsDecision, choiceDecision, consistencyPermission,
    groundsPermission, choicePermission]
  exact ⟨decide_eq_false conflictingHeldInconsistent,
    decide_eq_false unsupportedGrounds, decide_eq_true capabilityGrounds,
    decide_eq_false eligibleInternalReasonNotSufficient.2, decide_eq_true identityJustified⟩

theorem decisionsWaive : conflictDecision .waive = true ∧
    groundsDecision .waive unsupportedCapabilityFacet = true ∧
    choiceDecision .waive cheapSuccessor [.method .simplicity] = true := by
  exact ⟨@decide_eq_true (consistencyPermission .waive conflictingHeld context)
    (Classical.propDecidable _) trivial,
    @decide_eq_true (groundsPermission .waive unsupportedCapabilityFacet.claim canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet]) (Classical.propDecidable _) trivial,
    @decide_eq_true (choicePermission .waive identityRequirements cheapSuccessor [.method .simplicity])
      (Classical.propDecidable _) trivial⟩

/- Each application supplies its own outcome type, adopted objective, constraints and actual option-indexed reasons. -/
noncomputable def commitmentPositionFor (c : Commitment) (chosenMode : Mode) : ValuePosition World :=
  match c with
  | .generation => {
      Position := Mode, Outcome := Operation, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => proposedOperation mode,
      objective := fun op => op.run 0 ≠ Operation.copy.run 0,
      constraints := fun _ mode => Generative (policyFor mode),
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ mode => (proposedOperation mode).run 0 = 1 ∧ Operation.copy.run 0 = 0],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => ¬ Expanded baseState inflatedState,
      response := fun _ => some "Pursuing expansion does not guarantee it; assess the actual before and after capabilities separately" }
  | .consistency => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => conflictDecision mode,
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => consistencyPermission mode held context,
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => Consequence conflictingHeld context .correctOutput true ∧
        Consequence conflictingHeld context .correctOutput false],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => ¬ Entails (emptyTheory : Theory Bool) (fun w => w = true),
      response := fun _ => some "Consistency alone does not establish sufficient support; assess the claim with its grounds as well" }
  | .reflexivity => {
      Position := Mode, Outcome := List Nat, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => selfSamples mode,
      objective := fun samples => ∃ n ∈ samples, ownArithmeticPrinciple n = false,
      constraints := fun _ mode => Reflexive 0 (ownRules 0) (workFor 0 mode),
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => ownArithmeticPrinciple 0 = false ∧ ownArithmeticPrinciple 1 = true],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false,
      response := fun _ => some "A passing self-test does not certify the principle; retain the relevant counterexample and its scope" }
  | .grounds => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => groundsDecision mode unsupportedCapabilityFacet,
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => groundsPermission mode capability canonicalArticulation
        (fun f => f = capabilityFacet) [capabilityFacet],
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => Compatible [costAllowanceRecord] (.successor, .apply) ∧
        ¬ capability (.successor, .apply)],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => OutputContract outputOnlyProcess ∧ ¬ ExplanationContract outputOnlyProcess,
      response := fun _ => some "Grounds allows an external output assessment without requiring this process to provide an internal explanation" }
  | .choice => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => choiceDecision mode cheapSuccessor [.method .simplicity],
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => choicePermission mode identityRequirements identityImpl objectiveReason,
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => cheapSuccessor.run 0 = 1 ∧ identityRequirements.expected 0 = 0 ∧
        cheapSuccessor.cost ≤ identityRequirements.budget],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => identityImpl.conventional = true ∧ identityImpl.established = true,
      response := fun _ => some "An existing conventional method remains eligible when actual output and budget reasons justify it" }

noncomputable def commitmentPosition (c : Commitment) : ValuePosition World := commitmentPositionFor c .apply

/- The fact used as a reason has content before evaluating the adopted rule's consequence. -/
theorem positionReasons (c : Commitment) :
    ∀ r ∈ (commitmentPosition c).reasons, r actual (commitmentPosition c).adopted := by
  cases c <;> intro r hr <;> dsimp [commitmentPosition, commitmentPositionFor] at hr ⊢ <;>
    rcases List.mem_singleton.mp hr with rfl
  · exact ⟨rfl, rfl⟩
  · exact conflictConsequences
  · exact ⟨rfl, rfl⟩
  · refine ⟨costCompatibleWithFailure, ?_⟩
    intro h
    have bad := h 0 trivial
    cases bad
  · exact ⟨rfl, rfl, by decide⟩

/- Each adopted rule has its stated consequence in this explicitly defined application; this is not ultimate value justification. -/
theorem positionConsequence (c : Commitment) (w : World) : (commitmentPosition c).consequence w := by
  cases c <;> dsimp [commitmentPosition, commitmentPositionFor, ValuePosition.consequence]
  · exact ⟨by decide, ⟨Or.inl rfl, fun _ _ => trivial⟩⟩
  · exact ⟨decisionsApply.1, jointConsistent⟩
  · exact ⟨⟨0, by simp [selfSamples], rfl⟩, completeOwnWork_reflexive 0⟩
  · exact ⟨decisionsApply.2.1, capabilityGrounds⟩
  · exact ⟨decisionsApply.2.2.2.1, identityJustified⟩

theorem positionProcedure (c : Commitment) : ValueProcedure (commitmentPosition c) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · cases c <;> simp [commitmentPosition, commitmentPositionFor]
  · refine ⟨actual, ?_, ?_, ?_, positionReasons c⟩
    · cases c <;> exact (modelsSingleton _ _).2 rfl
    · cases c <;> rfl
    · cases c <;> rfl
  · intro w _ _ _
    exact positionConsequence c w
  · intro w _ _
    cases c <;> exact ⟨_, rfl, by decide⟩

/- Criticism is instantiated within the adopted position's actual limit rather than made vacuous. -/
theorem criticismWithinScope (c : Commitment) :
    (commitmentPosition c).limits actual ∧ (commitmentPosition c).relevantCriticism actual := by
  constructor
  · cases c <;> rfl
  · cases c
    · simp [commitmentPosition, commitmentPositionFor, Expanded, baseState, inflatedState]
    · exact consistentIncomplete.2.1
    · exact ⟨rfl, rfl⟩
    · exact ⟨outputNotExplanation.1, outputNotExplanation.2.1⟩
    · exact ⟨rfl, rfl⟩

/- Waiving the rule changes the actual computed outcome or an explicit adopted constraint; old reasons cannot certify it unchanged. -/
theorem oppositeConsequenceFails (c : Commitment) (w : World) :
    ¬ (commitmentPositionFor c .waive).consequence w := by
  cases c <;> intro h
  · exact permissionNotValuation.2.2 h.2
  · have bad : conflictDecision .waive = false := h.1
    rw [decisionsWaive.1] at bad
    cases bad
  · obtain ⟨n, hn, hf⟩ := h.1
    change n ∈ [1] at hn
    have he : n = 1 := List.mem_singleton.mp hn
    subst n
    cases hf
  · have bad : groundsDecision .waive unsupportedCapabilityFacet = false := h.1
    rw [decisionsWaive.2.1] at bad
    cases bad
  · have bad : choiceDecision .waive cheapSuccessor [.method .simplicity] = false := h.1
    rw [decisionsWaive.2.2] at bad
    cases bad

theorem oppositeProcedureRejected (c : Commitment) : ¬ ValueProcedure (commitmentPositionFor c .waive) := by
  intro h
  obtain ⟨w, hs, hl, _, hr⟩ := h.2.1
  exact oppositeConsequenceFails c w (h.2.2.1 w hs hl hr)

/- Each statement names adoption of a particular rule; its defined policy gives that option its meaning. -/
noncomputable def commitmentClaim (c : Commitment) : Claim World := (commitmentPosition c).commitment

noncomputable def commitmentFacet (c : Commitment) : Facet World := .value (commitmentPosition c)

/-- organon-map CoreReader.Integration.reasonsBelongToCommitments
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem reasonsBelongToCommitments (c : Commitment) :
    Grounds (commitmentClaim c) canonicalArticulation
      (fun f => f = commitmentFacet c) [commitmentFacet c] ∧
    JointAdoption (commitmentPosition c) ∧
    (commitmentPosition c).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor c .waive) := by
  exact ⟨canonicalGroundsForSingleton (commitmentFacet c) (positionProcedure c),
    (positionProcedure c).2.1, (criticismWithinScope c).2, oppositeProcedureRejected c⟩

/- This claim concerns the Grounds rule for arbitrary claim/facet packages, not a single capability duty. -/
theorem groundsCommitmentIsProvision : commitmentClaim .grounds = (fun w => GroundsProvision w.2) := by
  funext w
  apply propext
  exact (groundsProvisionMeaning w.2).symm

/-- organon-map CoreReader.Integration.groundsSelfAssessment
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem groundsSelfAssessment :
    Grounds (fun w => GroundsProvision w.2) canonicalArticulation
      (fun f => f = commitmentFacet .grounds) [commitmentFacet .grounds] ∧
    (commitmentPosition .grounds).limits actual ∧
    (commitmentPosition .grounds).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor .grounds .waive) := by
  rw [← groundsCommitmentIsProvision]
  exact ⟨(reasonsBelongToCommitments .grounds).1,
    (criticismWithinScope .grounds).1, (criticismWithinScope .grounds).2,
    oppositeProcedureRejected .grounds⟩

/- This existing principle form implements the same system's choice rule on two actual proposals.
Input 0 names the identity proposal; input 1 names the cheap successor proposal. -/
structure PhilosophyMethod where
  form : Form
  mode : Mode

def currentPhilosophy (s : System) (w : World) : PhilosophyMethod :=
  ⟨s.principleForm, s.governance w⟩

noncomputable def PhilosophyMethod.review (p : PhilosophyMethod) (input : Nat) : Nat :=
  if input = 0 then
    if choiceDecision p.mode identityImpl objectiveReason then 1 else 0
  else if choiceDecision p.mode cheapSuccessor [.method .simplicity] then 1 else 0

noncomputable def PhilosophyMethod.implementation (p : PhilosophyMethod) : Implementation where
  name := "Current philosophy's proposal review"
  conventional := true
  established := true
  run := p.review
  cost := 1
  domain n := n = 0 ∨ n = 1
  explanation := p.review
  trace n := [n, p.review n]

def proposalRequirements : Requirements where
  inputs n := n = 0 ∨ n = 1
  expected n := if n = 0 then 1 else 0
  budget := 1
  values _ := True

theorem currentReviewCorrect : ∀ n, proposalRequirements.inputs n →
    (currentPhilosophy actualSystem actual).review n = proposalRequirements.expected n := by
  intro n hn
  rcases hn with rfl | rfl <;>
    simp [PhilosophyMethod.review, currentPhilosophy, actualSystem, actual,
      proposalRequirements, decisionsApply.2.2.2.1, decisionsApply.2.2.2.2]

/- Status alone fails for this actual principle method; its demonstrated proposal decisions give a relevant reason. -/
/-- organon-map CoreReader.Integration.existingPhilosophyNotPrivileged
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem existingPhilosophyNotPrivileged :
    (currentPhilosophy actualSystem actual).form = actualSystem.principleForm ∧
    (currentPhilosophy actualSystem actual).mode = actualSystem.governance actual ∧
    ¬ JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.status .standing] ∧
    JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.method .output] ∧
    (currentPhilosophy actualSystem actual).review 0 = 1 ∧
    (currentPhilosophy actualSystem actual).review 1 = 0 := by
  refine ⟨rfl, rfl, statusOnlyFails _ _ _, ?_, currentReviewCorrect 0 (Or.inl rfl),
    currentReviewCorrect 1 (Or.inr rfl)⟩
  exact ⟨⟨currentReviewCorrect, by change 1 ≤ 1; decide⟩,
    .method .output, by simp, trivial, currentReviewCorrect⟩

/- Applications choose their contract and requirements; the resulting claim is about this system's actual method. -/
def applicationClaim (s : System) (req : Requirements)
    (contract : Requirements → Implementation → Prop) : Claim World :=
  fun w => contract req (s.method.realize w)

def ApplicationDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World)) : Prop :=
  Reflexive s.owner (s.rules w) (s.work w) ∧
  Grounds (applicationClaim s req contract) articulations applicable facets

/- These are consequences of an explicitly adopted duty, not a proof that arbitrary applications fulfill it. -/
/-- organon-map CoreReader.Integration.applicationRetainsDuties
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem applicationRetainsDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World))
    (h : ApplicationDuties s w req contract articulations applicable facets) :
    Reflexive s.owner (s.rules w) (s.work w) ∧
    (∀ f, applicable f → f ∈ facets) ∧
    (∀ f ∈ facets, f.claim = applicationClaim s req contract ∧
      Articulated (articulations f) ∧ FacetArticulated (articulations f) f ∧ FacetDischarged f) :=
  ⟨h.1, h.2.2.1, h.2.2.2⟩

def outputContract (req : Requirements) (i : Implementation) : Prop :=
  ∀ n, req.inputs n → i.run n = req.expected n

def successorRequirements : Requirements :=
  { identityRequirements with expected := fun n => n + 1 }

/- Holding the system and observation fixed while changing the actual objective changes the capability claim. -/
def changedObjectiveFacet : Facet World :=
  .empirical [observation] (fun _ => True)
    (applicationClaim actualSystem successorRequirements outputContract) (fun _ => True)

/-- organon-map CoreReader.Integration.applicationVariation
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem applicationVariation :
    ApplicationDuties actualSystem actual identityRequirements outputContract
      canonicalArticulation (fun f => f = capabilityFacet) [capabilityFacet] ∧
    ¬ applicationClaim actualSystem successorRequirements outputContract actual ∧
    ¬ Grounds (applicationClaim actualSystem successorRequirements outputContract)
      canonicalArticulation (fun f => f = changedObjectiveFacet) [changedObjectiveFacet] := by
  refine ⟨⟨completeOwnWork_reflexive 0, capabilityGrounds⟩, ?_, ?_⟩
  · intro h
    have bad := h 0 trivial
    cases bad
  · intro h
    have discharged := (h.2.2 changedObjectiveFacet (by simp)).2.2.2
    have bad := discharged.2.1 actual ((observationIdentifies actual).2 rfl) trivial 0 trivial
    cases bad

/- The very system satisfies the charter while its true cost evidence fails to establish its output capability. -/
/-- organon-map CoreReader.Integration.charterNotGrounds
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem charterNotGrounds :
    Charter actualSystem actual ∧
    Compatible [costAllowanceRecord] actual ∧
    ¬ Grounds capability canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
  exact ⟨charterChecked, (by intro r hr; cases List.mem_singleton.mp hr; rfl), unsupportedGrounds⟩

/- A single inhabited system/context carries the charter, its own actual claim and support,
contentful principle work, and separately reasoned governance commitments. -/
/-- organon-map CoreReader.Integration.jointWitness
organon.preamble#p1 sha256 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097
organon.preamble#p2 sha256 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097
organon.charter.overview#p2 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.overview#p3 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
  exact ⟨actualSystem, actual, actualAdmissible, charterChecked,
    ownCapabilityGrounded.1, capabilityActual, identityJustified,
    fun c => (reasonsBelongToCommitments c).1, rfl, rfl⟩

end CoreReader.Integration
```
<!-- /lean-code leanified/CoreReader/Integration.lean -->

<a id="line-code-leanified-corereader-integration-lean-1"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:1 --> **L1** 导入CoreReader.Agency及其依赖。

<a id="line-code-leanified-corereader-integration-lean-2"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:2 --> **L2** 导入CoreReader.Choice及其依赖。

<a id="line-code-leanified-corereader-integration-lean-4"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:4 --> **L4** 打开命名空间CoreReader.Integration；文件边界不改变声明身份。

<a id="line-code-leanified-corereader-integration-lean-5"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:5 --> **L5** 使列出的命名空间可通过省略前缀的名称引用。

<a id="line-code-leanified-corereader-integration-lean-7"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:7 --> **L7** 说明后续定义或结果：从同一主张的已检查非空面向清单构造规范表达及Grounds；适用性按清单成员定义。

<a id="line-code-leanified-corereader-integration-lean-8"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:8 --> **L8** 从同一主张的已检查非空面向清单构造规范表达及Grounds；适用性按清单成员定义。

<a id="line-code-leanified-corereader-integration-lean-9"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:9 --> **L9** 假设方面列表非空，且每个方面都针对claim并已履责。

<a id="line-code-leanified-corereader-integration-lean-10"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:10 --> **L10** 用各方面自身内容构造的表述建立Grounds，以列表成员关系作为适用谓词。

<a id="line-code-leanified-corereader-integration-lean-11"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:11 --> **L11** 提供非空性及按成员定义直接成立的覆盖，再逐个检查列表方面。

<a id="line-code-leanified-corereader-integration-lean-12"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:12 --> **L12** 对每个方面，用checked确立同一主张，并由履责得到非空表述。

<a id="line-code-leanified-corereader-integration-lean-13"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:13 --> **L13** 补上该表述的确切内容对应及已给履责证明。

<a id="line-code-leanified-corereader-integration-lean-15"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:15 --> **L15** 对单个已检查面向构造Grounds，适用性只限于该面向本身。

<a id="line-code-leanified-corereader-integration-lean-16"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:16 --> **L16** 对单个已履责方面，使恰好该方面对其自身主张适用。

<a id="line-code-leanified-corereader-integration-lean-17"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:17 --> **L17** 证明单项列表非空，且每个等于f的方面都在其中，留下逐方面内容检查。

<a id="line-code-leanified-corereader-integration-lean-18"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:18 --> **L18** 取已知属于单项列表[f]的任意方面g。

<a id="line-code-leanified-corereader-integration-lean-19"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:19 --> **L19** 单项成员关系把hg化为等式g=f。

<a id="line-code-leanified-corereader-integration-lean-20"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:20 --> **L20** 把g替换为同一个已履责方面f。

<a id="line-code-leanified-corereader-integration-lean-21"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:21 --> **L21** 用相同主张、构造表述的可表达性、确切方面内容匹配及checked履责完成Grounds字段。

<a id="line-code-leanified-corereader-integration-lean-23"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:23 --> **L23** 说明后续定义或结果：区分执行模型标准与豁免标准两种模式，它们决定实际政策判断。

<a id="line-code-leanified-corereader-integration-lean-24"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:24 --> **L24** 区分执行模型标准与豁免标准两种模式，它们决定实际政策判断。

<a id="line-code-leanified-corereader-integration-lean-25"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:25 --> **L25** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-integration-lean-27"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:27 --> **L27** 说明后续定义或结果：世界由两个候选实现之一及两个治理模式之一组成，是封闭四世界模型。

<a id="line-code-leanified-corereader-integration-lean-28"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:28 --> **L28** 世界由两个候选实现之一及两个治理模式之一组成，是封闭四世界模型。

<a id="line-code-leanified-corereader-integration-lean-30"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:30 --> **L30** 指定恒等实现和执行标准模式作为实际世界。

<a id="line-code-leanified-corereader-integration-lean-32"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:32 --> **L32** 说明后续定义或结果：把可修订形式身份与依赖世界的实际实现绑定。

<a id="line-code-leanified-corereader-integration-lean-33"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:33 --> **L33** 把方法形式的种类与版本绑定到随世界变化的实现；仅此结构不证明该形式可修订。

<a id="line-code-leanified-corereader-integration-lean-34"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:34 --> **L34** 保存该方法的形式种类与版本。

<a id="line-code-leanified-corereader-integration-lean-35"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:35 --> **L35** 为每个候选与治理世界指定该同一方法的实际实现。

<a id="line-code-leanified-corereader-integration-lean-37"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:37 --> **L37** 说明后续定义或结果：把主体、方法、原则形式、治理选择和应用要求绑定成系统。

<a id="line-code-leanified-corereader-integration-lean-38"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:38 --> **L38** 把主体、方法、原则形式、治理选择和应用要求绑定成系统。

<a id="line-code-leanified-corereader-integration-lean-39"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:39 --> **L39** 标识该系统采用其原则与工作记录的所有者。

<a id="line-code-leanified-corereader-integration-lean-40"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:40 --> **L40** 保存系统的方法形式及随世界变化的实现。

<a id="line-code-leanified-corereader-integration-lean-41"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:41 --> **L41** 保存系统自身原则的当前形式。

<a id="line-code-leanified-corereader-integration-lean-42"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:42 --> **L42** 选择该系统在各世界采用还是豁免治理要求。

<a id="line-code-leanified-corereader-integration-lean-43"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:43 --> **L43** 固定用于评估该系统实现的输入、输出、预算和价值要求。

<a id="line-code-leanified-corereader-integration-lean-45"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:45 --> **L45** 执行模式使用开放政策，豁免模式使用无扩展价值的政策。

<a id="line-code-leanified-corereader-integration-lean-46"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:46 --> **L46** 采用治理时选择重视扩展且允许修订的openPolicy。

<a id="line-code-leanified-corereader-integration-lean-47"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:47 --> **L47** 豁免治理时选择缺少所需扩展价值取向的neutralPolicy。

<a id="line-code-leanified-corereader-integration-lean-49"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:49 --> **L49** 执行模式提供内容已检查的自身工作记录，豁免模式不提供记录。

<a id="line-code-leanified-corereader-integration-lean-50"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:50 --> **L50** 采用治理时，为此所有者提供完整内容性工作日志。

<a id="line-code-leanified-corereader-integration-lean-51"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:51 --> **L51** 豁免治理时，同一所有者的工作日志为空。

<a id="line-code-leanified-corereader-integration-lean-53"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:53 --> **L53** 按同一系统的治理选择决定政策。

<a id="line-code-leanified-corereader-integration-lean-54"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:54 --> **L54** 使用属于该系统主体的登记生成及评估规则。

<a id="line-code-leanified-corereader-integration-lean-55"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:55 --> **L55** 按该主体治理模式选取实际工作记录清单。

<a id="line-code-leanified-corereader-integration-lean-57"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:57 --> **L57** 构造主体零、版本零方法及原则、依候选实现、依世界治理和恒等要求的实际系统。

<a id="line-code-leanified-corereader-integration-lean-58"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:58 --> **L58** 给共享实际系统分配所有者0。

<a id="line-code-leanified-corereader-integration-lean-59"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:59 --> **L59** 使用版本0的方法形式，由世界的候选分量选择其实例实现。

<a id="line-code-leanified-corereader-integration-lean-60"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:60 --> **L60** 把该系统当前原则形式设为原则版本0。

<a id="line-code-leanified-corereader-integration-lean-61"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:61 --> **L61** 从世界第二分量读取治理方式，与实现候选独立。

<a id="line-code-leanified-corereader-integration-lean-62"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:62 --> **L62** 用identityRequirements评估同一方法。

<a id="line-code-leanified-corereader-integration-lean-64"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:64 --> **L64** 要求该系统实际方法在自身请求输入上满足自身期望输出。

<a id="line-code-leanified-corereader-integration-lean-65"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:65 --> **L65** 声称该系统实现的方法在每个必需输入上满足指定输出。

<a id="line-code-leanified-corereader-integration-lean-67"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:67 --> **L67** 按该系统预算检查同一实际实现的成本。

<a id="line-code-leanified-corereader-integration-lean-68"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:68 --> **L68** 声称同一实现方法的成本满足该系统自身预算。

<a id="line-code-leanified-corereader-integration-lean-70"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:70 --> **L70** 记录该系统实际实现是否在零输入满足其期望输出。

<a id="line-code-leanified-corereader-integration-lean-71"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:71 --> **L71** 记录测试为true：同一方法在0处的输出等于该处所需输出。

<a id="line-code-leanified-corereader-integration-lean-73"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:73 --> **L73** 同时持有同一系统的能力与预算主张。

<a id="line-code-leanified-corereader-integration-lean-74"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:74 --> **L74** 系统同时持有实际输出能力主张和预算主张。

<a id="line-code-leanified-corereader-integration-lean-76"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:76 --> **L76** 定义上下文使用的输出正确与成本可承担两个问题。

<a id="line-code-leanified-corereader-integration-lean-77"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:77 --> **L77** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-integration-lean-79"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:79 --> **L79** 以同系统观察为假设、能力及预算为含义；范围要求零在域内且采用执行模式。

<a id="line-code-leanified-corereader-integration-lean-80"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:80 --> **L80** 情境假设与该系统实际0输入观察相容。

<a id="line-code-leanified-corereader-integration-lean-81"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:81 --> **L81** 把correctOutput解释为该系统能力，把affordable解释为预算满足。

<a id="line-code-leanified-corereader-integration-lean-82"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:82 --> **L82** 把可容许范围限于定义域包含0且采用治理的世界。

<a id="line-code-leanified-corereader-integration-lean-84"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:84 --> **L84** 简写实际系统的参数化输出能力主张。

<a id="line-code-leanified-corereader-integration-lean-85"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:85 --> **L85** 简写实际系统的零输入观察记录。

<a id="line-code-leanified-corereader-integration-lean-86"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:86 --> **L86** 简写实际系统同时持有的能力与预算理论。

<a id="line-code-leanified-corereader-integration-lean-87"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:87 --> **L87** 简写实际系统的问题、假设与范围上下文。

<a id="line-code-leanified-corereader-integration-lean-89"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:89 --> **L89** 说明后续定义或结果：计算零点观察只识别恒等候选，而不限制治理模式。

<a id="line-code-leanified-corereader-integration-lean-90"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:90 --> **L90** 计算零点观察只识别恒等候选，而不限制治理模式。

<a id="line-code-leanified-corereader-integration-lean-91"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:91 --> **L91** 把候选算法与独立变化的治理模式分开。

<a id="line-code-leanified-corereader-integration-lean-92"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:92 --> **L92** 逐一检查两个实际候选是否符合观察中的0输出测试为真。

<a id="line-code-leanified-corereader-integration-lean-93"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:93 --> **L93** identity返回所需0而successor返回1，因此只有identity匹配，与治理方式无关。

<a id="line-code-leanified-corereader-integration-lean-95"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:95 --> **L95** 通过约简证明实际恒等实现满足每个请求的恒等输出。

<a id="line-code-leanified-corereader-integration-lean-97"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:97 --> **L97** 在封闭模型中，由候选识别和已知恒等行为得到全请求输入能力。

<a id="line-code-leanified-corereader-integration-lean-98"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:98 --> **L98** 取与同一观察相容的任意世界。

<a id="line-code-leanified-corereader-integration-lean-99"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:99 --> **L99** 用observationIdentifies推出该世界算法候选是identity。

<a id="line-code-leanified-corereader-integration-lean-100"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:100 --> **L100** 分离世界的算法和治理分量以便替换。

<a id="line-code-leanified-corereader-integration-lean-101"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:101 --> **L101** 把推出的identity等式直接改述为候选变量的等式。

<a id="line-code-leanified-corereader-integration-lean-102"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:102 --> **L102** 把候选算法换成identity，保留其治理模式。

<a id="line-code-leanified-corereader-integration-lean-103"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:103 --> **L103** 按定义，identity在每个输入上的运行等于所需输出，故证明此世界能力。

<a id="line-code-leanified-corereader-integration-lean-105"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:105 --> **L105** 把实际观察及能力主张组成经验面向，范围不限、不确定性条件恒真。

<a id="line-code-leanified-corereader-integration-lean-107"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:107 --> **L107** 提供实际兼容见证、封闭模型支持证明及平凡不确定性条件。

<a id="line-code-leanified-corereader-integration-lean-108"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:108 --> **L108** 以actual作为方面无限制范围内的相容世界，避免空世界履责。

<a id="line-code-leanified-corereader-integration-lean-109"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:109 --> **L109** 用observedCapability证明每个相容世界的支持；所述不确定性条件为平凡真。

<a id="line-code-leanified-corereader-integration-lean-111"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:111 --> **L111** 为精确对应的能力面向构造规范Grounds。

<a id="line-code-leanified-corereader-integration-lean-112"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:112 --> **L112** 只令实际输出能力方面适用，使用其自身单项证据包。

<a id="line-code-leanified-corereader-integration-lean-113"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:113 --> **L113** 把单项Grounds构造应用于已经履责的能力方面。

<a id="line-code-leanified-corereader-integration-lean-115"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:115 --> **L115** 证明实际恒等执行世界同时满足能力、预算、观察假设以及治理和输入域范围。

<a id="line-code-leanified-corereader-integration-lean-116"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:116 --> **L116** 构造实际世界可容许见证，先证明共同持有的两项主张；能力项使用capabilityActual。

<a id="line-code-leanified-corereader-integration-lean-117"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:117 --> **L117** 所持预算主张计算为实际成本1满足预算1。

<a id="line-code-leanified-corereader-integration-lean-118"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:118 --> **L118** 补上与0处观察相容、0属于定义域以及actual采用apply模式。

<a id="line-code-leanified-corereader-integration-lean-120"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:120 --> **L120** 从已证明的实际可接受世界推出一致性。

<a id="line-code-leanified-corereader-integration-lean-121"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:121 --> **L121** 以actual及其可容许证明作为必需非空见证，应用语义后果一致性定理。

<a id="line-code-leanified-corereader-integration-lean-123"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:123 --> **L123** 说明后续定义或结果：组合该系统生成政策、上下文一致性、完整内容有效反身性及当前方法和原则形式。

<a id="line-code-leanified-corereader-integration-lean-124"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:124 --> **L124** 组合该系统生成政策、上下文一致性、完整内容有效反身性及当前方法和原则形式。

<a id="line-code-leanified-corereader-integration-lean-125"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:125 --> **L125** Charter要求该系统实际政策具有生成取向，且共同持有判断在情境内一致。

<a id="line-code-leanified-corereader-integration-lean-126"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:126 --> **L126** 它还要求该系统实际工作日志满足完整自有规则反身要求。

<a id="line-code-leanified-corereader-integration-lean-127"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:127 --> **L127** 方法形式与原则形式均须在同一政策下属于当前形式。

<a id="line-code-leanified-corereader-integration-lean-129"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:129 --> **L129** 组合开放政策计算结果、实际一致性和内容已验证自身工作模型。

<a id="line-code-leanified-corereader-integration-lean-130"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:130 --> **L130** 组合openPolicy价值取向与可修订性、jointConsistent、完整自有日志及两个当前版本0形式。

<a id="line-code-leanified-corereader-integration-lean-132"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:132 --> **L132** 说明后续定义或结果：在原持有理论中增加同系统零输入输出事实。

<a id="line-code-leanified-corereader-integration-lean-133"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:133 --> **L133** 在原持有理论中增加同系统零输入输出事实。

<a id="line-code-leanified-corereader-integration-lean-134"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:134 --> **L134** 增加具体断言：同一方法在输入0处满足所需输出。

<a id="line-code-leanified-corereader-integration-lean-136"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:136 --> **L136** 以修订标识零保存实际理论及上下文。

<a id="line-code-leanified-corereader-integration-lean-137"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:137 --> **L137** 以同一上下文和标识一保存扩充理论。

<a id="line-code-leanified-corereader-integration-lean-139"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:139 --> **L139** 开启来源元数据，将CoreReader.Integration.revisionKeepsConsistency绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-140"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:140 --> **L140** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-141"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:141 --> **L141** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-142"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:142 --> **L142** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-143"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:143 --> **L143** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-144"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:144 --> **L144** 增加事实后保留同一章程和可接受模型，并要求如实报告修订。

<a id="line-code-leanified-corereader-integration-lean-145"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:145 --> **L145** 实际系统保留Charter，增加该有支持断言后revisedHeld仍一致。

<a id="line-code-leanified-corereader-integration-lean-146"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:146 --> **L146** 把已识别修订报告为true，满足单向变化报告条件。

<a id="line-code-leanified-corereader-integration-lean-147"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:147 --> **L147** 把同一修订报告为false，违反该条件。

<a id="line-code-leanified-corereader-integration-lean-148"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:148 --> **L148** 保留charterChecked，以actual作为具体可容许见证证明修订后一致性。

<a id="line-code-leanified-corereader-integration-lean-149"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:149 --> **L149** actual满足原所持主张及新增0输入输出断言。

<a id="line-code-leanified-corereader-integration-lean-150"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:150 --> **L150** 保留actual既有情境与范围证明，并验证true报告，仅余拒绝false报告。

<a id="line-code-leanified-corereader-integration-lean-151"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:151 --> **L151** 假设变化后的快照能以report=false满足TruthfulReport。

<a id="line-code-leanified-corereader-integration-lean-152"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:152 --> **L152** 修订编号0和1不同，因此假设的义务迫使false=true。

<a id="line-code-leanified-corereader-integration-lean-153"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:153 --> **L153** 排除不可能的布尔等式，拒绝隐瞒修订。

<a id="line-code-leanified-corereader-integration-lean-155"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:155 --> **L155** 说明后续定义或结果：要求该系统评估记录及其自身能力主张的匹配Grounds。

<a id="line-code-leanified-corereader-integration-lean-156"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:156 --> **L156** 要求该系统评估记录及其自身能力主张的匹配Grounds。

<a id="line-code-leanified-corereader-integration-lean-157"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:157 --> **L157** OwnCapabilityDuty首先要求实际评估记录针对与系统所有者一致的系统对象。

<a id="line-code-leanified-corereader-integration-lean-158"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:158 --> **L158** 还要求全部所列适用方面为该系统输出能力提供同主张Grounds。

<a id="line-code-leanified-corereader-integration-lean-160"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:160 --> **L160** 开启来源元数据，将CoreReader.Integration.ownCapabilityGrounded绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-161"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:161 --> **L161** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-162"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:162 --> **L162** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-163"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:163 --> **L163** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-164"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:164 --> **L164** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-165"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:165 --> **L165** 组合实际内容有效自身评估记录、观察支持能力Grounds及能力结论。

<a id="line-code-leanified-corereader-integration-lean-166"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:166 --> **L166** 陈述实际系统自身能力义务已履行，且其声称能力实际成立。

<a id="line-code-leanified-corereader-integration-lean-167"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:167 --> **L167** 直接提供capabilityActual，留下系统评估记录与对应Grounds。

<a id="line-code-leanified-corereader-integration-lean-168"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:168 --> **L168** 以完整日志对系统0的评估作为自有系统工作见证。

<a id="line-code-leanified-corereader-integration-lean-169"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:169 --> **L169** 从非空单项能力方面列表构造Grounds。

<a id="line-code-leanified-corereader-integration-lean-170"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:170 --> **L170** 单项列表唯一方面具有确切目标主张及已证履责。

<a id="line-code-leanified-corereader-integration-lean-172"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:172 --> **L172** 说明后续定义或结果：记录同系统实现成本至多二；两个候选均通过。

<a id="line-code-leanified-corereader-integration-lean-173"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:173 --> **L173** 记录同系统实现成本至多二；两个候选均通过。

<a id="line-code-leanified-corereader-integration-lean-174"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:174 --> **L174** 记录实现成本至多2；两个算法候选都满足这个较弱成本观察。

<a id="line-code-leanified-corereader-integration-lean-176"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:176 --> **L176** 试图只凭宽松成本观察支持同一输出能力。

<a id="line-code-leanified-corereader-integration-lean-177"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:177 --> **L177** 尝试仅以成本证据支持输出能力，不另加限制范围或不确定性条件。

<a id="line-code-leanified-corereader-integration-lean-179"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:179 --> **L179** 计算后继执行世界符合成本观察，却不满足恒等输出。

<a id="line-code-leanified-corereader-integration-lean-180"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:180 --> **L180** 取单项成本观察列表中的一条记录。

<a id="line-code-leanified-corereader-integration-lean-181"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:181 --> **L181** 单项成员关系确认该记录就是costAllowanceRecord。

<a id="line-code-leanified-corereader-integration-lean-182"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:182 --> **L182** 把r替换为实际成本记录。

<a id="line-code-leanified-corereader-integration-lean-183"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:183 --> **L183** successor成本为2，因此记录的至多2观察计算为true。

<a id="line-code-leanified-corereader-integration-lean-185"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:185 --> **L185** 把假定支持应用于兼容后继反世界及零输入，导出矛盾。

<a id="line-code-leanified-corereader-integration-lean-186"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:186 --> **L186** 假设成本观察在每个相容世界都支持输出能力。

<a id="line-code-leanified-corereader-integration-lean-187"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:187 --> **L187** 将假设应用于相容successor世界及输入0，得到错误等式1=0。

<a id="line-code-leanified-corereader-integration-lean-188"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:188 --> **L188** 排除不可能的输出等式，反驳仅成本支持。

<a id="line-code-leanified-corereader-integration-lean-190"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:190 --> **L190** 从假定Grounds抽取错误面向支持义务，并由成本反模型否定。

<a id="line-code-leanified-corereader-integration-lean-191"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:191 --> **L191** 检验使该仅成本能力方面适用的单项证据包。

<a id="line-code-leanified-corereader-integration-lean-192"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:192 --> **L192** 假设这个不足的单项证据包仍满足Grounds。

<a id="line-code-leanified-corereader-integration-lean-193"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:193 --> **L193** 从Grounds前提提取实际仅成本能力方面的FacetDischarged。

<a id="line-code-leanified-corereader-integration-lean-194"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:194 --> **L194** 其支持条款会推出仅成本Supports，与costDoesNotSupportOutput矛盾。

<a id="line-code-leanified-corereader-integration-lean-196"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:196 --> **L196** 说明后续定义或结果：标识五项治理承诺，每项有分别解释的理由与结果。

<a id="line-code-leanified-corereader-integration-lean-197"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:197 --> **L197** 标识五项治理承诺，每项有分别解释的理由与结果。

<a id="line-code-leanified-corereader-integration-lean-198"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:198 --> **L198** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-integration-lean-200"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:200 --> **L200** 说明后续定义或结果：执行模式仅许可Grounds成立的主张包，豁免模式许可所有包。

<a id="line-code-leanified-corereader-integration-lean-201"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:201 --> **L201** 执行模式仅许可Grounds成立的主张包，豁免模式许可所有包。

<a id="line-code-leanified-corereader-integration-lean-202"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:202 --> **L202** 接收针对同一主张与表述的任意适用谓词和方面包。

<a id="line-code-leanified-corereader-integration-lean-203"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:203 --> **L203** 按治理模式选择许可规则。

<a id="line-code-leanified-corereader-integration-lean-204"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:204 --> **L204** apply模式只许可实际满足Grounds的证据包。

<a id="line-code-leanified-corereader-integration-lean-205"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:205 --> **L205** waive模式不检查Grounds，许可所有证据包。

<a id="line-code-leanified-corereader-integration-lean-207"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:207 --> **L207** 表达一般规范：所有获许可的主张、表达、适用面与清单组合都必须具有Grounds。

<a id="line-code-leanified-corereader-integration-lean-208"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:208 --> **L208** 对任意实际主张、表述族和方面包，条款约束该模式许可的所有包。

<a id="line-code-leanified-corereader-integration-lean-209"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:209 --> **L209** 每个被许可包都必须满足其自身对应Grounds义务。

<a id="line-code-leanified-corereader-integration-lean-211"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:211 --> **L211** 证明执行模式履行一般规范，而具体无支持成本包反驳豁免模式。

<a id="line-code-leanified-corereader-integration-lean-212"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:212 --> **L212** 分别检查apply与waive模式的一般条款。

<a id="line-code-leanified-corereader-integration-lean-213"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:213 --> **L213** apply模式的许可本就是Grounds，因此返回已给证明即可满足一般条款。

<a id="line-code-leanified-corereader-integration-lean-214"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:214 --> **L214** 对waive模式，需要证明无限制许可违反一般条款。

<a id="line-code-leanified-corereader-integration-lean-215"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:215 --> **L215** 证明waive模式下两侧均不成立的等价关系两个方向。

<a id="line-code-leanified-corereader-integration-lean-216"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:216 --> **L216** 假设该模式豁免检查时一般条款仍成立。

<a id="line-code-leanified-corereader-integration-lean-217"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:217 --> **L217** 把该普遍假设应用于实际不足的能力证据包，将与unsupportedGrounds矛盾。

<a id="line-code-leanified-corereader-integration-lean-218"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:218 --> **L218** 提供确切单项适用谓词和包；豁免许可为真，迫出无效Grounds结果。

<a id="line-code-leanified-corereader-integration-lean-219"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:219 --> **L219** 反向蕴涵以前提waive=apply开始，这是不可能的构造器等式。

<a id="line-code-leanified-corereader-integration-lean-221"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:221 --> **L221** 说明后续定义或结果：执行模式要求拟议理论和上下文一致，豁免模式无条件许可。

<a id="line-code-leanified-corereader-integration-lean-222"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:222 --> **L222** 执行模式要求拟议理论和上下文一致，豁免模式无条件许可。

<a id="line-code-leanified-corereader-integration-lean-223"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:223 --> **L223** apply要求整个理论在情境内一致；waive不施加该约束。

<a id="line-code-leanified-corereader-integration-lean-225"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:225 --> **L225** 在同一理论中组合实际能力主张及其否定。

<a id="line-code-leanified-corereader-integration-lean-227"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:227 --> **L227** 从同时持有的相反主张中抽取能力正反后果。

<a id="line-code-leanified-corereader-integration-lean-228"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:228 --> **L228** 冲突的所持理论在固定情境下蕴涵输出正确的正判断。

<a id="line-code-leanified-corereader-integration-lean-229"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:229 --> **L229** 同一理论和情境也蕴涵其负判断。

<a id="line-code-leanified-corereader-integration-lean-230"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:230 --> **L230** 可容许世界对conflictingHeld的模型必须满足其中明确包含的能力主张。

<a id="line-code-leanified-corereader-integration-lean-231"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:231 --> **L231** 同一模型也必须满足明确包含的能力否定。

<a id="line-code-leanified-corereader-integration-lean-233"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:233 --> **L233** 以同条件正反后果否定一致性。

<a id="line-code-leanified-corereader-integration-lean-234"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:234 --> **L234** 用同情境的两个相反后果反驳冲突所持理论的一致性。

<a id="line-code-leanified-corereader-integration-lean-236"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:236 --> **L236** 说明后续定义或结果：执行治理采用单独的可行相关选择规范，豁免治理接受任意理由清单。

<a id="line-code-leanified-corereader-integration-lean-237"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:237 --> **L237** 执行治理采用单独的可行相关选择规范，豁免治理接受任意理由清单。

<a id="line-code-leanified-corereader-integration-lean-238"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:238 --> **L238** apply通过JustifiedChoice执行实际可行性与理由相关性要求；waive许可任意选择包。

<a id="line-code-leanified-corereader-integration-lean-240"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:240 --> **L240** 说明后续定义或结果：执行模式提出后继操作，豁免模式只提出原copy操作。

<a id="line-code-leanified-corereader-integration-lean-241"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:241 --> **L241** 执行模式提出后继操作，豁免模式只提出原copy操作。

<a id="line-code-leanified-corereader-integration-lean-242"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:242 --> **L242** 采用生成规则时提出successor，其输出可与copy不同。

<a id="line-code-leanified-corereader-integration-lean-243"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:243 --> **L243** 豁免该规则时提出未变的copy操作。

<a id="line-code-leanified-corereader-integration-lean-245"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:245 --> **L245** 执行模式测试零与一，豁免模式只测试会通过的一。

<a id="line-code-leanified-corereader-integration-lean-246"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:246 --> **L246** 采用反身评估时检查0和1，包括算术反例。

<a id="line-code-leanified-corereader-integration-lean-247"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:247 --> **L247** 豁免时仅检查1，即算术原则通过的样本。

<a id="line-code-leanified-corereader-integration-lean-249"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:249 --> **L249** 用经典命题可判定性判断具体冲突理论是否获许可；这是非计算定义，不是已部署检查器。

<a id="line-code-leanified-corereader-integration-lean-250"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:250 --> **L250** 用古典命题判定把整个冲突理论许可化为布尔值；未提供可执行判定算法。

<a id="line-code-leanified-corereader-integration-lean-252"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:252 --> **L252** 用经典可判定性判断该模式是否许可指定单面向主张包。

<a id="line-code-leanified-corereader-integration-lean-253"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:253 --> **L253** 判定此方面自身主张及其确切单项评估包的许可。

<a id="line-code-leanified-corereader-integration-lean-254"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:254 --> **L254** 为该可能不可计算的Grounds命题提供古典可判定性。

<a id="line-code-leanified-corereader-integration-lean-256"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:256 --> **L256** 用经典可判定性判断恒等要求下指定实现和理由是否获许可。

<a id="line-code-leanified-corereader-integration-lean-257"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:257 --> **L257** 在固定恒等要求与提供理由下，古典判定该实现的选择许可。

<a id="line-code-leanified-corereader-integration-lean-259"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:259 --> **L259** 证明执行模式拒绝矛盾、无支持能力及不可行廉价后继，同时接受实际能力和恒等选择。

<a id="line-code-leanified-corereader-integration-lean-260"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:260 --> **L260** 采用Grounds时拒绝仅成本能力证据包。

<a id="line-code-leanified-corereader-integration-lean-261"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:261 --> **L261** 采用Grounds时接受得到适当支持的输出观察包。

<a id="line-code-leanified-corereader-integration-lean-262"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:262 --> **L262** 采用选择规范时，尽管简洁性理由相关，仍因输出不可行拒绝cheapSuccessor。

<a id="line-code-leanified-corereader-integration-lean-263"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:263 --> **L263** 采用选择规范时，凭实际输出理由接受identity。

<a id="line-code-leanified-corereader-integration-lean-264"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:264 --> **L264** 启用这些布尔许可定义所需的古典可判定实例。

<a id="line-code-leanified-corereader-integration-lean-265"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:265 --> **L265** 展开三个布尔决策及apply模式一致性谓词。

<a id="line-code-leanified-corereader-integration-lean-266"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:266 --> **L266** 也展开Grounds与选择许可，显露每个布尔值判定的实际命题。

<a id="line-code-leanified-corereader-integration-lean-267"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:267 --> **L267** 已证不一致性迫使conflictDecision apply为false。

<a id="line-code-leanified-corereader-integration-lean-268"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:268 --> **L268** 失败的成本证据包判为false，已履责观察包判为true。

<a id="line-code-leanified-corereader-integration-lean-269"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:269 --> **L269** 不可行的廉价方法判为false；可行且有理由的identity判为true。

<a id="line-code-leanified-corereader-integration-lean-271"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:271 --> **L271** 计算豁免模式接受具体矛盾、无支持面向和不可行选择。

<a id="line-code-leanified-corereader-integration-lean-272"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:272 --> **L272** waive模式甚至接受无支持的仅成本能力证据包。

<a id="line-code-leanified-corereader-integration-lean-273"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:273 --> **L273** 它也仅凭简洁性接受cheapSuccessor，尽管输出错误。

<a id="line-code-leanified-corereader-integration-lean-274"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:274 --> **L274** 从consistencyPermission开始计算豁免结果；它在此模式按定义为True。

<a id="line-code-leanified-corereader-integration-lean-275"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:275 --> **L275** 用该平凡许可证明得到true的冲突决策布尔值。

<a id="line-code-leanified-corereader-integration-lean-276"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:276 --> **L276** 接着判定对确切不足能力方面主张的豁免许可。

<a id="line-code-leanified-corereader-integration-lean-277"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:277 --> **L277** 其单项适用谓词和包未变；豁免使许可为True、判定为true。

<a id="line-code-leanified-corereader-integration-lean-278"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:278 --> **L278** 最后判定对同一廉价方法及仅简洁性理由的豁免许可。

<a id="line-code-leanified-corereader-integration-lean-279"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:279 --> **L279** 该许可再次平凡为True，完成全部三个豁免决策。

<a id="line-code-leanified-corereader-integration-lean-281"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:281 --> **L281** 说明后续定义或结果：为各承诺把治理模式解释为选项，分别赋予操作结果、目标、约束、实际理由及范围内批评响应。

<a id="line-code-leanified-corereader-integration-lean-282"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:282 --> **L282** 为各承诺把治理模式解释为选项，分别赋予操作结果、目标、约束、实际理由及范围内批评响应。

<a id="line-code-leanified-corereader-integration-lean-283"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:283 --> **L283** 为五项承诺分别选择不同的操作性价值立场适配接口。

<a id="line-code-leanified-corereader-integration-lean-284"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:284 --> **L284** 构造生成承诺的价值立场。

<a id="line-code-leanified-corereader-integration-lean-285"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:285 --> **L285** 其立场为治理模式、后果为操作，采纳选项与同一系统所选治理对应。

<a id="line-code-leanified-corereader-integration-lean-286"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:286 --> **L286** 把模式映射为实际提出的successor或copy操作。

<a id="line-code-leanified-corereader-integration-lean-287"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:287 --> **L287** 采纳的生成目标要求0处输出不同于copy的0输出。

<a id="line-code-leanified-corereader-integration-lean-288"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:288 --> **L288** 还要求该模式实际政策满足采纳的Generative约束。

<a id="line-code-leanified-corereader-integration-lean-289"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:289 --> **L289** 明确以同一系统选择chosenMode为起始承诺，不是推导出的普遍事实。

<a id="line-code-leanified-corereader-integration-lean-290"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:290 --> **L290** 其随选项变化的理由比较拟议操作0→1与copy的0→0表现。

<a id="line-code-leanified-corereader-integration-lean-291"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:291 --> **L291** 将此生成立场限于实现候选为identity的世界。

<a id="line-code-leanified-corereader-integration-lean-292"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:292 --> **L292** 把实际库存膨胀却未扩展作为生成承诺的相关批评。

<a id="line-code-leanified-corereader-integration-lean-293"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:293 --> **L293** 回应取向不保证进步且须另评前后能力；保存的回应是非空文本。

<a id="line-code-leanified-corereader-integration-lean-294"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:294 --> **L294** 构造一致性承诺的不同价值立场。

<a id="line-code-leanified-corereader-integration-lean-295"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:295 --> **L295** 以模式为立场、布尔冲突许可决策为后果，关联同一所选治理。

<a id="line-code-leanified-corereader-integration-lean-296"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:296 --> **L296** 实际后果是该模式对整个冲突理论的决策。

<a id="line-code-leanified-corereader-integration-lean-297"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:297 --> **L297** 要求该决策拒绝冲突理论。

<a id="line-code-leanified-corereader-integration-lean-298"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:298 --> **L298** 同时要求实际所持理论与情境通过同一模式的一致性许可。

<a id="line-code-leanified-corereader-integration-lean-299"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:299 --> **L299** 把同一系统采纳chosenMode陈述为此立场明确起始假设。

<a id="line-code-leanified-corereader-integration-lean-300"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:300 --> **L300** 一致性理由首先包括冲突理论的输出正确正后果。

<a id="line-code-leanified-corereader-integration-lean-301"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:301 --> **L301** 它还包括完全相同问题与情境下的相反后果。

<a id="line-code-leanified-corereader-integration-lean-302"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:302 --> **L302** 将此一致性立场限于identity候选世界。

<a id="line-code-leanified-corereader-integration-lean-303"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:303 --> **L303** 以空Bool理论不能蕴涵每个世界都为true作为实际不完整性批评。

<a id="line-code-leanified-corereader-integration-lean-304"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:304 --> **L304** 回应一致性本身不确立充分支持，仍须评估主张的根据。

<a id="line-code-leanified-corereader-integration-lean-305"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:305 --> **L305** 构造反身评估的价值立场。

<a id="line-code-leanified-corereader-integration-lean-306"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:306 --> **L306** 以模式为立场、实际样本输入列表为后果，关联同一所选治理。

<a id="line-code-leanified-corereader-integration-lean-307"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:307 --> **L307** 该模式选择样本集[0,1]或[1]。

<a id="line-code-leanified-corereader-integration-lean-308"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:308 --> **L308** 要求某个实际选中样本揭示同一算术原则的假结果。

<a id="line-code-leanified-corereader-integration-lean-309"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:309 --> **L309** 还要求同一模式下所有者0的规则与工作满足完整反身要求。

<a id="line-code-leanified-corereader-integration-lean-310"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:310 --> **L310** 明确把同一系统采纳chosenMode作为起始承诺。

<a id="line-code-leanified-corereader-integration-lean-311"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:311 --> **L311** 理由指明算术原则在0实际失败、在1成功。

<a id="line-code-leanified-corereader-integration-lean-312"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:312 --> **L312** 将此反身立场限制于identity候选世界。

<a id="line-code-leanified-corereader-integration-lean-313"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:313 --> **L313** 保留1处通过测试与0处实际失败这对事实作为批评。

<a id="line-code-leanified-corereader-integration-lean-314"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:314 --> **L314** 回应通过自测不认证原则正确，须保留反例及其范围。

<a id="line-code-leanified-corereader-integration-lean-315"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:315 --> **L315** 构造针对Grounds条款自身的价值立场。

<a id="line-code-leanified-corereader-integration-lean-316"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:316 --> **L316** 以模式为立场、布尔证据包决策为后果，属于同一系统治理。

<a id="line-code-leanified-corereader-integration-lean-317"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:317 --> **L317** 实际后果检验无支持的仅成本能力方面。

<a id="line-code-leanified-corereader-integration-lean-318"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:318 --> **L318** 要求拒绝该无支持证据包。

<a id="line-code-leanified-corereader-integration-lean-319"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:319 --> **L319** 还要求许可实际能力主张及按内容构造的表述。

<a id="line-code-leanified-corereader-integration-lean-320"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:320 --> **L320** 该正约束恰使用已适当履责的单项capabilityFacet证据包。

<a id="line-code-leanified-corereader-integration-lean-321"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:321 --> **L321** 把同一系统采纳chosenMode陈述为明确起始承诺。

<a id="line-code-leanified-corereader-integration-lean-322"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:322 --> **L322** Grounds理由记录successor/apply世界与成本观察相容。

<a id="line-code-leanified-corereader-integration-lean-323"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:323 --> **L323** 把该相容性与同一世界中声称输出能力的实际失败配对。

<a id="line-code-leanified-corereader-integration-lean-324"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:324 --> **L324** 将此Grounds立场限制于identity候选世界。

<a id="line-code-leanified-corereader-integration-lean-325"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:325 --> **L325** 批评指向同一过程满足输出合同却没有附带解释合同。

<a id="line-code-leanified-corereader-integration-lean-326"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:326 --> **L326** 回应外部输出评估可提供Grounds，而不要求此过程解释其内部生成。

<a id="line-code-leanified-corereader-integration-lean-327"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:327 --> **L327** 构造实现选择的独立价值立场。

<a id="line-code-leanified-corereader-integration-lean-328"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:328 --> **L328** 以模式为立场、布尔方法许可决策为后果，关联同一治理选择。

<a id="line-code-leanified-corereader-integration-lean-329"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:329 --> **L329** 受检选择是仅以简洁性为理由的廉价successor。

<a id="line-code-leanified-corereader-integration-lean-330"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:330 --> **L330** 要求拒绝该错误输出选择。

<a id="line-code-leanified-corereader-integration-lean-331"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:331 --> **L331** 还要求在相同要求下凭实际输出理由接受identity。

<a id="line-code-leanified-corereader-integration-lean-332"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:332 --> **L332** 明确为此系统采纳chosenMode；价值起点不是从中性事实证明的。

<a id="line-code-leanified-corereader-integration-lean-333"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:333 --> **L333** 选择理由比较同一输入上cheapSuccessor输出1与所需输出0。

<a id="line-code-leanified-corereader-integration-lean-334"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:334 --> **L334** 还记录该方法满足预算，因此低成本不能掩盖输出失败。

<a id="line-code-leanified-corereader-integration-lean-335"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:335 --> **L335** 将此选择立场限于identity候选世界。

<a id="line-code-leanified-corereader-integration-lean-336"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:336 --> **L336** 把identity实际具有的惯用及既有地位，保留为对排除既有方法的相关批评。

<a id="line-code-leanified-corereader-integration-lean-337"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:337 --> **L337** 回应惯用既有方法在实际输出与预算理由支持时仍可被选择。

<a id="line-code-leanified-corereader-integration-lean-339"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:339 --> **L339** 把各自解释的立场具体化为采纳执行治理模式。

<a id="line-code-leanified-corereader-integration-lean-341"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:341 --> **L341** 说明后续定义或结果：在同一实际世界和采纳模式下，以计算或具体反例检查每项承诺理由。

<a id="line-code-leanified-corereader-integration-lean-342"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:342 --> **L342** 在同一实际世界和采纳模式下，以计算或具体反例检查每项承诺理由。

<a id="line-code-leanified-corereader-integration-lean-343"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:343 --> **L343** 承诺c实际列出的每个理由，都须在actual世界对其采纳的apply选项成立。

<a id="line-code-leanified-corereader-integration-lean-344"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:344 --> **L344** 分别处理五项承诺，展开各自实际理由列表，并固定其中理由r。

<a id="line-code-leanified-corereader-integration-lean-345"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:345 --> **L345** 每个列表都是单项，成员前提把r确定为该承诺的具体理由。

<a id="line-code-leanified-corereader-integration-lean-346"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:346 --> **L346** 生成理由计算为successor 0=1且copy 0=0。

<a id="line-code-leanified-corereader-integration-lean-347"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:347 --> **L347** 一致性理由使用已证同一冲突理论的正反后果。

<a id="line-code-leanified-corereader-integration-lean-348"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:348 --> **L348** 反身理由计算同一算术原则在0失败、在1成功。

<a id="line-code-leanified-corereader-integration-lean-349"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:349 --> **L349** 对Grounds，提供successor世界的成本相容性，留下能力失败待证。

<a id="line-code-leanified-corereader-integration-lean-350"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:350 --> **L350** 假设同一successor世界仍具有所需输出能力。

<a id="line-code-leanified-corereader-integration-lean-351"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:351 --> **L351** 在必需输入0处，该假设给出successor输出1等于所需0。

<a id="line-code-leanified-corereader-integration-lean-352"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:352 --> **L352** 排除不可能的1=0，证明理由中的能力失败部分。

<a id="line-code-leanified-corereader-integration-lean-353"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:353 --> **L353** 选择理由计算得到输出1、所需0及廉价方法满足预算的成本。

<a id="line-code-leanified-corereader-integration-lean-355"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:355 --> **L355** 说明后续定义或结果：用实际判断及遵守定理证明每个采纳模式满足自身目标与约束，不断言终极规范正确。

<a id="line-code-leanified-corereader-integration-lean-356"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:356 --> **L356** 用实际判断及遵守定理证明每个采纳模式满足自身目标与约束，不断言终极规范正确。

<a id="line-code-leanified-corereader-integration-lean-357"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:357 --> **L357** 将每项承诺后果展开为实际目标与随模式变化的约束。

<a id="line-code-leanified-corereader-integration-lean-358"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:358 --> **L358** 生成的apply选项在0处不同于copy，且openPolicy满足价值取向与可修订性。

<a id="line-code-leanified-corereader-integration-lean-359"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:359 --> **L359** 一致性的apply选项拒绝冲突理论，同时实际所持理论保持一致。

<a id="line-code-leanified-corereader-integration-lean-360"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:360 --> **L360** 反身性从[0,1]选择实际反例0，并提供完整内容性自有工作反身履责。

<a id="line-code-leanified-corereader-integration-lean-361"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:361 --> **L361** Grounds拒绝无支持成本包，同时正确能力证据包具有Grounds。

<a id="line-code-leanified-corereader-integration-lean-362"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:362 --> **L362** 选择规范拒绝cheapSuccessor，保留有理由且可行的identity实现。

<a id="line-code-leanified-corereader-integration-lean-364"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:364 --> **L364** 为每项承诺构造非空理由、联合采纳、已检查后果及非空响应；已独立证明的后果无需再用理由假设。

<a id="line-code-leanified-corereader-integration-lean-365"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:365 --> **L365** 把ValueProcedure分为非空理由、联合采纳、带范围后果规则及批评回应。

<a id="line-code-leanified-corereader-integration-lean-366"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:366 --> **L366** 检查每项承诺实际理由列表都包含其单项理由。

<a id="line-code-leanified-corereader-integration-lean-367"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:367 --> **L367** 用同一actual世界作为JointAdoption见证，并提供positionReasons c；余下检查起始理论、限度与采纳。

<a id="line-code-leanified-corereader-integration-lean-368"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:368 --> **L368** 在actual中治理为apply，因此选择采纳模式的单项起始理论成立。

<a id="line-code-leanified-corereader-integration-lean-369"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:369 --> **L369** 对每项承诺，actual的identity候选满足其声明限度。

<a id="line-code-leanified-corereader-integration-lean-370"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:370 --> **L370** 对每项承诺，actual所选治理等于采纳的apply选项。

<a id="line-code-leanified-corereader-integration-lean-371"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:371 --> **L371** 为程序后果条款取任意世界及起始、限度、全部理由前提。

<a id="line-code-leanified-corereader-integration-lean-372"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:372 --> **L372** 使用已对每个世界证明apply选项目标与约束的positionConsequence；此处不需要这些前提。

<a id="line-code-leanified-corereader-integration-lean-373"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:373 --> **L373** 为回应条款，取具有适用范围内相关批评的世界。

<a id="line-code-leanified-corereader-integration-lean-374"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:374 --> **L374** 每项承诺都返回其实际保存的非空回应字符串，满足回应存在要求。

<a id="line-code-leanified-corereader-integration-lean-376"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:376 --> **L376** 说明后续定义或结果：为每项承诺提供实际范围内批评情形，避免这些实例的响应义务空真。

<a id="line-code-leanified-corereader-integration-lean-377"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:377 --> **L377** 为每项承诺提供实际范围内批评情形，避免这些实例的响应义务空真。

<a id="line-code-leanified-corereader-integration-lean-378"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:378 --> **L378** 要求actual既属于此承诺限度，且该承诺具体批评确在该处适用。

<a id="line-code-leanified-corereader-integration-lean-379"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:379 --> **L379** 将实际限度检查与实际批评检查分开。

<a id="line-code-leanified-corereader-integration-lean-380"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:380 --> **L380** 每个限度都要求identity，而actual候选按定义正是identity。

<a id="line-code-leanified-corereader-integration-lean-381"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:381 --> **L381** 分别检查每项承诺的不同批评，不空泛假设存在批评。

<a id="line-code-leanified-corereader-integration-lean-382"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:382 --> **L382** 生成批评成立，因为膨胀基线列表没有新增理解或构造操作。

<a id="line-code-leanified-corereader-integration-lean-383"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:383 --> **L383** 一致性批评使用空理论不能蕴涵所选Bool主张的已证结果。

<a id="line-code-leanified-corereader-integration-lean-384"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:384 --> **L384** 反身批评计算得到1处样本通过而0处失败。

<a id="line-code-leanified-corereader-integration-lean-385"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:385 --> **L385** Grounds批评组合outputOnlyProcess的实际输出正确性与缺失解释合同。

<a id="line-code-leanified-corereader-integration-lean-386"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:386 --> **L386** 选择批评成立，因为identity实际为惯用且既有实现。

<a id="line-code-leanified-corereader-integration-lean-388"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:388 --> **L388** 说明后续定义或结果：证明豁免选项不满足各项未改变的目标或约束。

<a id="line-code-leanified-corereader-integration-lean-389"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:389 --> **L389** 证明豁免选项不满足各项未改变的目标或约束。

<a id="line-code-leanified-corereader-integration-lean-390"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:390 --> **L390** 陈述任意世界中每项承诺的waive选项都会违反声明目标或约束。

<a id="line-code-leanified-corereader-integration-lean-391"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:391 --> **L391** 分别处理各承诺，并假设对应waive后果成立以求矛盾。

<a id="line-code-leanified-corereader-integration-lean-392"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:392 --> **L392** 生成后果会要求Generative neutralPolicy，与许可不等于赋值例中已证失败矛盾。

<a id="line-code-leanified-corereader-integration-lean-393"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:393 --> **L393** 一致性假设目标声称waive必须拒绝冲突理论。

<a id="line-code-leanified-corereader-integration-lean-394"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:394 --> **L394** 但decisionsWaive得到接受值true，使该目标化为true=false。

<a id="line-code-leanified-corereader-integration-lean-395"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:395 --> **L395** 排除一致性选项的不可能布尔等式。

<a id="line-code-leanified-corereader-integration-lean-396"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:396 --> **L396** 反身性假设目标提供选中样本n，使算术原则在该处为假。

<a id="line-code-leanified-corereader-integration-lean-397"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:397 --> **L397** waive模式选中样本恰为[1]。

<a id="line-code-leanified-corereader-integration-lean-398"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:398 --> **L398** 属于该单项列表迫使所谓失败输入n等于1。

<a id="line-code-leanified-corereader-integration-lean-399"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:399 --> **L399** 在声称失败的证明中把n替换为1。

<a id="line-code-leanified-corereader-integration-lean-400"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:400 --> **L400** 该原则在1实际返回true，与声称的false结果矛盾。

<a id="line-code-leanified-corereader-integration-lean-401"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:401 --> **L401** Grounds假设目标声称waive拒绝具体无支持能力包。

<a id="line-code-leanified-corereader-integration-lean-402"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:402 --> **L402** decisionsWaive却说明同一包被接受，得到true=false。

<a id="line-code-leanified-corereader-integration-lean-403"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:403 --> **L403** 排除不可能等式，故豁免Grounds后果失败。

<a id="line-code-leanified-corereader-integration-lean-404"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:404 --> **L404** 选择的假设目标声称waive拒绝仅凭简洁性的cheapSuccessor。

<a id="line-code-leanified-corereader-integration-lean-405"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:405 --> **L405** decisionsWaive证明该确切选择被接受，再次得到true=false。

<a id="line-code-leanified-corereader-integration-lean-406"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:406 --> **L406** 排除该等式，完成全部五个waive后果的失败证明。

<a id="line-code-leanified-corereader-integration-lean-408"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:408 --> **L408** 将假定联合采纳见证与后果失败结合，拒绝相反模式的程序。

<a id="line-code-leanified-corereader-integration-lean-409"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:409 --> **L409** 假设相反的waive价值立场仍满足ValueProcedure。

<a id="line-code-leanified-corereader-integration-lean-410"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:410 --> **L410** 提取其JointAdoption见证w、起始理论证明hs、限度证明hl及全部理由证明hr。

<a id="line-code-leanified-corereader-integration-lean-411"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:411 --> **L411** 将假设程序的后果条款应用于同一联合见证，得到waive后果；oppositeConsequenceFails c w正反驳该后果。

<a id="line-code-leanified-corereader-integration-lean-413"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:413 --> **L413** 说明后续定义或结果：抽取各立场采纳主张；都使用同一治理选择器，但分别评估结果和理由。

<a id="line-code-leanified-corereader-integration-lean-414"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:414 --> **L414** 抽取各立场采纳主张；都使用同一治理选择器，但分别评估结果和理由。

<a id="line-code-leanified-corereader-integration-lean-416"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:416 --> **L416** 把具体解释的承诺立场包装成价值面向。

<a id="line-code-leanified-corereader-integration-lean-418"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:418 --> **L418** 开启来源元数据，将CoreReader.Integration.reasonsBelongToCommitments绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-419"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:419 --> **L419** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-420"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:420 --> **L420** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-421"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:421 --> **L421** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-422"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:422 --> **L422** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-423"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:423 --> **L423** 为每项承诺提供Grounds、真实联合采纳、实际相关批评及同目标下相反政策的拒绝。

<a id="line-code-leanified-corereader-integration-lean-424"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:424 --> **L424** 要求为承诺c的实际采纳主张提供Grounds，表述由其方面内容构造。

<a id="line-code-leanified-corereader-integration-lean-425"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:425 --> **L425** 仅令commitmentFacet c适用，并只提供同一方面。

<a id="line-code-leanified-corereader-integration-lean-426"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:426 --> **L426** 还要求该立场具有非空的联合可容许采纳见证。

<a id="line-code-leanified-corereader-integration-lean-427"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:427 --> **L427** 要求此特定承诺的批评在actual实际成立。

<a id="line-code-leanified-corereader-integration-lean-428"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:428 --> **L428** 还证明相反waive立场不满足同一价值程序要求。

<a id="line-code-leanified-corereader-integration-lean-429"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:429 --> **L429** 使用该承诺已检查的positionProcedure构造单项Grounds。

<a id="line-code-leanified-corereader-integration-lean-430"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:430 --> **L430** 补上其联合见证、实际批评及相反立场的已证拒绝。

<a id="line-code-leanified-corereader-integration-lean-432"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:432 --> **L432** 说明后续定义或结果：证明Grounds立场采纳主张与所选治理模式的一般Grounds规范外延相同。

<a id="line-code-leanified-corereader-integration-lean-433"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:433 --> **L433** 证明Grounds立场采纳主张与所选治理模式的一般Grounds规范外延相同。

<a id="line-code-leanified-corereader-integration-lean-434"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:434 --> **L434** 为证明两个主张相等，固定任意世界w并比较该处命题。

<a id="line-code-leanified-corereader-integration-lean-435"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:435 --> **L435** 使用命题外延性：两个命题等价即可得到相等。

<a id="line-code-leanified-corereader-integration-lean-436"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:436 --> **L436** groundsProvisionMeaning说明一般条款恰在apply模式成立，与此采纳主张按反向对应。

<a id="line-code-leanified-corereader-integration-lean-438"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:438 --> **L438** 开启来源元数据，将CoreReader.Integration.groundsSelfAssessment绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-439"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:439 --> **L439** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-440"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:440 --> **L440** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-441"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:441 --> **L441** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-442"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:442 --> **L442** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-443"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:443 --> **L443** 把价值Grounds应用到一般Grounds规范自身，保留实际范围、批评及被拒绝豁免变体。

<a id="line-code-leanified-corereader-integration-lean-444"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:444 --> **L444** 用按内容构造的表述评估量化主张与方面包的一般GroundsProvision自身。

<a id="line-code-leanified-corereader-integration-lean-445"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:445 --> **L445** 适用价值方面恰为grounds承诺自身的方面。

<a id="line-code-leanified-corereader-integration-lean-446"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:446 --> **L446** 要求actual满足该承诺声明限度。

<a id="line-code-leanified-corereader-integration-lean-447"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:447 --> **L447** 也要求其批评在actual实际适用。

<a id="line-code-leanified-corereader-integration-lean-448"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:448 --> **L448** 要求相反的豁免Grounds承诺不满足ValueProcedure。

<a id="line-code-leanified-corereader-integration-lean-449"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:449 --> **L449** 把一般条款改写为外延相同的grounds采纳主张。

<a id="line-code-leanified-corereader-integration-lean-450"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:450 --> **L450** 复用针对同一grounds承诺的实际Grounds证明。

<a id="line-code-leanified-corereader-integration-lean-451"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:451 --> **L451** 提供分别检查过的实际限度与实际相关批评。

<a id="line-code-leanified-corereader-integration-lean-452"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:452 --> **L452** 提供相反豁免Grounds立场的已证失败。

<a id="line-code-leanified-corereader-integration-lean-454"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:454 --> **L454** 说明后续定义或结果：保存当前哲学原则形式及其实际治理模式。

<a id="line-code-leanified-corereader-integration-lean-455"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:455 --> **L455** 说明后续定义或结果：保存当前哲学原则形式及其实际治理模式。

<a id="line-code-leanified-corereader-integration-lean-456"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:456 --> **L456** 保存当前哲学原则形式及其实际治理模式。

<a id="line-code-leanified-corereader-integration-lean-457"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:457 --> **L457** 保存该哲学方法实现的实际原则形式。

<a id="line-code-leanified-corereader-integration-lean-458"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:458 --> **L458** 保存同一哲学方法采用还是豁免治理检查。

<a id="line-code-leanified-corereader-integration-lean-460"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:460 --> **L460** 从同一系统原则形式及治理选择派生被审哲学对象。

<a id="line-code-leanified-corereader-integration-lean-461"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:461 --> **L461** 以该系统自身原则形式及其在w中的治理构造哲学方法。

<a id="line-code-leanified-corereader-integration-lean-463"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:463 --> **L463** 按该哲学实际治理模式，对零处恒等提案及其他处廉价不可行提案给出许可结果。

<a id="line-code-leanified-corereader-integration-lean-464"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:464 --> **L464** 输入0指认identity方法提案；其余输入走廉价successor提案分支。

<a id="line-code-leanified-corereader-integration-lean-465"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:465 --> **L465** 对identity，运行该哲学方法实际选择政策，接受返回1、拒绝返回0。

<a id="line-code-leanified-corereader-integration-lean-466"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:466 --> **L466** 对其他输入，以同一政策评估仅凭简洁性的cheapSuccessor，同样以1/0编码接受与拒绝。

<a id="line-code-leanified-corereader-integration-lean-468"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:468 --> **L468** 把实际哲学审查程序呈为实现，域为零与一，并提供对应输出及轨迹代理。

<a id="line-code-leanified-corereader-integration-lean-469"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:469 --> **L469** 将实现命名为当前哲学的实际提案审查方法。

<a id="line-code-leanified-corereader-integration-lean-470"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:470 --> **L470** 将该提案审查实现标记为惯用。

<a id="line-code-leanified-corereader-integration-lean-471"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:471 --> **L471** 也标记同一实现为既有；后续证明检查仅此是否足以支持优先性。

<a id="line-code-leanified-corereader-integration-lean-472"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:472 --> **L472** 实现实际运行恰为该哲学方法的review函数。

<a id="line-code-leanified-corereader-integration-lean-473"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:473 --> **L473** 给该审查实现赋成本1。

<a id="line-code-leanified-corereader-integration-lean-474"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:474 --> **L474** 仅将提案编号0和1声明为其应用定义域。

<a id="line-code-leanified-corereader-integration-lean-475"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:475 --> **L475** 在实现解释字段中提供同一review函数。

<a id="line-code-leanified-corereader-integration-lean-476"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:476 --> **L476** 记录由提案编号和实际审查结果组成的双条轨迹。

<a id="line-code-leanified-corereader-integration-lean-478"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:478 --> **L478** 要求接受提案零、拒绝提案一，并满足预算一。

<a id="line-code-leanified-corereader-integration-lean-479"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:479 --> **L479** 该应用恰测试提案编号0和1。

<a id="line-code-leanified-corereader-integration-lean-480"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:480 --> **L480** 要求identity提案0被接受为1，另一受测提案被拒绝为0。

<a id="line-code-leanified-corereader-integration-lean-481"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:481 --> **L481** 给予该审查方法成本预算1。

<a id="line-code-leanified-corereader-integration-lean-482"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:482 --> **L482** 本例不通过要求中的values谓词增加限制。

<a id="line-code-leanified-corereader-integration-lean-484"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:484 --> **L484** 从执行治理结果计算两个被要求提案的实际判断。

<a id="line-code-leanified-corereader-integration-lean-485"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:485 --> **L485** 对每个必需提案，实际系统当前哲学审查须等于应用期望判定。

<a id="line-code-leanified-corereader-integration-lean-486"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:486 --> **L486** 取提案n及其属于必需输入的证明hn。

<a id="line-code-leanified-corereader-integration-lean-487"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:487 --> **L487** 用hn把n限定为具体identity或廉价successor提案编号。

<a id="line-code-leanified-corereader-integration-lean-488"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:488 --> **L488** 展开同一当前哲学方法和实际系统，显露真实提案决策。

<a id="line-code-leanified-corereader-integration-lean-489"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:489 --> **L489** 用decisionsApply将接受identity、拒绝廉价successor与所需判定匹配。

<a id="line-code-leanified-corereader-integration-lean-491"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:491 --> **L491** 说明后续定义或结果：将实现绑定当前原则及治理对象，拒绝纯地位优先，并由两个实际提案判断提供正当理由。

<a id="line-code-leanified-corereader-integration-lean-492"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:492 --> **L492** 开启来源元数据，将CoreReader.Integration.existingPhilosophyNotPrivileged绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-493"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:493 --> **L493** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-494"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:494 --> **L494** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-495"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:495 --> **L495** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-496"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:496 --> **L496** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-497"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:497 --> **L497** 将实现绑定当前原则及治理对象，拒绝纯地位优先，并由两个实际提案判断提供正当理由。

<a id="line-code-leanified-corereader-integration-lean-498"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:498 --> **L498** 检查该哲学方法形式恰为实际系统当前原则形式。

<a id="line-code-leanified-corereader-integration-lean-499"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:499 --> **L499** 检查其治理模式恰为同一系统在actual的模式。

<a id="line-code-leanified-corereader-integration-lean-500"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:500 --> **L500** 开始陈述仅地位不足以支持选择此实际审查实现。

<a id="line-code-leanified-corereader-integration-lean-501"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:501 --> **L501** 对同一哲学实现，被拒绝理由列表恰为[.status .standing]。

<a id="line-code-leanified-corereader-integration-lean-502"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:502 --> **L502** 另陈述该实现在实际提案要求下具有有根据选择。

<a id="line-code-leanified-corereader-integration-lean-503"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:503 --> **L503** 该正向选择使用实际输出理由，而非仅其名称或既有标记。

<a id="line-code-leanified-corereader-integration-lean-504"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:504 --> **L504** 同一哲学审查实际以结果1接受identity提案0。

<a id="line-code-leanified-corereader-integration-lean-505"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:505 --> **L505** 它实际以结果0拒绝廉价successor提案1。

<a id="line-code-leanified-corereader-integration-lean-506"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:506 --> **L506** 提供同形式与模式、纯地位拒绝及提案0正确计算，留下正向输出理由选择待证。

<a id="line-code-leanified-corereader-integration-lean-507"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:507 --> **L507** 也为必需提案1提供currentReviewCorrect，证明实际拒绝。

<a id="line-code-leanified-corereader-integration-lean-508"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:508 --> **L508** 由两个提案输出正确及成本1≤预算1构造正向选择可行性。

<a id="line-code-leanified-corereader-integration-lean-509"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:509 --> **L509** 以列表中的.method .output理由及currentReviewCorrect作为实际相关性见证。

<a id="line-code-leanified-corereader-integration-lean-511"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:511 --> **L511** 说明后续定义或结果：将任意给定应用合同和要求用于该系统实际依世界方法。

<a id="line-code-leanified-corereader-integration-lean-512"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:512 --> **L512** 将任意给定应用合同和要求用于该系统实际依世界方法。

<a id="line-code-leanified-corereader-integration-lean-513"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:513 --> **L513** 接收关联Requirements与被评实现的任意应用合同。

<a id="line-code-leanified-corereader-integration-lean-514"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:514 --> **L514** 在每个世界，把同一合同和要求应用于该系统实际方法实现。

<a id="line-code-leanified-corereader-integration-lean-516"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:516 --> **L516** 把同系统完整反身性与精确参数化应用主张的Grounds结合。

<a id="line-code-leanified-corereader-integration-lean-517"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:517 --> **L517** ApplicationDuties把选定应用合同保留为明确参数。

<a id="line-code-leanified-corereader-integration-lean-518"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:518 --> **L518** 也接收为每个潜在相关方面提供的表述。

<a id="line-code-leanified-corereader-integration-lean-519"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:519 --> **L519** 把实际适用谓词与提供的方面列表分开。

<a id="line-code-leanified-corereader-integration-lean-520"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:520 --> **L520** 要求同一系统所有者在w的实际规则和工作满足完整反身要求。

<a id="line-code-leanified-corereader-integration-lean-521"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:521 --> **L521** 要求为该系统、这些要求与此合同产生的主张提供匹配Grounds。

<a id="line-code-leanified-corereader-integration-lean-523"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:523 --> **L523** 说明后续定义或结果：从明确假定的应用遵守接口抽取反身性、适用覆盖及匹配面向检查，不凭空确立遵守。

<a id="line-code-leanified-corereader-integration-lean-524"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:524 --> **L524** 开启来源元数据，将CoreReader.Integration.applicationRetainsDuties绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-525"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:525 --> **L525** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-526"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:526 --> **L526** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-527"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:527 --> **L527** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-528"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:528 --> **L528** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-529"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:529 --> **L529** 从明确假定的应用遵守接口抽取反身性、适用覆盖及匹配面向检查，不凭空确立遵守。

<a id="line-code-leanified-corereader-integration-lean-530"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:530 --> **L530** 该定理保留任意应用合同，不固定单一能力定义。

<a id="line-code-leanified-corereader-integration-lean-531"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:531 --> **L531** 保留该应用各方面的实际表述族。

<a id="line-code-leanified-corereader-integration-lean-532"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:532 --> **L532** 保留该应用自身适用谓词及所提供方面列表。

<a id="line-code-leanified-corereader-integration-lean-533"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:533 --> **L533** 关键前提是假设ApplicationDuties已对这些确切对象成立；定理不创造履责事实。

<a id="line-code-leanified-corereader-integration-lean-534"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:534 --> **L534** 结论从假设义务保留同所有者规则与工作的完整反身要求。

<a id="line-code-leanified-corereader-integration-lean-535"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:535 --> **L535** 它要求每个实际适用方面都在提供列表中，与标签无关。

<a id="line-code-leanified-corereader-integration-lean-536"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:536 --> **L536** 对每个所列方面，其被评主张须等于该系统实际参数化应用主张。

<a id="line-code-leanified-corereader-integration-lean-537"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:537 --> **L537** 同一方面须具有可表达且内容匹配的表述，并实际满足履责条件。

<a id="line-code-leanified-corereader-integration-lean-538"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:538 --> **L538** 投影h.1为反身要求，h.2.2.1为适用方面覆盖，h.2.2.2为每个所列方面的同主张、表述与履责检查。

<a id="line-code-leanified-corereader-integration-lean-540"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:540 --> **L540** 要求实现满足应用在每个请求输入上的期望输出。

<a id="line-code-leanified-corereader-integration-lean-541"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:541 --> **L541** 输出合同在每个必需输入上核对该实现实际运行与所选期望输出。

<a id="line-code-leanified-corereader-integration-lean-543"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:543 --> **L543** 把同一应用的期望输出由恒等改为后继，保留其他字段。

<a id="line-code-leanified-corereader-integration-lean-544"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:544 --> **L544** 保留identityRequirements的输入及其他字段，但把期望输出改为n+1。

<a id="line-code-leanified-corereader-integration-lean-546"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:546 --> **L546** 说明后续定义或结果：保留旧观察，把被评主张改成后继目标，以检验同对象证据是否仍足够。

<a id="line-code-leanified-corereader-integration-lean-547"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:547 --> **L547** 保留旧观察，把被评主张改成后继目标，以检验同对象证据是否仍足够。

<a id="line-code-leanified-corereader-integration-lean-548"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:548 --> **L548** 为无限制范围的经验方面复用旧实际观察。

<a id="line-code-leanified-corereader-integration-lean-549"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:549 --> **L549** 把其被评主张改为同一系统满足successorRequirements；不确定性谓词仍平凡为真。

<a id="line-code-leanified-corereader-integration-lean-551"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:551 --> **L551** 开启来源元数据，将CoreReader.Integration.applicationVariation绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-552"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:552 --> **L552** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-553"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:553 --> **L553** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-554"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:554 --> **L554** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-555"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:555 --> **L555** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-556"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:556 --> **L556** 在此实例中，原恒等合同仍保有已履行义务；改后的后继合同在同一实际方法上失败，且指定保留观察包不能为它提供根据。

<a id="line-code-leanified-corereader-integration-lean-557"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:557 --> **L557** 原恒等输出应用在实际系统和世界上履行ApplicationDuties。

<a id="line-code-leanified-corereader-integration-lean-558"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:558 --> **L558** 该正实例使用已支持的capabilityFacet及按其自身内容构造的表述。

<a id="line-code-leanified-corereader-integration-lean-559"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:559 --> **L559** 但同一实际系统不满足改变后的后继输出合同。

<a id="line-code-leanified-corereader-integration-lean-560"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:560 --> **L560** 改变后的主张也不能从保留观察包取得Grounds。

<a id="line-code-leanified-corereader-integration-lean-561"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:561 --> **L561** 此失败恰针对changedObjectiveFacet单项包，不针对所有可能证据包。

<a id="line-code-leanified-corereader-integration-lean-562"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:562 --> **L562** 由完整自有反身要求及capabilityGrounds构造原义务，留下改变后行为与证据失败待证。

<a id="line-code-leanified-corereader-integration-lean-563"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:563 --> **L563** 假设实际identity方法满足新的successor合同。

<a id="line-code-leanified-corereader-integration-lean-564"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:564 --> **L564** 在必需输入0处，这会迫使实际输出0等于期望1。

<a id="line-code-leanified-corereader-integration-lean-565"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:565 --> **L565** 排除不可能的0=1，反驳改变后的实际能力主张。

<a id="line-code-leanified-corereader-integration-lean-566"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:566 --> **L566** 假设保留观察单项包仍为改变后的主张提供Grounds。

<a id="line-code-leanified-corereader-integration-lean-567"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:567 --> **L567** 从假设Grounds包提取实际changedObjectiveFacet的履责。

<a id="line-code-leanified-corereader-integration-lean-568"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:568 --> **L568** 将其支持规则应用于相容actual世界和输入0，得到同一错误输出等式0=1。

<a id="line-code-leanified-corereader-integration-lean-569"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:569 --> **L569** 排除该等式，证明指定保留观察包不能为新主张提供根据。

<a id="line-code-leanified-corereader-integration-lean-571"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:571 --> **L571** 说明后续定义或结果：给出实际遵守章程系统与兼容成本证据，但该指定能力面向无支持；不排除其他有效根据。

<a id="line-code-leanified-corereader-integration-lean-572"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:572 --> **L572** 开启来源元数据，将CoreReader.Integration.charterNotGrounds绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-573"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:573 --> **L573** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-574"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:574 --> **L574** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-575"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:575 --> **L575** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-576"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:576 --> **L576** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-577"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:577 --> **L577** 给出实际遵守章程系统与兼容成本证据，但该指定能力面向无支持；不排除其他有效根据。

<a id="line-code-leanified-corereader-integration-lean-578"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:578 --> **L578** 同一实际系统满足全部已表示Charter条件。

<a id="line-code-leanified-corereader-integration-lean-579"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:579 --> **L579** 其实际世界与真实的至多2成本观察相容。

<a id="line-code-leanified-corereader-integration-lean-580"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:580 --> **L580** 然而该成本证据不能为其输出能力提供Grounds。

<a id="line-code-leanified-corereader-integration-lean-581"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:581 --> **L581** 被否定的是特定unsupportedCapabilityFacet单项Grounds，不是所有可能评估包。

<a id="line-code-leanified-corereader-integration-lean-582"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:582 --> **L582** 组合charterChecked、actual与成本记录的直接相容性，以及已证unsupportedGrounds反例。

<a id="line-code-leanified-corereader-integration-lean-584"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:584 --> **L584** 说明后续定义或结果：构造同一系统和世界，满足实际判断、完整反身性、能力根据、可行选择及各解释承诺Grounds；这是有界模型而非哲学普遍正确性。

<a id="line-code-leanified-corereader-integration-lean-585"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:585 --> **L585** 说明后续定义或结果：构造同一系统和世界，满足实际判断、完整反身性、能力根据、可行选择及各解释承诺Grounds；这是有界模型而非哲学普遍正确性。

<a id="line-code-leanified-corereader-integration-lean-586"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:586 --> **L586** 开启来源元数据，将CoreReader.Integration.jointWitness绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-integration-lean-587"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:587 --> **L587** 记录来源引用organon.preamble#p1及内容摘要2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-588"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:588 --> **L588** 记录来源引用organon.preamble#p2及内容摘要2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-589"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:589 --> **L589** 记录来源引用organon.charter.overview#p2及内容摘要75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-590"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:590 --> **L590** 记录来源引用organon.charter.overview#p3及内容摘要75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-591"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:591 --> **L591** 记录来源引用organon.relationships.roles#p1及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-592"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:592 --> **L592** 记录来源引用organon.relationships.roles#p2及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-593"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:593 --> **L593** 记录来源引用organon.relationships.roles#p3及内容摘要24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-integration-lean-594"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:594 --> **L594** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-integration-lean-595"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:595 --> **L595** 构造同一系统和世界，满足实际判断、完整反身性、能力根据、可行选择及各解释承诺Grounds；这是有界模型而非哲学普遍正确性。

<a id="line-code-leanified-corereader-integration-lean-596"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:596 --> **L596** 要求存在实际系统与世界对作为联合见证，使组合主张非空。

<a id="line-code-leanified-corereader-integration-lean-597"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:597 --> **L597** 同一对象对必须对其共同持有主张和情境可容许，并满足Charter。

<a id="line-code-leanified-corereader-integration-lean-598"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:598 --> **L598** 它还须由capabilityFacet履行自身能力义务，且拥有声称能力。

<a id="line-code-leanified-corereader-integration-lean-599"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:599 --> **L599** 同一实际方法须在自身要求下凭objectiveReason得到可行的有根据选择。

<a id="line-code-leanified-corereader-integration-lean-600"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:600 --> **L600** 对五项承诺中的每一项，对应实际采纳主张都须具有Grounds。

<a id="line-code-leanified-corereader-integration-lean-601"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:601 --> **L601** 每项承诺使用自身确切单项价值方面及对应适用性。

<a id="line-code-leanified-corereader-integration-lean-602"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:602 --> **L602** 最后确认见证就是actualSystem和actual，防止换成无关存在对象。

<a id="line-code-leanified-corereader-integration-lean-603"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:603 --> **L603** 选择该确切对象对，提供实际可容许性与已检查Charter。

<a id="line-code-leanified-corereader-integration-lean-604"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:604 --> **L604** 补上同一系统自身能力义务、实际能力及有根据的identity选择。

<a id="line-code-leanified-corereader-integration-lean-605"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:605 --> **L605** 使用每项承诺已有Grounds证明，再按构造完成两个见证一致性等式。

<a id="line-code-leanified-corereader-integration-lean-607"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:607 --> **L607** 关闭当前命名空间。

<a id="code-leanified-corereader-logic-lean"></a>
### `leanified/CoreReader/Logic.lean`

<!-- lean-code leanified/CoreReader/Logic.lean -->
```lean
namespace CoreReader.Logic

/- A claim denotes the worlds in which its content holds. -/
abbrev Claim (W : Type) := W → Prop
/- A theory is a collection of simultaneously held claims. -/
abbrev Theory (W : Type) := Claim W → Prop
/- A model satisfies every member of the whole theory. -/
def Models {W : Type} (t : Theory W) (w : W) : Prop := ∀ p, t p → p w
/- Semantic entailment quantifies over all models. -/
def Entails {W : Type} (t : Theory W) (p : Claim W) : Prop := ∀ w, Models t w → p w
/- Satisfiability requires an actual witness. -/
def Satisfiable {W : Type} (t : Theory W) : Prop := ∃ w, Models t w
/- Assumptions, meanings and scope are distinct components; questions remain explicit. -/
structure Context (W Q : Type) where
  assumptions : Theory W
  meaning : Q → Claim W
  scope : Claim W
/- Admissible worlds satisfy held claims, assumptions and scope jointly. -/
def Admissible {W Q : Type} (t : Theory W) (c : Context W Q) (w : W) : Prop :=
  Models t w ∧ Models c.assumptions w ∧ c.scope w
/- A negative judgment denies the very same question under the same meaning. -/
def Consequence {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q) (positive : Bool) : Prop :=
  ∀ w, Admissible t c w → if positive then c.meaning q w else ¬ c.meaning q w
/- The consistency obligation prohibits both consequences at one comparison basis. -/
def Consistent {W Q : Type} (t : Theory W) (c : Context W Q) : Prop :=
  ∀ q, ¬ (Consequence t c q true ∧ Consequence t c q false)
/- An inhabited joint interpretation prevents opposite semantic consequences. -/
/-- organon-map CoreReader.Logic.consequenceConsistency
organon.charter.consistency#p1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
theorem consequenceConsistency {W Q : Type} (t : Theory W) (c : Context W Q)
    (inhabited : ∃ w, Admissible t c w) : Consistent t c := by
  intro q h
  obtain ⟨w, hw⟩ := inhabited
  exact (h.2 w hw) (h.1 w hw)
/- Empty and singleton theories provide concrete semantic contexts. -/
def emptyTheory {W : Type} : Theory W := fun _ => False
def singleton {W : Type} (p : Claim W) : Theory W := fun q => q = p
def union {W : Type} (a b : Theory W) : Theory W := fun p => a p ∨ b p
theorem modelsSingleton {W : Type} (p : Claim W) (w : W) : Models (singleton p) w ↔ p w := by
  constructor
  · intro h; exact h p rfl
  · intro h q hq; cases hq; exact h
theorem modelsUnion {W : Type} (a b : Theory W) (w : W) :
    Models (union a b) w ↔ Models a w ∧ Models b w := by
  constructor
  · intro h; exact ⟨fun p hp => h p (Or.inl hp), fun p hp => h p (Or.inr hp)⟩
  · rintro ⟨ha,hb⟩ p (hp|hp); exact ha p hp; exact hb p hp
/- The paired world records independent truth values for two questions. -/
def premiseP : Claim (Bool × Bool) := fun w => w.1 = true
def premiseRule : Claim (Bool × Bool) := fun w => w.1 = true → w.2 = true
def premiseNotQ : Claim (Bool × Bool) := fun w => w.2 ≠ true
def jointTheory : Theory (Bool × Bool) :=
  union (singleton premiseP) (union (singleton premiseRule) (singleton premiseNotQ))
/- Each premise has a model, but their joint implication makes the union unsatisfiable. -/
/-- organon-map CoreReader.Logic.jointConflict
organon.charter.consistency#p1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
theorem jointConflict :
    Satisfiable (singleton premiseP) ∧ Satisfiable (singleton premiseRule) ∧
    Satisfiable (singleton premiseNotQ) ∧ ¬ Satisfiable jointTheory := by
  refine ⟨⟨(true,true), (modelsSingleton _ _).2 rfl⟩,
    ⟨(false,false), (modelsSingleton _ _).2 (by intro h; cases h)⟩,
    ⟨(false,false), (modelsSingleton _ _).2 (by intro h; cases h)⟩, ?_⟩
  rintro ⟨w, hw⟩
  have hp := hw premiseP (Or.inl rfl)
  have hr := hw premiseRule (Or.inr (Or.inl rfl))
  have hn := hw premiseNotQ (Or.inr (Or.inr rfl))
  exact hn (hr hp)
/- A retraction replaces the old singleton, rather than retaining both at the same time. -/
def revisionSlice (time : Nat) : Theory Bool :=
  singleton (fun w => w = (time == 0))
/- The initial and revised slices have models; keeping both would create a conflict. -/
/-- organon-map CoreReader.Logic.revisionCanReverse
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem revisionCanReverse :
    Satisfiable (revisionSlice 0) ∧ Satisfiable (revisionSlice 1) ∧
    ¬ Satisfiable (union (revisionSlice 0) (revisionSlice 1)) := by
  refine ⟨⟨true, (modelsSingleton _ _).2 rfl⟩,
    ⟨false, (modelsSingleton _ _).2 rfl⟩, ?_⟩
  rintro ⟨w, hw⟩
  have hs := (modelsUnion _ _ _).1 hw
  have hp := (modelsSingleton _ _).1 hs.1
  have hn := (modelsSingleton _ _).1 hs.2
  have bad : true = false := hp.symm.trans hn
  cases bad
/- This basic question asks whether the represented switch is on. -/
def onQuestion : Unit → Claim Bool := fun _ w => w = true
def assumptionContext (b : Bool) : Context Bool Unit :=
  ⟨singleton (fun w => w = b), onQuestion, fun _ => True⟩
def meaningContext (b : Bool) : Context Bool Unit :=
  ⟨singleton (fun w => w = true), (fun _ w => w = b), fun _ => True⟩
def scopeContext (b : Bool) : Context Bool Unit :=
  ⟨emptyTheory, onQuestion, fun w => w = b⟩
/- Distinct assumptions, meanings and scopes each admit opposite judgments without same-context conflict. -/
/-- organon-map CoreReader.Logic.contextDifferences
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem contextDifferences :
    (Consequence emptyTheory (assumptionContext true) () true ∧
      Consequence emptyTheory (assumptionContext false) () false) ∧
    (Consequence emptyTheory (meaningContext true) () true ∧
      Consequence emptyTheory (meaningContext false) () false) ∧
    (Consequence emptyTheory (scopeContext true) () true ∧
      Consequence emptyTheory (scopeContext false) () false) ∧
    (∀ b, ∃ w, Admissible emptyTheory (assumptionContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (meaningContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (scopeContext b) w) := by
  have empty : ∀ w : Bool, Models emptyTheory w := by intro w p hp; cases hp
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩, ⟨?_, ?_⟩, ?_, ?_, ?_⟩
  · intro w h; change w = true; exact (modelsSingleton (fun x : Bool => x = true) w).1 h.2.1
  · intro w h hp; have hn := (modelsSingleton _ _).1 h.2.1; cases hp.symm.trans hn
  · intro w h; change w = true; exact (modelsSingleton (fun x : Bool => x = true) w).1 h.2.1
  · intro w h hn; have hp := (modelsSingleton _ _).1 h.2.1; cases hp.symm.trans hn
  · intro w h; exact h.2.2
  · intro w h hp; cases hp.symm.trans h.2.2
  · intro b; exact ⟨b, empty b, (modelsSingleton _ _).2 rfl, trivial⟩
  · intro b; exact ⟨true, empty true, (modelsSingleton _ _).2 rfl, trivial⟩
  · intro b; exact ⟨b, empty b, empty b, rfl⟩
/- Snapshots preserve identifiable adopted-form revisions even when semantic content agrees. -/
structure Snapshot (W Q : Type) where
  held : Theory W
  context : Context W Q
  revisionIdentity : Nat
/- Semantic equivalence compares represented content, not its list ordering. -/
def SameContent {W Q : Type} (a b : Snapshot W Q) : Prop :=
  (∀ p, a.held p ↔ b.held p) ∧
  (∀ p, a.context.assumptions p ↔ b.context.assumptions p) ∧
  (∀ q w, a.context.meaning q w ↔ b.context.meaning q w) ∧
  (∀ w, a.context.scope w ↔ b.context.scope w)
/- The reporting norm covers both semantic change and independently identified revisions. -/
def TruthfulReport {W Q : Type} (a b : Snapshot W Q) (reported : Bool) : Prop :=
  (¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity) → reported = true
/- A real represented change and compliance entail an acknowledged change. -/
/-- organon-map CoreReader.Logic.semanticChangeMustBeReported
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem semanticChangeMustBeReported {W Q : Type} (a b : Snapshot W Q) (reported : Bool)
    (changed : ¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity)
    (h : TruthfulReport a b reported) : reported = true := h changed
/- Reordering a two-claim presentation preserves the held theory extension. -/
/-- organon-map CoreReader.Logic.representationOrderIrrelevant
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem representationOrderIrrelevant {W : Type} (p q : Claim W) :
    ∀ r, union (singleton p) (singleton q) r ↔ union (singleton q) (singleton p) r := by
  intro r; exact or_comm
def contextSnapshot (c : Context Bool Unit) (revision : Nat := 0) : Snapshot Bool Unit :=
  ⟨emptyTheory, c, revision⟩
/- Hiding each kind of contextual change violates the reporting interface; reporting alone supplies no truth guarantee. -/
/-- organon-map CoreReader.Logic.hiddenContextChangeRejected
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem hiddenContextChangeRejected :
    ¬ TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (meaningContext true)) (contextSnapshot (meaningContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true)) (contextSnapshot (scopeContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true) 0) (contextSnapshot (scopeContext true) 1) false ∧
    (TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) true ∧
      ¬ Models (assumptionContext false).assumptions true) := by
  have neq : (fun w : Bool => w = true) ≠ (fun w : Bool => w = false) := by
    intro h; have k := congrFun h true; have z : true = false := k.mp rfl; cases z
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro h
    have bad := h (Or.inl (by intro s; exact neq ((s.2.1 _).mp rfl)))
    cases bad
  · intro h
    have bad := h (Or.inl (by intro s; have z := (s.2.2.1 () true).mp rfl; cases z))
    cases bad
  · intro h
    have bad := h (Or.inl (by intro s; have z := (s.2.2.2 true).mp rfl; cases z))
    cases bad
  · intro h; have bad := h (Or.inr (by decide)); cases bad
  · refine ⟨fun _ => rfl, ?_⟩
    intro h; have z := (modelsSingleton _ _).1 h; cases z
/- Two nonidentical resource objectives can share a feasible allocation. -/
/-- organon-map CoreReader.Logic.tensionWithoutContradiction
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
-/
theorem tensionWithoutContradiction :
    (∃ budget : Nat, 4 ≤ budget ∧ budget ≤ 6) ∧
    ¬ ((fun n : Nat => 4 ≤ n) = (fun n : Nat => n ≤ 6)) := by
  refine ⟨⟨5, by decide, by decide⟩, ?_⟩
  intro h; have k := congrFun h 0; have bad : 4 ≤ 0 := k.mpr (by decide); cases bad
/- Conflicting conclusions cannot be retained under the same consistency obligation. -/
/-- organon-map CoreReader.Logic.conflictRequiresChange
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
-/
theorem conflictRequiresChange {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q)
    (positive : Consequence t c q true) (negative : Consequence t c q false) :
    ¬ Consistent t c := fun h => h q ⟨positive,negative⟩
/- A satisfiable theory can have a false assumption at a specified actual world. -/
/-- organon-map CoreReader.Logic.consistentFalse
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem consistentFalse : Satisfiable (singleton (fun w : Bool => w = true)) ∧
    ¬ Models (singleton (fun w : Bool => w = true)) false := by
  refine ⟨⟨true, (modelsSingleton _ _).2 rfl⟩, ?_⟩
  intro h; have bad := (modelsSingleton _ _).1 h; cases bad
/- The explicitly asked on/off question is undecided by the empty but inhabited theory. -/
/-- organon-map CoreReader.Logic.consistentIncomplete
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem consistentIncomplete : Satisfiable (emptyTheory : Theory Bool) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) ∧
    ¬ Entails emptyTheory (fun w : Bool => w ≠ true) := by
  have empty : ∀ w : Bool, Models emptyTheory w := by intro w p hp; cases hp
  refine ⟨⟨true, empty true⟩, ?_, ?_⟩
  · intro h; have bad := h false (empty false); cases bad
  · intro h; exact h true (empty true) rfl
/- A claim can share a model with a theory without following in every model. -/
/-- organon-map CoreReader.Logic.compatibilityNotEntailment
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem compatibilityNotEntailment :
    Satisfiable (union emptyTheory (singleton (fun w : Bool => w = true))) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) := by
  refine ⟨⟨true, (modelsUnion _ _ _).2 ⟨?_, (modelsSingleton _ _).2 rfl⟩⟩,
    consistentIncomplete.2.1⟩
  intro p hp; cases hp

end CoreReader.Logic
```
<!-- /lean-code leanified/CoreReader/Logic.lean -->

<a id="line-code-leanified-corereader-logic-lean-1"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:1 --> **L1** 打开命名空间 CoreReader.Logic，使后续声明获得这一模块限定名。

<a id="line-code-leanified-corereader-logic-lean-3"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:3 --> **L3** 说明 Claim 的预定范围。对应声明涉及：主张是从给定世界类型到命题的函数，不预设现实解释。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-4"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:4 --> **L4** 引入类型缩写 Claim。主张是从给定世界类型到命题的函数，不预设现实解释。

<a id="line-code-leanified-corereader-logic-lean-5"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:5 --> **L5** 说明 Theory 的预定范围。对应声明涉及：理论用谓词选择同时持有的主张，不要求有限语法。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-6"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:6 --> **L6** 引入类型缩写 Theory。理论用谓词选择同时持有的主张，不要求有限语法。

<a id="line-code-leanified-corereader-logic-lean-7"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:7 --> **L7** 说明 Models 的预定范围。对应声明涉及：世界满足理论，指理论选择的每个主张都在此世界成立。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-8"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:8 --> **L8** 定义 Models。世界满足理论，指理论选择的每个主张都在此世界成立。

<a id="line-code-leanified-corereader-logic-lean-9"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:9 --> **L9** 说明 Entails 的预定范围。对应声明涉及：在所有理论模型中结论都成立；无模型时蕴涵可空真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-10"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:10 --> **L10** 定义 Entails。在所有理论模型中结论都成立；无模型时蕴涵可空真。

<a id="line-code-leanified-corereader-logic-lean-11"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:11 --> **L11** 说明 Satisfiable 的预定范围。对应声明涉及：要求存在实际世界及其满足全部理论主张的证明。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-12"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:12 --> **L12** 定义 Satisfiable。要求存在实际世界及其满足全部理论主张的证明。

<a id="line-code-leanified-corereader-logic-lean-13"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:13 --> **L13** 说明 Context 的预定范围。对应声明涉及：分别保存附加假设、问题含义和适用范围。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-14"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:14 --> **L14** 声明数据接口 Context。分别保存附加假设、问题含义和适用范围。

<a id="line-code-leanified-corereader-logic-lean-15"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:15 --> **L15** 保存真实的上下文假设理论，与所持理论分开。

<a id="line-code-leanified-corereader-logic-lean-16"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:16 --> **L16** 把每个问题解释为针对每个世界的命题。

<a id="line-code-leanified-corereader-logic-lean-17"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:17 --> **L17** 保存选择被接纳应用范围的谓词。

<a id="line-code-leanified-corereader-logic-lean-18"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:18 --> **L18** 说明 Admissible 的预定范围。对应声明涉及：同一世界同时满足持有理论、上下文假设和范围。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-19"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:19 --> **L19** 定义 Admissible。同一世界同时满足持有理论、上下文假设和范围。

<a id="line-code-leanified-corereader-logic-lean-20"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:20 --> **L20** 要求同一世界同时满足两个理论及上下文范围。

<a id="line-code-leanified-corereader-logic-lean-21"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:21 --> **L21** 说明 Consequence 的预定范围。对应声明涉及：在同一上下文全部可接受世界中，要求指定问题的正或负结论。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-22"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:22 --> **L22** 定义 Consequence。在同一上下文全部可接受世界中，要求指定问题的正或负结论。

<a id="line-code-leanified-corereader-logic-lean-23"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:23 --> **L23** 对每个可接受世界量化；符号选择该问题的含义或其否定。

<a id="line-code-leanified-corereader-logic-lean-24"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:24 --> **L24** 说明 Consistent 的预定范围。对应声明涉及：禁止同一问题的正反后果并存；问题类型为空时条件空真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-25"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:25 --> **L25** 定义 Consistent。禁止同一问题的正反后果并存；问题类型为空时条件空真。

<a id="line-code-leanified-corereader-logic-lean-26"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:26 --> **L26** 对每个问题，禁止同一上下文中正反后果的合取。

<a id="line-code-leanified-corereader-logic-lean-27"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:27 --> **L27** 说明 consequenceConsistency 的预定范围。对应声明涉及：用显式可接受世界同时实例化正反后果，导出矛盾，得到上下文一致性。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-28"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:28 --> **L28** 开始 CoreReader.Logic.consequenceConsistency 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-29"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:29 --> **L29** 登记来源单元 organon.charter.consistency#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-30"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:30 --> **L30** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-31"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:31 --> **L31** 陈述经检查的结果 consequenceConsistency。用显式可接受世界同时实例化正反后果，导出矛盾，得到上下文一致性。

<a id="line-code-leanified-corereader-logic-lean-32"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:32 --> **L32** 假定整个上下文具有可接受见证，得出其一致性；开始证明。

<a id="line-code-leanified-corereader-logic-lean-33"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:33 --> **L33** 引入任意问题 q，以及假定的同一上下文中正反后果对 h。

<a id="line-code-leanified-corereader-logic-lean-34"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:34 --> **L34** 从显式非空前提 inhabited 提取共同可接受世界 w，以及它满足整套理论、假设与范围的证明 hw。

<a id="line-code-leanified-corereader-logic-lean-35"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:35 --> **L35** 在同一 w 与 hw 处应用 h 的两部分；否定后果与肯定后果矛盾。

<a id="line-code-leanified-corereader-logic-lean-36"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:36 --> **L36** 说明 emptyTheory 的预定范围。对应声明涉及：不选择任何主张，故每个世界都是模型。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-37"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:37 --> **L37** 定义 emptyTheory。不选择任何主张，故每个世界都是模型。

<a id="line-code-leanified-corereader-logic-lean-38"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:38 --> **L38** 定义 singleton。只选择与指定主张相等的谓词。

<a id="line-code-leanified-corereader-logic-lean-39"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:39 --> **L39** 定义 union。以成员关系的析取合并两个理论。

<a id="line-code-leanified-corereader-logic-lean-40"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:40 --> **L40** 陈述经检查的结果 modelsSingleton。证明满足单一主张理论等价于该主张在当前世界成立。 后续策略块证明这一显式类型。

<a id="line-code-leanified-corereader-logic-lean-41"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:41 --> **L41** 将满足单一主张理论与满足该主张的等价关系拆为两个蕴含。

<a id="line-code-leanified-corereader-logic-lean-42"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:42 --> **L42** 把假定的单元素理论模型 h 应用于 p；p 的成员关系由自反相等成立。

<a id="line-code-leanified-corereader-logic-lean-43"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:43 --> **L43** 任取被选择的主张 q，单元素成员关系将 q 与 p 等同；代入这一等式并返回 p 已成立的前提 h。

<a id="line-code-leanified-corereader-logic-lean-44"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:44 --> **L44** 陈述经检查的结果 modelsUnion。证明同一世界满足理论并集等价于同时满足两部分。

<a id="line-code-leanified-corereader-logic-lean-45"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:45 --> **L45** 陈述同一世界满足理论并集，当且仅当它满足两个组成理论。

<a id="line-code-leanified-corereader-logic-lean-46"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:46 --> **L46** 分别证明满足并集与同时满足两个理论之间的正反方向。

<a id="line-code-leanified-corereader-logic-lean-47"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:47 --> **L47** 把成员证明嵌入左或右析取，将并集模型 h 分别限制到两个理论。

<a id="line-code-leanified-corereader-logic-lean-48"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:48 --> **L48** 拆出两个组成理论的模型，将并集成员关系分为两种情况，并在同一主张与世界上使用对应模型。

<a id="line-code-leanified-corereader-logic-lean-49"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:49 --> **L49** 说明 premiseP 的预定范围。对应声明涉及：要求布尔对的第一坐标为真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-50"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:50 --> **L50** 定义 premiseP。要求布尔对的第一坐标为真。

<a id="line-code-leanified-corereader-logic-lean-51"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:51 --> **L51** 定义 premiseRule。要求第一坐标为真时第二坐标也为真。

<a id="line-code-leanified-corereader-logic-lean-52"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:52 --> **L52** 定义 premiseNotQ。要求第二坐标不为真。

<a id="line-code-leanified-corereader-logic-lean-53"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:53 --> **L53** 定义 jointTheory。组合第一坐标事实、推论规则和第二坐标的否定。

<a id="line-code-leanified-corereader-logic-lean-54"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:54 --> **L54** 通过嵌套理论并集，同时持有 P、P 蕴含 Q 的规则及非 Q。

<a id="line-code-leanified-corereader-logic-lean-55"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:55 --> **L55** 说明 jointConflict 的预定范围。对应声明涉及：三个单项各自有模型，联合后以P及P→Q反驳¬Q，证明无共同模型。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-56"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:56 --> **L56** 开始 CoreReader.Logic.jointConflict 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-57"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:57 --> **L57** 登记来源单元 organon.charter.consistency#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-58"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:58 --> **L58** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-59"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:59 --> **L59** 陈述经检查的结果 jointConflict。三个单项各自有模型，联合后以P及P→Q反驳¬Q，证明无共同模型。

<a id="line-code-leanified-corereader-logic-lean-60"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:60 --> **L60** 前两个结论分别为 P 与蕴含规则提供模型。

<a id="line-code-leanified-corereader-logic-lean-61"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:61 --> **L61** 还要求非 Q 单独有模型，却否定整套联合理论具有模型。

<a id="line-code-leanified-corereader-logic-lean-62"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:62 --> **L62** 给 P 提供模型 (true,true)，用 modelsSingleton 将第一坐标相等转换为所需模型证明。

<a id="line-code-leanified-corereader-logic-lean-63"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:63 --> **L63** 给蕴含前提提供模型 (false,false)：其第一坐标为 false，假定它为 true 即矛盾。

<a id="line-code-leanified-corereader-logic-lean-64"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:64 --> **L64** 给非 Q 提供模型 (false,false)，留下联合不可满足分支待证。

<a id="line-code-leanified-corereader-logic-lean-65"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:65 --> **L65** 假定存在联合模型 w 及证明 hw，以反驳其存在。

<a id="line-code-leanified-corereader-logic-lean-66"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:66 --> **L66** 利用 P 在联合理论中的左侧成员关系，提取实际第一坐标事实。

<a id="line-code-leanified-corereader-logic-lean-67"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:67 --> **L67** 通过规则在嵌套并集中的成员关系，提取 P 蕴含 Q。

<a id="line-code-leanified-corereader-logic-lean-68"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:68 --> **L68** 在同一世界，从另一个嵌套并集分支提取非 Q。

<a id="line-code-leanified-corereader-logic-lean-69"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:69 --> **L69** 将规则应用于 P 得到 Q，与已提取的非 Q 矛盾。

<a id="line-code-leanified-corereader-logic-lean-70"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:70 --> **L70** 说明 revisionSlice 的预定范围。对应声明涉及：时刻零选择真世界，其他自然数时刻选择假世界。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-71"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:71 --> **L71** 定义 revisionSlice。时刻零选择真世界，其他自然数时刻选择假世界。

<a id="line-code-leanified-corereader-logic-lean-72"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:72 --> **L72** 只选择一个主张：世界等于测试 time=0 所得布尔值。

<a id="line-code-leanified-corereader-logic-lean-73"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:73 --> **L73** 说明 revisionCanReverse 的预定范围。对应声明涉及：给旧新切片各自的模型，并以真与假不可相等证明二者联合冲突。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-74"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:74 --> **L74** 开始 CoreReader.Logic.revisionCanReverse 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-75"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:75 --> **L75** 登记来源单元 organon.charter.consistency.meaning#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-76"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:76 --> **L76** 登记来源单元 organon.charter.consistency.meaning#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-77"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:77 --> **L77** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-78"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:78 --> **L78** 陈述经检查的结果 revisionCanReverse。给旧新切片各自的模型，并以真与假不可相等证明二者联合冲突。

<a id="line-code-leanified-corereader-logic-lean-79"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:79 --> **L79** 要求时间切片 0 与 1 各自具有模型见证。

<a id="line-code-leanified-corereader-logic-lean-80"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:80 --> **L80** 否定两者同时并集的模型，而不否定各自见证。

<a id="line-code-leanified-corereader-logic-lean-81"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:81 --> **L81** 给时间零的单元素理论提供 true 见证。

<a id="line-code-leanified-corereader-logic-lean-82"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:82 --> **L82** 给时间一提供 false 见证，留下同时持有两个切片不可能的证明。

<a id="line-code-leanified-corereader-logic-lean-83"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:83 --> **L83** 假定一个世界同时满足两个时间切片。

<a id="line-code-leanified-corereader-logic-lean-84"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:84 --> **L84** 把并集模型拆为同一世界中的时间零与时间一模型。

<a id="line-code-leanified-corereader-logic-lean-85"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:85 --> **L85** 从时间零单元素理论提取共同世界等于 true。

<a id="line-code-leanified-corereader-logic-lean-86"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:86 --> **L86** 从时间一单元素理论提取同一世界等于 false。

<a id="line-code-leanified-corereader-logic-lean-87"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:87 --> **L87** 经由同一世界合成两个等式，推出不可能的 true = false。

<a id="line-code-leanified-corereader-logic-lean-88"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:88 --> **L88** 消去两个不同布尔构造子之间的不可能等式。

<a id="line-code-leanified-corereader-logic-lean-89"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:89 --> **L89** 说明 onQuestion 的预定范围。对应声明涉及：唯一Unit问题询问布尔世界是否为真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-90"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:90 --> **L90** 定义 onQuestion。唯一Unit问题询问布尔世界是否为真。

<a id="line-code-leanified-corereader-logic-lean-91"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:91 --> **L91** 定义 assumptionContext。固定问题与全范围，只改变选择世界的假设。

<a id="line-code-leanified-corereader-logic-lean-92"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:92 --> **L92** 通过假设选择世界 b，保留相同开启问题，并令范围允许所有世界。

<a id="line-code-leanified-corereader-logic-lean-93"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:93 --> **L93** 定义 meaningContext。固定真世界假设，只改变问题的等值含义。

<a id="line-code-leanified-corereader-logic-lean-94"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:94 --> **L94** 保持真世界假设，改为询问与 b 相等；范围仍不受限。

<a id="line-code-leanified-corereader-logic-lean-95"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:95 --> **L95** 定义 scopeContext。固定空假设和问题，只由范围选择世界。

<a id="line-code-leanified-corereader-logic-lean-96"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:96 --> **L96** 使假设为空且问题固定，仅让范围选择世界 b。

<a id="line-code-leanified-corereader-logic-lean-97"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:97 --> **L97** 说明 contextDifferences 的预定范围。对应声明涉及：分别改变假设、含义、范围得到相反判断；所有展示上下文都有明确可接受世界。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-98"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:98 --> **L98** 开始 CoreReader.Logic.contextDifferences 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-99"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:99 --> **L99** 登记来源单元 organon.charter.consistency.meaning#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-100"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:100 --> **L100** 登记来源单元 organon.charter.consistency.meaning#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-101"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:101 --> **L101** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-102"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:102 --> **L102** 陈述经检查的结果 contextDifferences。分别改变假设、含义、范围得到相反判断；所有展示上下文都有明确可接受世界。

<a id="line-code-leanified-corereader-logic-lean-103"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:103 --> **L103** 要求在真值假设下给出肯定答案。

<a id="line-code-leanified-corereader-logic-lean-104"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:104 --> **L104** 要求在假值假设下给出否定答案；两者上下文不同。

<a id="line-code-leanified-corereader-logic-lean-105"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:105 --> **L105** 要求对含义为等于 true 的问题给出肯定答案。

<a id="line-code-leanified-corereader-logic-lean-106"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:106 --> **L106** 当同一问题改为表示等于 false 时，要求否定答案。

<a id="line-code-leanified-corereader-logic-lean-107"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:107 --> **L107** 要求在限制为 true 的范围内给出肯定答案。

<a id="line-code-leanified-corereader-logic-lean-108"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:108 --> **L108** 要求在另一个限制为 false 的范围内给出否定答案。

<a id="line-code-leanified-corereader-logic-lean-109"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:109 --> **L109** 对任一假设选择，要求实际可接受世界存在。

<a id="line-code-leanified-corereader-logic-lean-110"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:110 --> **L110** 对任一问题含义，要求实际可接受世界存在。

<a id="line-code-leanified-corereader-logic-lean-111"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:111 --> **L111** 对任一范围选择，要求实际可接受世界存在，并开始组合证明。

<a id="line-code-leanified-corereader-logic-lean-112"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:112 --> **L112** 证明每个布尔世界都满足 emptyTheory，因为该理论的成员关系为 False。

<a id="line-code-leanified-corereader-logic-lean-113"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:113 --> **L113** 拆分改变假设、含义和范围后的正反答案对，以及三类上下文的非空见证义务。

<a id="line-code-leanified-corereader-logic-lean-114"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:114 --> **L114** 在真值假设上下文中，从单元素上下文假设读出 w = true。

<a id="line-code-leanified-corereader-logic-lean-115"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:115 --> **L115** 在假值假设上下文中，假定肯定答案会与单元素假设 w = false 矛盾。

<a id="line-code-leanified-corereader-logic-lean-116"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:116 --> **L116** 当问题含义为真值时，用固定的真世界假设确立肯定答案。

<a id="line-code-leanified-corereader-logic-lean-117"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:117 --> **L117** 当问题含义变为假值时，假定该含义成立会与不变的真世界假设矛盾。

<a id="line-code-leanified-corereader-logic-lean-118"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:118 --> **L118** 在真值范围上下文中，范围组件本身给出所需肯定答案。

<a id="line-code-leanified-corereader-logic-lean-119"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:119 --> **L119** 在假值范围上下文中，肯定答案与同一世界的范围组件矛盾。

<a id="line-code-leanified-corereader-logic-lean-120"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:120 --> **L120** 对任一假设 b，世界 b 满足空的所持理论、该单元素假设与不受限范围。

<a id="line-code-leanified-corereader-logic-lean-121"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:121 --> **L121** 对任一问题含义 b，true 仍为见证，因为假设固定为 true 且范围不受限。

<a id="line-code-leanified-corereader-logic-lean-122"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:122 --> **L122** 对任一范围选择 b，世界 b 满足两个空理论，并通过相等满足所选范围。

<a id="line-code-leanified-corereader-logic-lean-123"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:123 --> **L123** 说明 Snapshot 的预定范围。对应声明涉及：保存同时持有理论、上下文和独立修订标识，不实现历史验证。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-124"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:124 --> **L124** 声明数据接口 Snapshot。保存同时持有理论、上下文和独立修订标识，不实现历史验证。

<a id="line-code-leanified-corereader-logic-lean-125"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:125 --> **L125** 在快照中保存同时持有主张的理论。

<a id="line-code-leanified-corereader-logic-lean-126"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:126 --> **L126** 以一个 Context 保存快照的假设、问题含义与范围。

<a id="line-code-leanified-corereader-logic-lean-127"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:127 --> **L127** 保存独立的自然数修订标识，不蕴含历史验证。

<a id="line-code-leanified-corereader-logic-lean-128"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:128 --> **L128** 说明 SameContent 的预定范围。对应声明涉及：比较理论成员、附加假设成员及逐问题逐世界的含义和范围。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-129"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:129 --> **L129** 定义 SameContent。比较理论成员、附加假设成员及逐问题逐世界的含义和范围。

<a id="line-code-leanified-corereader-logic-lean-130"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:130 --> **L130** 要求两个快照中每个所持主张的成员关系一致。

<a id="line-code-leanified-corereader-logic-lean-131"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:131 --> **L131** 要求每个上下文假设的成员关系一致。

<a id="line-code-leanified-corereader-logic-lean-132"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:132 --> **L132** 要求每个问题在每个世界具有等价含义。

<a id="line-code-leanified-corereader-logic-lean-133"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:133 --> **L133** 要求每个世界中的范围谓词等价。

<a id="line-code-leanified-corereader-logic-lean-134"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:134 --> **L134** 说明 TruthfulReport 的预定范围。对应声明涉及：内容或修订标识变化时必须报告真；不要求报告真必然有变化，也不检测变化。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-135"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:135 --> **L135** 定义 TruthfulReport。内容或修订标识变化时必须报告真；不要求报告真必然有变化，也不检测变化。

<a id="line-code-leanified-corereader-logic-lean-136"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:136 --> **L136** 将如实报告定义为：内容不同或独立修订标识不同，就给出积极标记。

<a id="line-code-leanified-corereader-logic-lean-137"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:137 --> **L137** 说明 semanticChangeMustBeReported 的预定范围。对应声明涉及：把给定变化证据应用于给定报告规范，得到报告为真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-138"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:138 --> **L138** 开始 CoreReader.Logic.semanticChangeMustBeReported 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-139"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:139 --> **L139** 登记来源单元 organon.charter.consistency.meaning#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-140"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:140 --> **L140** 登记来源单元 organon.charter.consistency.meaning#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-141"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:141 --> **L141** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-142"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:142 --> **L142** 陈述经检查的结果 semanticChangeMustBeReported。把给定变化证据应用于给定报告规范，得到报告为真。

<a id="line-code-leanified-corereader-logic-lean-143"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:143 --> **L143** 假定实际发生变更：内容不同或修订标识不同。

<a id="line-code-leanified-corereader-logic-lean-144"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:144 --> **L144** 假定报告义务，并应用于前述变更前提，得到 reported=true。

<a id="line-code-leanified-corereader-logic-lean-145"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:145 --> **L145** 说明 representationOrderIrrelevant 的预定范围。对应声明涉及：用析取交换律证明两个单项理论交换顺序不改变成员关系。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-146"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:146 --> **L146** 开始 CoreReader.Logic.representationOrderIrrelevant 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-147"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:147 --> **L147** 登记来源单元 organon.charter.consistency.meaning#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-148"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:148 --> **L148** 登记来源单元 organon.charter.consistency.meaning#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-149"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:149 --> **L149** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-150"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:150 --> **L150** 陈述经检查的结果 representationOrderIrrelevant。用析取交换律证明两个单项理论交换顺序不改变成员关系。

<a id="line-code-leanified-corereader-logic-lean-151"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:151 --> **L151** 对任意主张 r，交换 p 与 q 保持其单元素理论并集中的成员关系。

<a id="line-code-leanified-corereader-logic-lean-152"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:152 --> **L152** 任取候选主张 r，利用析取交换性证明重排 p 与 q 后并集成员关系不变。

<a id="line-code-leanified-corereader-logic-lean-153"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:153 --> **L153** 定义 contextSnapshot。将上下文包装成空持有理论的快照，默认修订标识为零。

<a id="line-code-leanified-corereader-logic-lean-154"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:154 --> **L154** 构造所持主张为空、采用给定上下文及修订标识的快照。

<a id="line-code-leanified-corereader-logic-lean-155"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:155 --> **L155** 说明 hiddenContextChangeRejected 的预定范围。对应声明涉及：分别拒绝隐瞒假设、含义、范围及标识变化，并说明报告变化不保证新假设为真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-156"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:156 --> **L156** 开始 CoreReader.Logic.hiddenContextChangeRejected 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-157"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:157 --> **L157** 登记来源单元 organon.charter.consistency.meaning#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-158"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:158 --> **L158** 登记来源单元 organon.charter.consistency.meaning#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-159"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:159 --> **L159** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-160"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:160 --> **L160** 陈述经检查的结果 hiddenContextChangeRejected。分别拒绝隐瞒假设、含义、范围及标识变化，并说明报告变化不保证新假设为真。

<a id="line-code-leanified-corereader-logic-lean-161"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:161 --> **L161** 实际上下文假设从 true 变为 false 时，拒绝 false 报告。

<a id="line-code-leanified-corereader-logic-lean-162"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:162 --> **L162** 问题实际含义改变时，拒绝 false 报告。

<a id="line-code-leanified-corereader-logic-lean-163"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:163 --> **L163** 实际应用范围改变时，拒绝 false 报告。

<a id="line-code-leanified-corereader-logic-lean-164"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:164 --> **L164** 上下文不变但修订身份从 0 变为 1 时，拒绝 false 报告。

<a id="line-code-leanified-corereader-logic-lean-165"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:165 --> **L165** 允许以 true 报告如实承认假设变化。

<a id="line-code-leanified-corereader-logic-lean-166"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:166 --> **L166** 但否定这些修订后的假世界假设在实际 true 处成立。

<a id="line-code-leanified-corereader-logic-lean-167"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:167 --> **L167** 准备语义不等式：选择 true 与选择 false 的谓词是不同函数。

<a id="line-code-leanified-corereader-logic-lean-168"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:168 --> **L168** 在 true 处计算假定的谓词相等，它会把自反成立转换为 true = false。

<a id="line-code-leanified-corereader-logic-lean-169"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:169 --> **L169** 拆出四种被拒绝的隐瞒变更，以及最后已报告但假设为假的实例。

<a id="line-code-leanified-corereader-logic-lean-170"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:170 --> **L170** 假定隐瞒假设变化且报告为 false 仍满足 TruthfulReport，以反驳这一主张。

<a id="line-code-leanified-corereader-logic-lean-171"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:171 --> **L171** 假定 SameContent 会使已改变的假设谓词相等；已知其不等，因此触发 TruthfulReport，迫使 false 标记为 true。

<a id="line-code-leanified-corereader-logic-lean-172"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:172 --> **L172** 所需 true 报告与指定的 false 标记矛盾，因此结束这一隐瞒变更分支。

<a id="line-code-leanified-corereader-logic-lean-173"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:173 --> **L173** 假定问题含义改变后仍可如实报告为未改变。

<a id="line-code-leanified-corereader-logic-lean-174"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:174 --> **L174** 在唯一问题与 true 世界处，变化后的含义否定 SameContent；报告义务因而要求积极报告。

<a id="line-code-leanified-corereader-logic-lean-175"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:175 --> **L175** 所需 true 报告与指定的 false 标记矛盾，因此结束这一隐瞒变更分支。

<a id="line-code-leanified-corereader-logic-lean-176"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:176 --> **L176** 假定应用范围改变后仍能以 false 变更标记满足报告规则。

<a id="line-code-leanified-corereader-logic-lean-177"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:177 --> **L177** 在 true 处比较两个范围以否定 SameContent，再对这一真实范围变化应用报告义务。

<a id="line-code-leanified-corereader-logic-lean-178"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:178 --> **L178** 所需 true 报告与指定的 false 标记矛盾，因此结束这一隐瞒变更分支。

<a id="line-code-leanified-corereader-logic-lean-179"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:179 --> **L179** 不同修订身份本身就触发报告规则；即使没有内容变化，也与 false 报告矛盾。

<a id="line-code-leanified-corereader-logic-lean-180"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:180 --> **L180** 构造始终积极的如实报告，另留下修订假设真实性的反证。

<a id="line-code-leanified-corereader-logic-lean-181"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:181 --> **L181** 在实际世界 true 提取修订后的假世界假设；其不可能等式表明报告变更不使假设变真。

<a id="line-code-leanified-corereader-logic-lean-182"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:182 --> **L182** 说明 tensionWithoutContradiction 的预定范围。对应声明涉及：预算五同时满足不同上下界；预算零证明两约束谓词并不相同。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-183"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:183 --> **L183** 开始 CoreReader.Logic.tensionWithoutContradiction 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-184"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:184 --> **L184** 登记来源单元 organon.charter.consistency.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-185"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:185 --> **L185** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-186"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:186 --> **L186** 陈述经检查的结果 tensionWithoutContradiction。预算五同时满足不同上下界；预算零证明两约束谓词并不相同。

<a id="line-code-leanified-corereader-logic-lean-187"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:187 --> **L187** 要求存在同时满足下界 4 与上界 6 的自然数预算。

<a id="line-code-leanified-corereader-logic-lean-188"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:188 --> **L188** 还断言两个界限谓词不同，即使它们可以共同满足。

<a id="line-code-leanified-corereader-logic-lean-189"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:189 --> **L189** 选择预算 5，检查两个数值界限，留下两个目标谓词不同的证明。

<a id="line-code-leanified-corereader-logic-lean-190"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:190 --> **L190** 在预算 0 处，上界成立而下界不可能成立，因此两个目标谓词不相等。

<a id="line-code-leanified-corereader-logic-lean-191"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:191 --> **L191** 说明 conflictRequiresChange 的预定范围。对应声明涉及：同题同条件正反后果违反一致性规范；不构造具体修复算法。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-192"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:192 --> **L192** 开始 CoreReader.Logic.conflictRequiresChange 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-193"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:193 --> **L193** 登记来源单元 organon.charter.consistency.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-194"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:194 --> **L194** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-195"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:195 --> **L195** 陈述经检查的结果 conflictRequiresChange。同题同条件正反后果违反一致性规范；不构造具体修复算法。

<a id="line-code-leanified-corereader-logic-lean-196"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:196 --> **L196** 假定同一理论、上下文与问题具有两个相反后果。

<a id="line-code-leanified-corereader-logic-lean-197"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:197 --> **L197** 任何 Consistent 证明都禁止给定后果对；应用这一点否定一致性，并未构造修订。

<a id="line-code-leanified-corereader-logic-lean-198"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:198 --> **L198** 说明 consistentFalse 的预定范围。对应声明涉及：理论有真世界模型，却在指定假世界不成立，区分可满足与实际真。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-199"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:199 --> **L199** 开始 CoreReader.Logic.consistentFalse 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-200"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:200 --> **L200** 登记来源单元 organon.charter.consistency.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-201"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:201 --> **L201** 登记来源单元 organon.relationships.roles#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-202"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:202 --> **L202** 登记来源单元 organon.relationships.roles#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-203"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:203 --> **L203** 登记来源单元 organon.relationships.roles#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-204"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:204 --> **L204** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-205"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:205 --> **L205** 陈述经检查的结果 consistentFalse。理论有真世界模型，却在指定假世界不成立，区分可满足与实际真。

<a id="line-code-leanified-corereader-logic-lean-206"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:206 --> **L206** 否定实际 false 满足唯一主张为 world=true 的理论。

<a id="line-code-leanified-corereader-logic-lean-207"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:207 --> **L207** 提供 true 作为单元素理论的模型，另行否定实际世界 false 满足该理论。

<a id="line-code-leanified-corereader-logic-lean-208"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:208 --> **L208** 在 false 处满足单元素理论会迫使 false = true，产生不可能的布尔等式。

<a id="line-code-leanified-corereader-logic-lean-209"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:209 --> **L209** 说明 consistentIncomplete 的预定范围。对应声明涉及：空理论有模型，但指定布尔问题及其否定都不被蕴涵。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-210"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:210 --> **L210** 开始 CoreReader.Logic.consistentIncomplete 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-211"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:211 --> **L211** 登记来源单元 organon.charter.consistency.limits#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-212"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:212 --> **L212** 登记来源单元 organon.relationships.roles#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-213"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:213 --> **L213** 登记来源单元 organon.relationships.roles#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-214"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:214 --> **L214** 登记来源单元 organon.relationships.roles#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-215"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:215 --> **L215** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-216"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:216 --> **L216** 陈述经检查的结果 consistentIncomplete。空理论有模型，但指定布尔问题及其否定都不被蕴涵。

<a id="line-code-leanified-corereader-logic-lean-217"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:217 --> **L217** 具有见证的空理论不蕴含肯定的真世界答案。

<a id="line-code-leanified-corereader-logic-lean-218"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:218 --> **L218** 它也不蕴含否定的真世界答案；分别证明这两个失败。

<a id="line-code-leanified-corereader-logic-lean-219"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:219 --> **L219** 证明每个布尔世界都满足 emptyTheory，因为该理论的成员关系为 False。

<a id="line-code-leanified-corereader-logic-lean-220"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:220 --> **L220** 提供非空的空理论模型，留下肯定与否定蕴含两个反证。

<a id="line-code-leanified-corereader-logic-lean-221"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:221 --> **L221** 假定蕴含 world=true，会在空理论模型 false 处失败。

<a id="line-code-leanified-corereader-logic-lean-222"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:222 --> **L222** 假定蕴含 world≠true，会在空理论模型 true 处失败。

<a id="line-code-leanified-corereader-logic-lean-223"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:223 --> **L223** 说明 compatibilityNotEntailment 的预定范围。对应声明涉及：新增主张可以与原理论相容，但原理论仍不蕴涵该主张。 该注释用于解释，不是证明前提。

<a id="line-code-leanified-corereader-logic-lean-224"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:224 --> **L224** 开始 CoreReader.Logic.compatibilityNotEntailment 的来源元数据；映射确定来源对应对象，不是 Lean 前提或正确性证书。

<a id="line-code-leanified-corereader-logic-lean-225"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:225 --> **L225** 登记来源单元 organon.grounds.assessment#p1 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-226"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:226 --> **L226** 登记来源单元 organon.grounds.assessment#p2 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-227"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:227 --> **L227** 登记来源单元 organon.grounds.assessment#p3 及所示 SHA-256 内容身份；这是追溯元数据，不属于定理证明。

<a id="line-code-leanified-corereader-logic-lean-228"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:228 --> **L228** 结束前面的说明或来源注释；不增加可执行或逻辑条款。

<a id="line-code-leanified-corereader-logic-lean-229"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:229 --> **L229** 陈述经检查的结果 compatibilityNotEntailment。新增主张可以与原理论相容，但原理论仍不蕴涵该主张。

<a id="line-code-leanified-corereader-logic-lean-230"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:230 --> **L230** 要求存在使 emptyTheory 与肯定单元素主张共同成立的模型。

<a id="line-code-leanified-corereader-logic-lean-231"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:231 --> **L231** 仍否定 emptyTheory 本身蕴含该肯定主张。

<a id="line-code-leanified-corereader-logic-lean-232"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:232 --> **L232** 用世界 true 见证空理论与肯定的单元素主张相容。

<a id="line-code-leanified-corereader-logic-lean-233"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:233 --> **L233** 复用已证的空理论不能蕴含肯定主张的结果。

<a id="line-code-leanified-corereader-logic-lean-234"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:234 --> **L234** 完成模型见证：没有主张能够实际属于 emptyTheory。

<a id="line-code-leanified-corereader-logic-lean-236"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:236 --> **L236** 关闭命名空间 CoreReader.Logic；这不增加证明或前提。

<a id="code-leanified-corereader-reflexivity-lean"></a>
### `leanified/CoreReader/Reflexivity.lean`

<!-- lean-code leanified/CoreReader/Reflexivity.lean -->
```lean
import Std

namespace CoreReader.Agency

inductive Phase | formation | application | revision
  deriving DecidableEq, Repr

structure PrincipleKey where
  owner : Nat
  localId : Nat
  deriving DecidableEq, Repr

inductive Subject
  | system (owner : Nat)
  | principle (owner id : Nat)
  | process (owner id : Nat) (phase : Phase)
  deriving DecidableEq, Repr

def Subject.owner : Subject → Nat
  | .system n => n
  | .principle n _ => n
  | .process n _ _ => n

inductive Activity | generation | assessment
  deriving DecidableEq, Repr

inductive QuestionKind | conformity | formationBasis | applicability | revisionGrounds
  deriving DecidableEq, Repr

inductive SampleProgram | alwaysTrue | onlyAtZero
  deriving DecidableEq, Repr

def SampleProgram.run : SampleProgram → Nat → Bool
  | .alwaysTrue, _ => true
  | .onlyAtZero, n => n == 0

/- A generated candidate specifies both the inputs it tests and the scope it proposes to license. -/
structure MethodDraft where
  testedInputs : List Nat
  claimedScope : List Nat
  deriving DecidableEq, Repr

def MethodDraft.accepts (draft : MethodDraft) (program : SampleProgram) : Bool :=
  draft.testedInputs.all program.run

/- This finite application asks whether a proposed rule's observed inputs support its claimed input scope. -/
structure Inquiry where
  target : Subject
  kind : QuestionKind
  requestedScope : List Nat
  currentMethod : MethodDraft
  deriving DecidableEq, Repr

inductive ReasonContent
  | purpose (inputs : List Nat)
  | declaredScope (inputs : List Nat)
  | observation (input : Nat) (output : Bool)
  | counterexample (program : SampleProgram) (input : Nat)
  deriving DecidableEq, Repr

def ReasonContent.identifier : ReasonContent → Nat
  | .purpose _ => 0
  | .declaredScope _ => 1
  | .observation _ _ => 2
  | .counterexample _ _ => 3

/- Reasons have independently supplied contents, a stable local reference and the actual target they concern. -/
structure ReasonObject where
  reference : Nat
  target : Subject
  content : ReasonContent
  deriving DecidableEq, Repr

inductive AssessmentResult | supportedWithinScope | insufficient | notApplicable | undetermined
  deriving DecidableEq, Repr

inductive WorkOutcome
  | assessment (result : AssessmentResult)
  | generated (draft : MethodDraft)
  deriving DecidableEq, Repr

/- A method's question, source reasons and limits are determined before looking at its activity records.
The meaning relation describes application of that method, not its universal adequacy. -/
structure Principle where
  key : PrincipleKey
  activity : Activity
  declaredMethod : MethodDraft
  applicable : Subject → Prop
  inquiry : Subject → Inquiry
  reasons : Subject → List ReasonObject
  limits : Subject → List Nat
  meaning : Inquiry → List ReasonObject → List Nat → WorkOutcome → Prop

structure WorkRecord where
  usedPrinciple : PrincipleKey
  target : Subject
  activity : Activity
  inquiry : Inquiry
  reasons : List ReasonObject
  limits : List Nat
  outcome : WorkOutcome
  deriving DecidableEq, Repr

def RegistryCoherent (rules : List Principle) : Prop :=
  ∀ p ∈ rules, ∀ q ∈ rules, p.key = q.key → p = q

def TargetResolved (rules : List Principle) : Subject → Prop
  | .system owner => ∃ p ∈ rules, p.key.owner = owner
  | .principle owner id | .process owner id _ => ∃ p ∈ rules, p.key = ⟨owner,id⟩

/- The inquiry names the registered target's declared method contract, not an unrelated candidate.
For a system inquiry this finite model uses the registered generation contract as its assessed artifact. -/
def TargetContentResolved (rules : List Principle) (question : Inquiry) : Prop :=
  match question.target with
  | .system owner => ∃ p ∈ rules, p.key = ⟨owner,0⟩ ∧ question.currentMethod = p.declaredMethod
  | .principle owner id | .process owner id _ =>
      ∃ p ∈ rules, p.key = ⟨owner,id⟩ ∧ question.currentMethod = p.declaredMethod

def Performed (records : List WorkRecord) (s : Subject) (a : Activity) : Prop :=
  ∃ record ∈ records, record.target = s ∧ record.activity = a

/- The old scope condition remains available without conflating scope with content completion. -/
def ReflexiveScope (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
  ∀ rule ∈ rules, ∀ s, s.owner = owner → rule.applicable s → Performed records s rule.activity

/- A record uses a registered principle on the same resolvable target, question, reasons and limits,
and its result must actually follow that principle's method. A negative result can satisfy this relation. -/
structure ValidApplication (rules : List Principle) (rule : Principle) (s : Subject)
    (record : WorkRecord) : Prop where
  registered : rule ∈ rules
  applicable : rule.applicable s
  usedIdentity : record.usedPrinciple = rule.key
  targetIdentity : record.target = s
  targetResolved : TargetResolved rules s
  activityIdentity : record.activity = rule.activity
  inquiryIdentity : record.inquiry = rule.inquiry s
  inquiryTarget : record.inquiry.target = s
  targetContent : TargetContentResolved rules record.inquiry
  reasonsIdentity : record.reasons = rule.reasons s
  reasonsNonempty : record.reasons ≠ []
  reasonTargets : ∀ reason ∈ record.reasons, reason.target = s
  limitsIdentity : record.limits = rule.limits s
  followsMeaning : rule.meaning record.inquiry record.reasons record.limits record.outcome

/- The registered normative interface requires contentful application, not just activity labels. -/
/-- organon-map CoreReader.Agency.Reflexive
organon.charter.reflexivity#p1 sha256 13293b45c2fa89068c68ae7ef3c5df38f0efadb3ef3873d78a5ba67d9691a757
organon.charter.reflexivity.meaning#p1 sha256 8a2caede01a43d8b6c60b54c78ac089c51868e9956f316948077ccee2e45c9cc
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
def Reflexive (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
  RegistryCoherent rules ∧
  ∀ rule ∈ rules, ∀ s, s.owner = owner → rule.applicable s →
    ∃ record ∈ records, ValidApplication rules rule s record

theorem Reflexive.toScope {owner : Nat} {rules : List Principle} {records : List WorkRecord}
    (h : Reflexive owner rules records) : ReflexiveScope owner rules records := by
  intro rule hr s hs ha
  obtain ⟨record, hm, hv⟩ := h.2 rule hr s hs ha
  exact ⟨record, hm, hv.targetIdentity, hv.activityIdentity⟩

/-- organon-map CoreReader.Agency.noSelfExemption
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem noSelfExemption (owner : Nat) (rules : List Principle) (records : List WorkRecord)
    (h : Reflexive owner rules records) (rule : Principle) (hr : rule ∈ rules)
    (s : Subject) (hs : s.owner = owner) (ha : rule.applicable s) :
    Performed records s rule.activity := h.toScope rule hr s hs ha

def localMethod : MethodDraft := ⟨[0],[0]⟩

def inquiryFor (s : Subject) : Inquiry :=
  match s with
  | .process _ _ .formation => ⟨s, .formationBasis, [0], localMethod⟩
  | .process _ _ .application => ⟨s, .applicability, [0], localMethod⟩
  | .process _ _ .revision => ⟨s, .revisionGrounds, [0,1], localMethod⟩
  | _ => ⟨s, .conformity, [0], localMethod⟩

/- These original inquiry inputs do not depend on which work records happen to be present. -/
def sourceReasonContents : QuestionKind → List ReasonContent
  | .formationBasis => [.purpose [0], .declaredScope [0], .observation 0 true]
  | .applicability | .conformity => [.declaredScope [0], .observation 0 true]
  | .revisionGrounds => [.purpose [0,1], .declaredScope [0], .observation 0 true,
      .counterexample .onlyAtZero 1]

def reasonsFor (s : Subject) : List ReasonObject :=
  (sourceReasonContents (inquiryFor s).kind).map fun content => ⟨content.identifier,s,content⟩

/- The application-specific evaluator examines actual scope and sample/counterexample contents.
It is a finite inferential method, not a universal standard for empirical or value claims. -/
def assessInquiry (question : Inquiry) (reasons : List ReasonObject) (limits : List Nat) : AssessmentResult :=
  let contents := reasons.map ReasonObject.content
  if limits ≠ question.currentMethod.claimedScope then .undetermined else
  match question.kind with
  | .formationBasis =>
      if ReasonContent.purpose question.requestedScope ∈ contents ∧
          ReasonContent.declaredScope limits ∈ contents ∧ question.requestedScope = limits
      then .supportedWithinScope else .undetermined
  | .applicability | .conformity =>
      if question.requestedScope.all (fun n => limits.contains n) then
        if ReasonContent.declaredScope limits ∈ contents ∧
            ReasonContent.observation 0 true ∈ contents ∧ question.requestedScope = [0]
        then .supportedWithinScope else .undetermined
      else .notApplicable
  | .revisionGrounds =>
      if ReasonContent.purpose question.requestedScope ∈ contents ∧
          ReasonContent.declaredScope limits ∈ contents ∧
          ReasonContent.observation 0 true ∈ contents ∧
          contents.any (fun reason => match reason with
            | .counterexample program input => question.requestedScope.contains input &&
                question.currentMethod.accepts program &&
                !(program.run input)
            | _ => false)
      then .insufficient else .undetermined

def finiteMethodResult (activity : Activity) (question : Inquiry)
    (reasons : List ReasonObject) (limits : List Nat) : WorkOutcome :=
  match activity with
  | .generation => .generated ⟨question.currentMethod.testedInputs,question.requestedScope⟩
  | .assessment => .assessment (assessInquiry question reasons limits)

def finiteMethodMeaning (activity : Activity) (question : Inquiry)
    (reasons : List ReasonObject) (limits : List Nat) (outcome : WorkOutcome) : Prop :=
  outcome = finiteMethodResult activity question reasons limits

def ownSubjects (owner : Nat) : List Subject :=
  [.system owner, .principle owner 0, .principle owner 1,
   .process owner 0 .formation, .process owner 0 .application, .process owner 0 .revision,
   .process owner 1 .formation, .process owner 1 .application, .process owner 1 .revision]

/- Applying an existing rule is not a generation event in this application. -/
def generationEligible : Subject → Bool
  | .process _ _ .application => false
  | _ => true

def generatingRule (owner : Nat) : Principle where
  key := ⟨owner,0⟩
  activity := .generation
  declaredMethod := localMethod
  applicable s := s ∈ ownSubjects owner ∧ generationEligible s = true
  inquiry := inquiryFor
  reasons := reasonsFor
  limits _ := [0]
  meaning := finiteMethodMeaning .generation

def assessingRule (owner : Nat) : Principle where
  key := ⟨owner,1⟩
  activity := .assessment
  declaredMethod := localMethod
  applicable s := s ∈ ownSubjects owner
  inquiry := inquiryFor
  reasons := reasonsFor
  limits _ := [0]
  meaning := finiteMethodMeaning .assessment

def ownRules (owner : Nat) : List Principle := [generatingRule owner, assessingRule owner]

/- Recorded verdicts are stated separately from the evaluator, so agreement has to be proved. -/
def statedOutcome (activity : Activity) (s : Subject) : WorkOutcome :=
  match activity with
  | .generation => .generated ⟨(inquiryFor s).currentMethod.testedInputs,(inquiryFor s).requestedScope⟩
  | .assessment => .assessment (match (inquiryFor s).kind with
      | .revisionGrounds => .insufficient
      | _ => .supportedWithinScope)

def recordFor (rule : Principle) (s : Subject) : WorkRecord :=
  ⟨rule.key,s,rule.activity,rule.inquiry s,rule.reasons s,rule.limits s,statedOutcome rule.activity s⟩

theorem reasonsFor_nonempty (s : Subject) : reasonsFor s ≠ [] := by
  cases s with
  | system owner => simp [reasonsFor, inquiryFor, sourceReasonContents]
  | principle owner id => simp [reasonsFor, inquiryFor, sourceReasonContents]
  | process owner id phase => cases phase <;> simp [reasonsFor, inquiryFor, sourceReasonContents]

theorem reasonsFor_target (s : Subject) : ∀ reason ∈ reasonsFor s, reason.target = s := by
  intro reason h
  obtain ⟨content, _, rfl⟩ := List.mem_map.mp h
  rfl

theorem inquiryFor_target (s : Subject) : (inquiryFor s).target = s := by
  cases s with
  | system owner => rfl
  | principle owner id => rfl
  | process owner id phase => cases phase <;> rfl

/- This proof includes the actual negative revision evaluation for both principle identities. -/
theorem ownContentEvaluates (activity : Activity) (s : Subject) :
    statedOutcome activity s = finiteMethodResult activity (inquiryFor s) (reasonsFor s) [0] := by
  cases activity with
  | generation => rfl
  | assessment =>
      cases s with
      | system owner => rfl
      | principle owner id => rfl
      | process owner id phase => cases phase <;> rfl

theorem ownRegistryCoherent (owner : Nat) : RegistryCoherent (ownRules owner) := by
  intro p hp q hq hkey
  simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hp hq
  rcases hp with rfl | rfl <;> rcases hq with rfl | rfl
  · rfl
  · have bad := congrArg PrincipleKey.localId hkey; contradiction
  · have bad := congrArg PrincipleKey.localId hkey; contradiction
  · rfl

theorem ownTargetResolved (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    TargetResolved (ownRules owner) s := by
  simp only [ownSubjects, List.mem_cons, List.not_mem_nil, or_false] at hs
  rcases hs with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp [TargetResolved, ownRules, generatingRule, assessingRule]

theorem ownTargetContent (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    TargetContentResolved (ownRules owner) (inquiryFor s) := by
  simp only [ownSubjects, List.mem_cons, List.not_mem_nil, or_false] at hs
  rcases hs with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp [TargetContentResolved, inquiryFor, ownRules, generatingRule, assessingRule]

theorem ownRecordValid (owner : Nat) (rule : Principle) (hr : rule ∈ ownRules owner)
    (s : Subject) (ha : rule.applicable s) :
    ValidApplication (ownRules owner) rule s (recordFor rule s) := by
  have hs : s ∈ ownSubjects owner := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl
    · exact ha.1
    · exact ha
  have hq : rule.inquiry = inquiryFor := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hg : rule.reasons = reasonsFor := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hl : rule.limits s = [0] := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hm : rule.meaning = finiteMethodMeaning rule.activity := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  refine ⟨hr, ha, rfl, rfl, ownTargetResolved owner s hs, rfl, rfl, ?_, ?_, rfl, ?_, ?_, rfl, ?_⟩
  · change (rule.inquiry s).target = s
    rw [hq]; exact inquiryFor_target s
  · change TargetContentResolved (ownRules owner) (rule.inquiry s)
    rw [hq]; exact ownTargetContent owner s hs
  · change rule.reasons s ≠ []
    rw [hg]; exact reasonsFor_nonempty s
  · change ∀ reason ∈ rule.reasons s, reason.target = s
    rw [hg]; exact reasonsFor_target s
  · change rule.meaning (rule.inquiry s) (rule.reasons s) (rule.limits s) (statedOutcome rule.activity s)
    rw [hm, hq, hg, hl]
    exact ownContentEvaluates rule.activity s

def completeOwnWork (owner : Nat) : List WorkRecord :=
  (ownSubjects owner).flatMap fun s =>
    if generationEligible s then [recordFor (generatingRule owner) s, recordFor (assessingRule owner) s]
    else [recordFor (assessingRule owner) s]

theorem assessingRecord_member (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    recordFor (assessingRule owner) s ∈ completeOwnWork owner := by
  apply List.mem_flatMap.mpr
  refine ⟨s,hs,?_⟩
  cases generationEligible s <;> simp

theorem generatingRecord_member (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner)
    (hg : generationEligible s = true) : recordFor (generatingRule owner) s ∈ completeOwnWork owner := by
  exact List.mem_flatMap.mpr ⟨s,hs,by simp [hg]⟩

theorem completeOwnWork_reflexive (owner : Nat) :
    Reflexive owner (ownRules owner) (completeOwnWork owner) := by
  refine ⟨ownRegistryCoherent owner, ?_⟩
  intro rule hr s _ ha
  refine ⟨recordFor rule s, ?_, ownRecordValid owner rule hr s ha⟩
  simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl
  · exact generatingRecord_member owner s ha.1 ha.2
  · exact assessingRecord_member owner s ha

theorem ownAssessmentPerformed (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    Performed (completeOwnWork owner) s .assessment :=
  ⟨recordFor (assessingRule owner) s, assessingRecord_member owner s hs, rfl, rfl⟩

def applicationRule : Principle :=
  { assessingRule 0 with key := ⟨0,0⟩, applicable := fun s => s = .process 0 0 .application }

def applicationWork : List WorkRecord := [recordFor applicationRule (.process 0 0 .application)]

theorem applicationWork_reflexive : Reflexive 0 [applicationRule] applicationWork := by
  constructor
  · intro p hp q hq _
    simp only [List.mem_singleton] at hp hq
    rw [hp,hq]
  · intro rule hr s _ ha
    simp only [List.mem_singleton] at hr
    subst rule
    change s = .process 0 0 .application at ha
    subst s
    refine ⟨recordFor applicationRule (.process 0 0 .application), by simp [applicationWork], ?_⟩
    refine ⟨by simp, rfl, rfl, rfl, ?_, rfl, rfl, rfl, ?_, rfl, ?_, ?_, rfl, ?_⟩
    · exact ⟨applicationRule, by simp, rfl⟩
    · exact ⟨applicationRule, by simp, rfl, rfl⟩
    · exact reasonsFor_nonempty _
    · exact reasonsFor_target _
    · change statedOutcome .assessment (.process 0 0 .application) = finiteMethodResult .assessment (inquiryFor (.process 0 0 .application)) (reasonsFor (.process 0 0 .application)) [0]
      exact ownContentEvaluates .assessment _

/-- organon-map CoreReader.Agency.applicabilityRetained
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem applicabilityRetained (owner : Nat) (rules : List Principle) (records : List WorkRecord) :
    (Reflexive owner rules records → ReflexiveScope owner rules records) ∧
    (ReflexiveScope owner rules records ↔
      ∀ rule ∈ rules, ∀ s, s.owner = owner → (¬ rule.applicable s ∨ Performed records s rule.activity)) ∧
    (Reflexive 0 [applicationRule] applicationWork ∧
      ¬ Performed applicationWork (.system 0) .assessment) := by
  classical
  refine ⟨Reflexive.toScope, ?_, applicationWork_reflexive, ?_⟩
  · constructor
    · intro h rule hr s hs
      by_cases ha : rule.applicable s
      · exact Or.inr (h rule hr s hs ha)
      · exact Or.inl ha
    · intro h rule hr s hs ha
      exact (h rule hr s hs).resolve_left (not_not_intro ha)
  · rintro ⟨record, hm, ht, _⟩
    simp only [applicationWork, List.mem_singleton] at hm
    subst record
    cases ht

end CoreReader.Agency
```
<!-- /lean-code leanified/CoreReader/Reflexivity.lean -->

<a id="line-code-leanified-corereader-reflexivity-lean-1"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:1 --> **L1** 导入Std及其依赖。

<a id="line-code-leanified-corereader-reflexivity-lean-3"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:3 --> **L3** 打开命名空间CoreReader.Agency；文件边界不改变声明身份。

<a id="line-code-leanified-corereader-reflexivity-lean-5"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:5 --> **L5** 定义形成、应用和修订三个阶段标签。

<a id="line-code-leanified-corereader-reflexivity-lean-6"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:6 --> **L6** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-8"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:8 --> **L8** 用所属主体和局部编号标识登记原则。

<a id="line-code-leanified-corereader-reflexivity-lean-9"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:9 --> **L9** 保存所属主体编号。

<a id="line-code-leanified-corereader-reflexivity-lean-10"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:10 --> **L10** 保存主体内部原则编号。

<a id="line-code-leanified-corereader-reflexivity-lean-11"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:11 --> **L11** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-13"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:13 --> **L13** 区分系统、原则及带阶段的原则过程对象。

<a id="line-code-leanified-corereader-reflexivity-lean-14"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:14 --> **L14** 用所有者编号表示系统自身。

<a id="line-code-leanified-corereader-reflexivity-lean-15"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:15 --> **L15** 用所有者及局部原则编号表示某项原则。

<a id="line-code-leanified-corereader-reflexivity-lean-16"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:16 --> **L16** 把该原则的形成、应用或修订过程表示为独立对象。

<a id="line-code-leanified-corereader-reflexivity-lean-17"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:17 --> **L17** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-19"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:19 --> **L19** 从各类主体对象中提取所属主体编号。

<a id="line-code-leanified-corereader-reflexivity-lean-20"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:20 --> **L20** 直接从系统对象提取所有者。

<a id="line-code-leanified-corereader-reflexivity-lean-21"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:21 --> **L21** 提取原则所有者，忽略局部编号。

<a id="line-code-leanified-corereader-reflexivity-lean-22"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:22 --> **L22** 提取过程对象所有者，不受原则编号和阶段影响。

<a id="line-code-leanified-corereader-reflexivity-lean-24"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:24 --> **L24** 区分生成工作与评估工作。

<a id="line-code-leanified-corereader-reflexivity-lean-25"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:25 --> **L25** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-27"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:27 --> **L27** 分别表示合规、形成根据、适用性和修订根据问题。

<a id="line-code-leanified-corereader-reflexivity-lean-28"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:28 --> **L28** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-30"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:30 --> **L30** 提供恒真程序及仅在零处为真的程序。

<a id="line-code-leanified-corereader-reflexivity-lean-31"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:31 --> **L31** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-33"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:33 --> **L33** 在自然数输入上计算两种样例程序。

<a id="line-code-leanified-corereader-reflexivity-lean-34"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:34 --> **L34** alwaysTrue样例程序接受每个自然数输入。

<a id="line-code-leanified-corereader-reflexivity-lean-35"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:35 --> **L35** onlyAtZero程序仅在输入0时返回true。

<a id="line-code-leanified-corereader-reflexivity-lean-37"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:37 --> **L37** 说明后续定义或结果：分别保存测试输入和声称范围，以表示超出测试的主张。

<a id="line-code-leanified-corereader-reflexivity-lean-38"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:38 --> **L38** 分别保存测试输入和声称范围，以表示超出测试的主张。

<a id="line-code-leanified-corereader-reflexivity-lean-39"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:39 --> **L39** 记录该方法草案实际测试程序的输入。

<a id="line-code-leanified-corereader-reflexivity-lean-40"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:40 --> **L40** 另记录该草案拟授权的输入范围。

<a id="line-code-leanified-corereader-reflexivity-lean-41"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:41 --> **L41** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-43"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:43 --> **L43** 程序通过列表中全部测试即被接受，未测试输入不被检查。

<a id="line-code-leanified-corereader-reflexivity-lean-44"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:44 --> **L44** 所有已测试输入返回true时接受程序；此处不检查claimedScope。

<a id="line-code-leanified-corereader-reflexivity-lean-46"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:46 --> **L46** 说明后续定义或结果：将目标对象与问题种类、请求范围和目标当前方法内容相连。

<a id="line-code-leanified-corereader-reflexivity-lean-47"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:47 --> **L47** 将目标对象与问题种类、请求范围和目标当前方法内容相连。

<a id="line-code-leanified-corereader-reflexivity-lean-48"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:48 --> **L48** 标识正在考察其方法的确切对象。

<a id="line-code-leanified-corereader-reflexivity-lean-49"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:49 --> **L49** 区分符合性、形成理由、适用性和修订理由四类问题。

<a id="line-code-leanified-corereader-reflexivity-lean-50"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:50 --> **L50** 记录此问题要求方法覆盖的输入范围。

<a id="line-code-leanified-corereader-reflexivity-lean-51"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:51 --> **L51** 附上实际待考察方法草案，包括测试输入和声称范围。

<a id="line-code-leanified-corereader-reflexivity-lean-52"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:52 --> **L52** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-54"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:54 --> **L54** 表示目的、声明范围、观察以及具体程序和输入反例。

<a id="line-code-leanified-corereader-reflexivity-lean-55"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:55 --> **L55** 目的理由指定方法意欲处理的输入。

<a id="line-code-leanified-corereader-reflexivity-lean-56"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:56 --> **L56** 范围理由陈述方法声明的输入限度。

<a id="line-code-leanified-corereader-reflexivity-lean-57"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:57 --> **L57** 观察理由记录具体输入和布尔输出。

<a id="line-code-leanified-corereader-reflexivity-lean-58"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:58 --> **L58** 反例理由指定待检查的实际样例程序与输入。

<a id="line-code-leanified-corereader-reflexivity-lean-59"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:59 --> **L59** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-61"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:61 --> **L61** 给理由构造器分配编号；编号本身不提供根据。

<a id="line-code-leanified-corereader-reflexivity-lean-62"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:62 --> **L62** 目的理由使用局部引用0；它是类别编号，不是全局唯一标识。

<a id="line-code-leanified-corereader-reflexivity-lean-63"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:63 --> **L63** 声明范围理由使用局部引用1。

<a id="line-code-leanified-corereader-reflexivity-lean-64"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:64 --> **L64** 观察理由使用局部引用2。

<a id="line-code-leanified-corereader-reflexivity-lean-65"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:65 --> **L65** 反例理由使用局部引用3。

<a id="line-code-leanified-corereader-reflexivity-lean-67"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:67 --> **L67** 说明后续定义或结果：把理由内容和引用编号绑定到其所针对对象。

<a id="line-code-leanified-corereader-reflexivity-lean-68"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:68 --> **L68** 把理由内容和引用编号绑定到其所针对对象。

<a id="line-code-leanified-corereader-reflexivity-lean-69"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:69 --> **L69** 保存该建模问题中此理由的局部引用。

<a id="line-code-leanified-corereader-reflexivity-lean-70"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:70 --> **L70** 标识该理由实际针对的对象。

<a id="line-code-leanified-corereader-reflexivity-lean-71"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:71 --> **L71** 保存理由的目的、范围、观察或反例内容。

<a id="line-code-leanified-corereader-reflexivity-lean-72"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:72 --> **L72** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-74"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:74 --> **L74** 允许范围内支持、不充分、不适用和未确定四种结果。

<a id="line-code-leanified-corereader-reflexivity-lean-75"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:75 --> **L75** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-77"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:77 --> **L77** 区分评估结果和生成的方法草案。

<a id="line-code-leanified-corereader-reflexivity-lean-78"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:78 --> **L78** 把判定包装为评估结果；负面判定仍是评估。

<a id="line-code-leanified-corereader-reflexivity-lean-79"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:79 --> **L79** 包装新生成的方法草案，不断言该草案正确。

<a id="line-code-leanified-corereader-reflexivity-lean-80"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:80 --> **L80** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-82"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:82 --> **L82** 说明后续定义或结果：登记规则身份、活动、方法内容、适用性、问题、理由、限度和结果语义。

<a id="line-code-leanified-corereader-reflexivity-lean-83"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:83 --> **L83** 说明后续定义或结果：登记规则身份、活动、方法内容、适用性、问题、理由、限度和结果语义。

<a id="line-code-leanified-corereader-reflexivity-lean-84"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:84 --> **L84** 登记规则身份、活动、方法内容、适用性、问题、理由、限度和结果语义。

<a id="line-code-leanified-corereader-reflexivity-lean-85"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:85 --> **L85** 为原则赋予所有者与局部编号，用于解析其记录。

<a id="line-code-leanified-corereader-reflexivity-lean-86"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:86 --> **L86** 规定该原则约束生成活动还是评估活动。

<a id="line-code-leanified-corereader-reflexivity-lean-87"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:87 --> **L87** 陈述该登记原则自身的方法草案。

<a id="line-code-leanified-corereader-reflexivity-lean-88"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:88 --> **L88** 规定该原则适用的对象。

<a id="line-code-leanified-corereader-reflexivity-lean-89"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:89 --> **L89** 为每个对象指定实际待考察问题。

<a id="line-code-leanified-corereader-reflexivity-lean-90"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:90 --> **L90** 为每个对象的问题指定所提供理由。

<a id="line-code-leanified-corereader-reflexivity-lean-91"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:91 --> **L91** 为每个对象的适用指定保留的输入限度。

<a id="line-code-leanified-corereader-reflexivity-lean-92"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:92 --> **L92** 定义结果何时遵循该原则的问题、理由与限度；仅此字段不保证方法充分。

<a id="line-code-leanified-corereader-reflexivity-lean-94"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:94 --> **L94** 记录实际应用的规则身份、目标、活动、问题、理由、限度和结果。

<a id="line-code-leanified-corereader-reflexivity-lean-95"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:95 --> **L95** 记录声称采用的确切登记原则标识。

<a id="line-code-leanified-corereader-reflexivity-lean-96"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:96 --> **L96** 记录该工作针对的对象。

<a id="line-code-leanified-corereader-reflexivity-lean-97"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:97 --> **L97** 记录此工作是生成还是评估。

<a id="line-code-leanified-corereader-reflexivity-lean-98"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:98 --> **L98** 保存该工作的具体问题记录。

<a id="line-code-leanified-corereader-reflexivity-lean-99"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:99 --> **L99** 保存该工作记录采用的具体理由。

<a id="line-code-leanified-corereader-reflexivity-lean-100"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:100 --> **L100** 保存该工作记录保留的输入限度。

<a id="line-code-leanified-corereader-reflexivity-lean-101"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:101 --> **L101** 保存记录的评估判定或生成的方法草案。

<a id="line-code-leanified-corereader-reflexivity-lean-102"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:102 --> **L102** 为前述数据类型生成可判定相等及显示实例。

<a id="line-code-leanified-corereader-reflexivity-lean-104"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:104 --> **L104** 要求相同登记键对应同一原则，排除身份歧义。

<a id="line-code-leanified-corereader-reflexivity-lean-105"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:105 --> **L105** 两项已登记原则若标识相同，就必须是同一原则，防止查找歧义。

<a id="line-code-leanified-corereader-reflexivity-lean-107"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:107 --> **L107** 要求评估目标能解析到登记主体或精确原则键。

<a id="line-code-leanified-corereader-reflexivity-lean-108"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:108 --> **L108** 登记表中存在同所有者原则时，该系统对象可解析。

<a id="line-code-leanified-corereader-reflexivity-lean-109"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:109 --> **L109** 原则和过程对象要求登记表中有确切所有者及局部编号对应项。

<a id="line-code-leanified-corereader-reflexivity-lean-111"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:111 --> **L111** 说明后续定义或结果：把问题中当前方法内容与登记目标原则的方法精确相连。

<a id="line-code-leanified-corereader-reflexivity-lean-112"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:112 --> **L112** 说明后续定义或结果：把问题中当前方法内容与登记目标原则的方法精确相连。

<a id="line-code-leanified-corereader-reflexivity-lean-113"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:113 --> **L113** 把问题中当前方法内容与登记目标原则的方法精确相连。

<a id="line-code-leanified-corereader-reflexivity-lean-114"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:114 --> **L114** 按问题实际目标的种类选择查找规则。

<a id="line-code-leanified-corereader-reflexivity-lean-115"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:115 --> **L115** 系统问题考察其所有者已登记原则0的声明方法。

<a id="line-code-leanified-corereader-reflexivity-lean-116"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:116 --> **L116** 对原则或其过程，按该目标实际所有者和编号查找。

<a id="line-code-leanified-corereader-reflexivity-lean-117"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:117 --> **L117** 要求确切标识查找成功，且问题所用方法等于登记原则的方法。

<a id="line-code-leanified-corereader-reflexivity-lean-119"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:119 --> **L119** 要求存在匹配目标和活动的实际记录；有效性另行检查。

<a id="line-code-leanified-corereader-reflexivity-lean-120"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:120 --> **L120** Performed要求存在目标和活动完全匹配的记录；它本身不检查理由内容。

<a id="line-code-leanified-corereader-reflexivity-lean-122"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:122 --> **L122** 说明后续定义或结果：保留受所属主体和适用性条件限制的记录覆盖接口。

<a id="line-code-leanified-corereader-reflexivity-lean-123"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:123 --> **L123** 保留受所属主体和适用性条件限制的记录覆盖接口。

<a id="line-code-leanified-corereader-reflexivity-lean-124"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:124 --> **L124** 对指定所有者的对象，每项适用的登记规则都须有对应活动记录。

<a id="line-code-leanified-corereader-reflexivity-lean-126"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:126 --> **L126** 说明后续定义或结果：检查登记与适用性、对象身份、目标方法内容、非空对应理由、限度及规则语义一致性。

<a id="line-code-leanified-corereader-reflexivity-lean-127"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:127 --> **L127** 说明后续定义或结果：检查登记与适用性、对象身份、目标方法内容、非空对应理由、限度及规则语义一致性。

<a id="line-code-leanified-corereader-reflexivity-lean-128"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:128 --> **L128** 检查登记与适用性、对象身份、目标方法内容、非空对应理由、限度及规则语义一致性。

<a id="line-code-leanified-corereader-reflexivity-lean-129"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:129 --> **L129** 以下证明字段确认这条特定工作记录是rule对s的有效适用。

<a id="line-code-leanified-corereader-reflexivity-lean-130"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:130 --> **L130** 要求记录采用的规则属于此登记表。

<a id="line-code-leanified-corereader-reflexivity-lean-131"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:131 --> **L131** 要求同一规则对待评对象适用。

<a id="line-code-leanified-corereader-reflexivity-lean-132"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:132 --> **L132** 核对记录所用原则标识与该规则确切标识相等。

<a id="line-code-leanified-corereader-reflexivity-lean-133"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:133 --> **L133** 检查工作记录针对的正是对象s。

<a id="line-code-leanified-corereader-reflexivity-lean-134"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:134 --> **L134** 要求记录对象能在同一规则登记表中解析。

<a id="line-code-leanified-corereader-reflexivity-lean-135"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:135 --> **L135** 检查记录活动正是该规则约束的活动。

<a id="line-code-leanified-corereader-reflexivity-lean-136"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:136 --> **L136** 检查记录问题等于该规则为s指定的问题。

<a id="line-code-leanified-corereader-reflexivity-lean-137"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:137 --> **L137** 另检查问题自身针对s，而非无关对象。

<a id="line-code-leanified-corereader-reflexivity-lean-138"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:138 --> **L138** 检查问题中的方法属于已解析的登记目标。

<a id="line-code-leanified-corereader-reflexivity-lean-139"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:139 --> **L139** 检查记录理由等于该规则为s指定的理由。

<a id="line-code-leanified-corereader-reflexivity-lean-140"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:140 --> **L140** 要求该记录至少包含一项实际理由。

<a id="line-code-leanified-corereader-reflexivity-lean-141"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:141 --> **L141** 要求每个记录理由都针对同一对象s。

<a id="line-code-leanified-corereader-reflexivity-lean-142"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:142 --> **L142** 检查记录限度等于该规则对s的限度。

<a id="line-code-leanified-corereader-reflexivity-lean-143"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:143 --> **L143** 要求记录结果满足该规则对问题、理由和限度的实际含义关系。

<a id="line-code-leanified-corereader-reflexivity-lean-145"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:145 --> **L145** 说明后续定义或结果：要求登记一致，且每条适用规则对同主体对象都有有效应用记录；仍是模型遵守条件。

<a id="line-code-leanified-corereader-reflexivity-lean-146"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:146 --> **L146** 开启来源元数据，将CoreReader.Agency.Reflexive绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-reflexivity-lean-147"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:147 --> **L147** 记录来源引用organon.charter.reflexivity#p1及内容摘要13293b45c2fa89068c68ae7ef3c5df38f0efadb3ef3873d78a5ba67d9691a757；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-reflexivity-lean-148"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:148 --> **L148** 记录来源引用organon.charter.reflexivity.meaning#p1及内容摘要8a2caede01a43d8b6c60b54c78ac089c51868e9956f316948077ccee2e45c9cc；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-reflexivity-lean-149"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:149 --> **L149** 记录来源引用organon.charter.reflexivity.limits#p1及内容摘要ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-reflexivity-lean-150"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:150 --> **L150** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-reflexivity-lean-151"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:151 --> **L151** 要求登记一致，且每条适用规则对同主体对象都有有效应用记录；仍是模型遵守条件。

<a id="line-code-leanified-corereader-reflexivity-lean-152"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:152 --> **L152** Reflexive首先要求原则登记无歧义。

<a id="line-code-leanified-corereader-reflexivity-lean-153"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:153 --> **L153** 然后量化每项登记规则及其适用的自有对象。

<a id="line-code-leanified-corereader-reflexivity-lean-154"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:154 --> **L154** 对每次上述适用，都须存在通过全部ValidApplication内容检查的记录。

<a id="line-code-leanified-corereader-reflexivity-lean-156"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:156 --> **L156** 由完整反身性抽取目标和活动记录覆盖，不再保留内容有效性细节。

<a id="line-code-leanified-corereader-reflexivity-lean-157"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:157 --> **L157** 假设完整内容性Reflexive履责，推出较弱的仅范围覆盖。

<a id="line-code-leanified-corereader-reflexivity-lean-158"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:158 --> **L158** 为范围义务取已登记规则、自有对象及其适用前提。

<a id="line-code-leanified-corereader-reflexivity-lean-159"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:159 --> **L159** 用完整Reflexive履责取得实际列表记录及ValidApplication证明。

<a id="line-code-leanified-corereader-reflexivity-lean-160"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:160 --> **L160** 保留该记录的成员关系、目标一致与活动一致，证明Performed。

<a id="line-code-leanified-corereader-reflexivity-lean-162"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:162 --> **L162** 开启来源元数据，将CoreReader.Agency.noSelfExemption绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-reflexivity-lean-163"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:163 --> **L163** 记录来源引用organon.charter.reflexivity.limits#p1及内容摘要ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-reflexivity-lean-164"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:164 --> **L164** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-reflexivity-lean-165"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:165 --> **L165** 把完整反身规范应用于已登记且适用的同主体对象，得到工作记录。

<a id="line-code-leanified-corereader-reflexivity-lean-166"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:166 --> **L166** 要求完整Reflexive履责及该规则实际属于登记表。

<a id="line-code-leanified-corereader-reflexivity-lean-167"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:167 --> **L167** 还要求目标所有者匹配且该规则对其适用。

<a id="line-code-leanified-corereader-reflexivity-lean-168"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:168 --> **L168** 把导出的范围义务应用于这些前提，得到该目标的活动已经记录。

<a id="line-code-leanified-corereader-reflexivity-lean-170"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:170 --> **L170** 只测试零并声明零点范围。

<a id="line-code-leanified-corereader-reflexivity-lean-172"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:172 --> **L172** 形成询问根据，应用询问适用性，修订询问零与一范围的根据，其他对象询问合规。

<a id="line-code-leanified-corereader-reflexivity-lean-173"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:173 --> **L173** 根据对象的过程阶段选择问题，仍以同一对象为目标。

<a id="line-code-leanified-corereader-reflexivity-lean-174"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:174 --> **L174** 对形成阶段，考察覆盖输入0的方法形成根据。

<a id="line-code-leanified-corereader-reflexivity-lean-175"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:175 --> **L175** 对应用阶段，考察局部方法在输入0上的适用性。

<a id="line-code-leanified-corereader-reflexivity-lean-176"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:176 --> **L176** 对修订阶段，考察将同一局部方法范围扩至输入0和1的根据。

<a id="line-code-leanified-corereader-reflexivity-lean-177"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:177 --> **L177** 对系统或原则自身，在局部范围{0}内考察符合性。

<a id="line-code-leanified-corereader-reflexivity-lean-179"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:179 --> **L179** 说明后续定义或结果：按问题提供目的、范围、观察；修订问题另含未测试输入失败的程序反例。

<a id="line-code-leanified-corereader-reflexivity-lean-180"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:180 --> **L180** 按问题提供目的、范围、观察；修订问题另含未测试输入失败的程序反例。

<a id="line-code-leanified-corereader-reflexivity-lean-181"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:181 --> **L181** 形成理由陈述目的{0}、声明范围{0}及0处为真的观察。

<a id="line-code-leanified-corereader-reflexivity-lean-182"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:182 --> **L182** 适用性与符合性使用已声明局部范围及同一0处观察。

<a id="line-code-leanified-corereader-reflexivity-lean-183"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:183 --> **L183** 修订理由要求{0,1}，同时承认原声明范围为{0}且仅有0处观察。

<a id="line-code-leanified-corereader-reflexivity-lean-184"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:184 --> **L184** 加入onlyAtZero程序在输入1处的具体修订反例。

<a id="line-code-leanified-corereader-reflexivity-lean-186"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:186 --> **L186** 把选定理由内容逐项绑定到同一问题目标。

<a id="line-code-leanified-corereader-reflexivity-lean-187"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:187 --> **L187** 将每项源理由与类别引用和同一对象s包装，保留实际内容。

<a id="line-code-leanified-corereader-reflexivity-lean-189"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:189 --> **L189** 说明后续定义或结果：按实际理由和方法范围计算结果；已通过当前测试却在请求输入失败的程序使修订主张不充分。

<a id="line-code-leanified-corereader-reflexivity-lean-190"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:190 --> **L190** 说明后续定义或结果：按实际理由和方法范围计算结果；已通过当前测试却在请求输入失败的程序使修订主张不充分。

<a id="line-code-leanified-corereader-reflexivity-lean-191"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:191 --> **L191** 按实际理由和方法范围计算结果；已通过当前测试却在请求输入失败的程序使修订主张不充分。

<a id="line-code-leanified-corereader-reflexivity-lean-192"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:192 --> **L192** 提取理由内容，以检查目的、范围、观察与反例实质。

<a id="line-code-leanified-corereader-reflexivity-lean-193"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:193 --> **L193** 提供的限度若不同于待考察方法声明范围，则返回未确定。

<a id="line-code-leanified-corereader-reflexivity-lean-194"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:194 --> **L194** 检查限度后，评估提出的具体问题种类。

<a id="line-code-leanified-corereader-reflexivity-lean-195"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:195 --> **L195** 进入形成根据的评估分支。

<a id="line-code-leanified-corereader-reflexivity-lean-196"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:196 --> **L196** 要求存在覆盖问题所请求输入的目的理由。

<a id="line-code-leanified-corereader-reflexivity-lean-197"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:197 --> **L197** 还要求明确限度声明，且请求范围等于声明范围。

<a id="line-code-leanified-corereader-reflexivity-lean-198"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:198 --> **L198** 仅上述内容检查通过时形成评估才为域内有支持，否则未确定。

<a id="line-code-leanified-corereader-reflexivity-lean-199"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:199 --> **L199** 对适用性和符合性问题采用相同局部检查。

<a id="line-code-leanified-corereader-reflexivity-lean-200"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:200 --> **L200** 首先检查每个请求输入都在所提供限度内。

<a id="line-code-leanified-corereader-reflexivity-lean-201"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:201 --> **L201** 在限度内，要求理由明确声明同一范围。

<a id="line-code-leanified-corereader-reflexivity-lean-202"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:202 --> **L202** 还要求0处为真的观察，以及请求范围恰为[0]。

<a id="line-code-leanified-corereader-reflexivity-lean-203"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:203 --> **L203** 通过这些局部检查得到域内有支持；证据不完整则未确定。

<a id="line-code-leanified-corereader-reflexivity-lean-204"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:204 --> **L204** 请求输入超出所提供限度时，判为不适用。

<a id="line-code-leanified-corereader-reflexivity-lean-205"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:205 --> **L205** 进入修订根据分支，寻找实际范围反例。

<a id="line-code-leanified-corereader-reflexivity-lean-206"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:206 --> **L206** 要求理由把修订后请求范围陈述为预期目的。

<a id="line-code-leanified-corereader-reflexivity-lean-207"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:207 --> **L207** 要求旧限度明确出现于声明范围理由中。

<a id="line-code-leanified-corereader-reflexivity-lean-208"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:208 --> **L208** 要求原先输入0上的成功观察。

<a id="line-code-leanified-corereader-reflexivity-lean-209"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:209 --> **L209** 在提供的理由内容中寻找满足以下具体检查的反例。

<a id="line-code-leanified-corereader-reflexivity-lean-210"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:210 --> **L210** 反例输入必须属于新请求范围。

<a id="line-code-leanified-corereader-reflexivity-lean-211"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:211 --> **L211** 但该反例程序必须通过当前方法的已测试输入。

<a id="line-code-leanified-corereader-reflexivity-lean-212"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:212 --> **L212** 同一程序必须在反例输入处失败。

<a id="line-code-leanified-corereader-reflexivity-lean-213"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:213 --> **L213** 其他种类理由不能自行满足该反例搜索。

<a id="line-code-leanified-corereader-reflexivity-lean-214"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:214 --> **L214** 发现测试与范围之间的反例缺口时判为不足；缺少这些内容则未确定。

<a id="line-code-leanified-corereader-reflexivity-lean-216"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:216 --> **L216** 生成保留测试输入并采用请求范围；评估执行依赖理由内容的问题检查。

<a id="line-code-leanified-corereader-reflexivity-lean-217"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:217 --> **L217** 把同一理由和限度传入按活动区分的结果函数。

<a id="line-code-leanified-corereader-reflexivity-lean-218"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:218 --> **L218** 在生成草案与评估问题之间选择。

<a id="line-code-leanified-corereader-reflexivity-lean-219"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:219 --> **L219** 生成保留方法已测试输入，却提出问题请求范围；不认证正确性。

<a id="line-code-leanified-corereader-reflexivity-lean-220"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:220 --> **L220** 评估使用此问题实际理由与限度计算assessInquiry。

<a id="line-code-leanified-corereader-reflexivity-lean-222"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:222 --> **L222** 以结果等于明示有限算法的计算值定义语义，不预设检查成功。

<a id="line-code-leanified-corereader-reflexivity-lean-223"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:223 --> **L223** 接收待检查是否遵循该活动方法的具体记录结果。

<a id="line-code-leanified-corereader-reflexivity-lean-224"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:224 --> **L224** 结果恰等于计算出的finiteMethodResult时才遵循该方法。

<a id="line-code-leanified-corereader-reflexivity-lean-226"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:226 --> **L226** 枚举所属系统、两条登记原则及各原则的三个过程阶段。

<a id="line-code-leanified-corereader-reflexivity-lean-227"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:227 --> **L227** 把系统自身及其两个原则身份纳入自有对象。

<a id="line-code-leanified-corereader-reflexivity-lean-228"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:228 --> **L228** 把原则0的形成、应用和修订分别列为对象。

<a id="line-code-leanified-corereader-reflexivity-lean-229"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:229 --> **L229** 也纳入原则1的全部三个阶段，总计九个自有对象。

<a id="line-code-leanified-corereader-reflexivity-lean-231"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:231 --> **L231** 说明后续定义或结果：此应用的生成规则排除应用阶段过程，保留其他对象。

<a id="line-code-leanified-corereader-reflexivity-lean-232"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:232 --> **L232** 此应用的生成规则排除应用阶段过程，保留其他对象。

<a id="line-code-leanified-corereader-reflexivity-lean-233"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:233 --> **L233** 在该应用模型中，把应用既有原则视为不适用生成活动。

<a id="line-code-leanified-corereader-reflexivity-lean-234"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:234 --> **L234** 其余已表示对象种类均适用生成活动。

<a id="line-code-leanified-corereader-reflexivity-lean-236"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:236 --> **L236** 登记零号生成原则，带局部方法、问题、理由及受限适用条件。

<a id="line-code-leanified-corereader-reflexivity-lean-237"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:237 --> **L237** 以此所有者的局部标识0登记生成原则。

<a id="line-code-leanified-corereader-reflexivity-lean-238"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:238 --> **L238** 令该规则约束生成工作。

<a id="line-code-leanified-corereader-reflexivity-lean-239"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:239 --> **L239** 为生成规则指定测试与范围均为[0]的局部草案。

<a id="line-code-leanified-corereader-reflexivity-lean-240"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:240 --> **L240** 生成适用性同时要求属于该所有者九个对象及符合生成资格。

<a id="line-code-leanified-corereader-reflexivity-lean-241"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:241 --> **L241** 用inquiryFor提供与对象阶段对应的实际问题。

<a id="line-code-leanified-corereader-reflexivity-lean-242"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:242 --> **L242** 用reasonsFor提供原始且与目标相连的理由内容。

<a id="line-code-leanified-corereader-reflexivity-lean-243"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:243 --> **L243** 对每个对象，生成规则均保留[0]这一限度。

<a id="line-code-leanified-corereader-reflexivity-lean-244"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:244 --> **L244** 要求生成结果符合finiteMethodResult的生成分支。

<a id="line-code-leanified-corereader-reflexivity-lean-246"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:246 --> **L246** 登记一号评估原则，按明确有限语义评估全部枚举自身对象。

<a id="line-code-leanified-corereader-reflexivity-lean-247"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:247 --> **L247** 以不同的局部标识1登记评估原则。

<a id="line-code-leanified-corereader-reflexivity-lean-248"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:248 --> **L248** 令该规则约束评估工作。

<a id="line-code-leanified-corereader-reflexivity-lean-249"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:249 --> **L249** 评估原则声明相同的局部[0]/[0]方法契约。

<a id="line-code-leanified-corereader-reflexivity-lean-250"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:250 --> **L250** 评估对该所有者全部九个对象适用。

<a id="line-code-leanified-corereader-reflexivity-lean-251"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:251 --> **L251** 给评估规则指定同一按阶段区分的问题函数。

<a id="line-code-leanified-corereader-reflexivity-lean-252"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:252 --> **L252** 为其评估指定同一原始目标相关理由。

<a id="line-code-leanified-corereader-reflexivity-lean-253"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:253 --> **L253** 保留[0]作为评估规则声明的限度。

<a id="line-code-leanified-corereader-reflexivity-lean-254"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:254 --> **L254** 要求评估结果等于评估函数的实际结果。

<a id="line-code-leanified-corereader-reflexivity-lean-256"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:256 --> **L256** 返回两个身份不同的生成和评估原则。

<a id="line-code-leanified-corereader-reflexivity-lean-258"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:258 --> **L258** 说明后续定义或结果：构造拟记录草案和范围支持或不充分结果，随后与实际算法计算核对。

<a id="line-code-leanified-corereader-reflexivity-lean-259"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:259 --> **L259** 构造拟记录草案和范围支持或不充分结果，随后与实际算法计算核对。

<a id="line-code-leanified-corereader-reflexivity-lean-260"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:260 --> **L260** 按活动选择独立陈述的记录结果。

<a id="line-code-leanified-corereader-reflexivity-lean-261"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:261 --> **L261** 记录中的生成草案保留测试输入并采用问题请求范围。

<a id="line-code-leanified-corereader-reflexivity-lean-262"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:262 --> **L262** 评估记录按问题种类选取所陈述判定，此处不调用assessInquiry。

<a id="line-code-leanified-corereader-reflexivity-lean-263"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:263 --> **L263** 修订问题记录为不足。

<a id="line-code-leanified-corereader-reflexivity-lean-264"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:264 --> **L264** 其余已表示问题记录为域内有支持。

<a id="line-code-leanified-corereader-reflexivity-lean-266"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:266 --> **L266** 用提供的规则与对象构造记录；登记成员关系与内容有效性仍需后续ValidApplication证明。

<a id="line-code-leanified-corereader-reflexivity-lean-267"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:267 --> **L267** 用此规则的标识、问题、理由和限度构造记录，但结果采用独立陈述值。

<a id="line-code-leanified-corereader-reflexivity-lean-269"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:269 --> **L269** 穷尽对象与阶段，证明每个具体问题理由非空。

<a id="line-code-leanified-corereader-reflexivity-lean-270"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:270 --> **L270** 对每种对象检查理由列表非空。

<a id="line-code-leanified-corereader-reflexivity-lean-271"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:271 --> **L271** 系统问题使用符合性理由，包含范围与观察条目。

<a id="line-code-leanified-corereader-reflexivity-lean-272"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:272 --> **L272** 原则问题同样具有非空的范围与观察列表。

<a id="line-code-leanified-corereader-reflexivity-lean-273"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:273 --> **L273** 各过程阶段分别化为实际非空的形成、应用或修订理由列表。

<a id="line-code-leanified-corereader-reflexivity-lean-275"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:275 --> **L275** 从理由列表的映射构造证明各理由都指向同一对象。

<a id="line-code-leanified-corereader-reflexivity-lean-276"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:276 --> **L276** 取已知属于此对象构造理由列表的任意理由。

<a id="line-code-leanified-corereader-reflexivity-lean-277"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:277 --> **L277** 反解map构造取得源内容，将理由替换为附有目标标识的包装。

<a id="line-code-leanified-corereader-reflexivity-lean-278"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:278 --> **L278** 该包装的目标按构造就是s，故目标等式自反成立。

<a id="line-code-leanified-corereader-reflexivity-lean-280"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:280 --> **L280** 逐构造器验证生成问题保留目标身份。

<a id="line-code-leanified-corereader-reflexivity-lean-281"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:281 --> **L281** 分别检查系统、原则和过程对象的问题目标。

<a id="line-code-leanified-corereader-reflexivity-lean-282"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:282 --> **L282** 系统问题构造时就以同一系统为目标。

<a id="line-code-leanified-corereader-reflexivity-lean-283"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:283 --> **L283** 原则问题同样保留同一原则目标。

<a id="line-code-leanified-corereader-reflexivity-lean-284"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:284 --> **L284** 每个过程阶段均以原过程对象为问题目标。

<a id="line-code-leanified-corereader-reflexivity-lean-286"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:286 --> **L286** 说明后续定义或结果：计算各对象和阶段的评估及生成，证明记录预期结果与算法一致，包含不充分结果。

<a id="line-code-leanified-corereader-reflexivity-lean-287"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:287 --> **L287** 计算各对象和阶段的评估及生成，证明记录预期结果与算法一致，包含不充分结果。

<a id="line-code-leanified-corereader-reflexivity-lean-288"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:288 --> **L288** 要求独立陈述结果等于对该对象问题、理由及[0]限度的实际计算。

<a id="line-code-leanified-corereader-reflexivity-lean-289"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:289 --> **L289** 分别检查生成草案与评估判定的结果等式。

<a id="line-code-leanified-corereader-reflexivity-lean-290"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:290 --> **L290** 两个生成定义构造完全相同的测试输入与请求范围草案。

<a id="line-code-leanified-corereader-reflexivity-lean-291"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:291 --> **L291** 对评估，现须将所陈述判定与实际评估函数核对。

<a id="line-code-leanified-corereader-reflexivity-lean-292"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:292 --> **L292** 按对象种类区分有限评估检查。

<a id="line-code-leanified-corereader-reflexivity-lean-293"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:293 --> **L293** 系统的符合性内容计算得到所陈述的域内有支持判定。

<a id="line-code-leanified-corereader-reflexivity-lean-294"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:294 --> **L294** 原则的符合性内容计算得到同一域内有支持判定。

<a id="line-code-leanified-corereader-reflexivity-lean-295"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:295 --> **L295** 形成与应用计算为有支持；修订因程序在0通过而在1失败计算为不足。

<a id="line-code-leanified-corereader-reflexivity-lean-297"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:297 --> **L297** 利用局部编号零和一不同，证明登记键无歧义。

<a id="line-code-leanified-corereader-reflexivity-lean-298"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:298 --> **L298** 取两项登记原则，并假设其标识相等。

<a id="line-code-leanified-corereader-reflexivity-lean-299"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:299 --> **L299** 把两项登记成员关系限定为实际生成规则或评估规则。

<a id="line-code-leanified-corereader-reflexivity-lean-300"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:300 --> **L300** 检查由此产生的四种具体规则配对。

<a id="line-code-leanified-corereader-reflexivity-lean-301"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:301 --> **L301** 两者都是生成规则时，原则相等直接成立。

<a id="line-code-leanified-corereader-reflexivity-lean-302"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:302 --> **L302** 生成标识0不能等于评估标识1；提取localId得到矛盾。

<a id="line-code-leanified-corereader-reflexivity-lean-303"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:303 --> **L303** 反向混合配对要求localId 1=0，也不可能。

<a id="line-code-leanified-corereader-reflexivity-lean-304"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:304 --> **L304** 两者都是评估规则时，原则相等直接成立。

<a id="line-code-leanified-corereader-reflexivity-lean-306"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:306 --> **L306** 核实九个枚举对象都能解析到实际登记主体或原则。

<a id="line-code-leanified-corereader-reflexivity-lean-307"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:307 --> **L307** 从ownSubjects选出的对象必须可在该所有者实际登记表中解析。

<a id="line-code-leanified-corereader-reflexivity-lean-308"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:308 --> **L308** 把成员前提hs展开为九个具体自有对象。

<a id="line-code-leanified-corereader-reflexivity-lean-309"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:309 --> **L309** 逐个处理九个对象，保持其原所有者和原则编号。

<a id="line-code-leanified-corereader-reflexivity-lean-310"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:310 --> **L310** 为每个目标标识找到匹配的生成或评估登记项。

<a id="line-code-leanified-corereader-reflexivity-lean-312"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:312 --> **L312** 核实每个问题的方法与登记目标的局部方法一致。

<a id="line-code-leanified-corereader-reflexivity-lean-313"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:313 --> **L313** 要求所选对象的问题考察其自身登记声明的方法。

<a id="line-code-leanified-corereader-reflexivity-lean-314"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:314 --> **L314** 再次依据实际成员前提枚举九个具体对象。

<a id="line-code-leanified-corereader-reflexivity-lean-315"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:315 --> **L315** 分别检查系统、原则和各阶段对象的目标方法对应。

<a id="line-code-leanified-corereader-reflexivity-lean-316"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:316 --> **L316** 两项登记规则都声明localMethod，恰与inquiryFor为每个枚举目标指定的方法相同。

<a id="line-code-leanified-corereader-reflexivity-lean-318"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:318 --> **L318** 综合身份、理由目标、范围、登记及实际计算，验证每个适用记录。

<a id="line-code-leanified-corereader-reflexivity-lean-319"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:319 --> **L319** 假设所选登记规则对对象s适用。

<a id="line-code-leanified-corereader-reflexivity-lean-320"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:320 --> **L320** 证明具体recordFor rule s满足每个ValidApplication字段。

<a id="line-code-leanified-corereader-reflexivity-lean-321"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:321 --> **L321** 首先从适用性推出s属于该所有者对象列表。

<a id="line-code-leanified-corereader-reflexivity-lean-322"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:322 --> **L322** 用登记成员关系将rule限定为两个自有规则之一。

<a id="line-code-leanified-corereader-reflexivity-lean-323"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:323 --> **L323** 分别处理生成与评估的适用条件。

<a id="line-code-leanified-corereader-reflexivity-lean-324"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:324 --> **L324** 生成适用性的第一个合取项就是自有对象成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-325"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:325 --> **L325** 评估适用性恰为该自有对象成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-326"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:326 --> **L326** 确立此实际规则以inquiryFor作为问题函数。

<a id="line-code-leanified-corereader-reflexivity-lean-327"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:327 --> **L327** 将登记规则成员关系化为生成或评估，以检查问题字段。

<a id="line-code-leanified-corereader-reflexivity-lean-328"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:328 --> **L328** 两个可能规则的问题字段都定义为inquiryFor。

<a id="line-code-leanified-corereader-reflexivity-lean-329"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:329 --> **L329** 确立所选规则用reasonsFor提供理由。

<a id="line-code-leanified-corereader-reflexivity-lean-330"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:330 --> **L330** 检查理由前，再次将规则限定为两个实际登记项。

<a id="line-code-leanified-corereader-reflexivity-lean-331"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:331 --> **L331** 两个登记项都恰提供reasonsFor。

<a id="line-code-leanified-corereader-reflexivity-lean-332"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:332 --> **L332** 确立该规则对s的限度恰为[0]。

<a id="line-code-leanified-corereader-reflexivity-lean-333"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:333 --> **L333** 检查所选规则限度前，先解析登记成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-334"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:334 --> **L334** 两个自有规则都保留[0]作为限度。

<a id="line-code-leanified-corereader-reflexivity-lean-335"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:335 --> **L335** 确立所选规则的含义是其自身活动对应的结果函数。

<a id="line-code-leanified-corereader-reflexivity-lean-336"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:336 --> **L336** 解析登记成员关系，以检查生成或评估的含义。

<a id="line-code-leanified-corereader-reflexivity-lean-337"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:337 --> **L337** 两种情形中，规则含义都是按其活动实例化的finiteMethodMeaning。

<a id="line-code-leanified-corereader-reflexivity-lean-338"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:338 --> **L338** 用登记与适用前提、记录一致性和已解析目标构造ValidApplication，余下检查问题、理由及计算含义。

<a id="line-code-leanified-corereader-reflexivity-lean-339"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:339 --> **L339** 余下的问题目标义务针对该规则对s的实际问题。

<a id="line-code-leanified-corereader-reflexivity-lean-340"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:340 --> **L340** 将规则问题换为inquiryFor，用其目标保持定理证明目标为s。

<a id="line-code-leanified-corereader-reflexivity-lean-341"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:341 --> **L341** 余下方法一致性义务检查该规则问题的登记目标。

<a id="line-code-leanified-corereader-reflexivity-lean-342"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:342 --> **L342** 改写为inquiryFor，使用具体自有目标的方法解析定理。

<a id="line-code-leanified-corereader-reflexivity-lean-343"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:343 --> **L343** 把记录理由非空化为该规则提供理由非空。

<a id="line-code-leanified-corereader-reflexivity-lean-344"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:344 --> **L344** 把这些理由改写为reasonsFor，应用其非空列表定理。

<a id="line-code-leanified-corereader-reflexivity-lean-345"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:345 --> **L345** 把理由目标一致性化为每项提供理由都针对s。

<a id="line-code-leanified-corereader-reflexivity-lean-346"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:346 --> **L346** 改写为reasonsFor，使用其目标保持构造定理。

<a id="line-code-leanified-corereader-reflexivity-lean-347"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:347 --> **L347** 最后义务比较独立陈述结果与该规则实际问题、理由、限度及含义。

<a id="line-code-leanified-corereader-reflexivity-lean-348"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:348 --> **L348** 代入含义、问题、理由和[0]限度这四项已证一致性。

<a id="line-code-leanified-corereader-reflexivity-lean-349"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:349 --> **L349** 用ownContentEvaluates证明记录结果等于实际方法结果。

<a id="line-code-leanified-corereader-reflexivity-lean-351"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:351 --> **L351** 为九个对象构造记录，仅在生成适用时加入生成记录。

<a id="line-code-leanified-corereader-reflexivity-lean-352"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:352 --> **L352** 通过连接分配给每个自有对象的记录，构造完整日志。

<a id="line-code-leanified-corereader-reflexivity-lean-353"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:353 --> **L353** 符合生成资格的对象同时获得生成记录和评估记录。

<a id="line-code-leanified-corereader-reflexivity-lean-354"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:354 --> **L354** 应用阶段对象仅获评估记录，与生成的明确适用限制一致。

<a id="line-code-leanified-corereader-reflexivity-lean-356"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:356 --> **L356** 证明每个对象的评估记录进入完整工作列表。

<a id="line-code-leanified-corereader-reflexivity-lean-357"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:357 --> **L357** 陈述该自有对象的评估记录属于构造出的完整日志。

<a id="line-code-leanified-corereader-reflexivity-lean-358"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:358 --> **L358** 使用flatMap成员规则：选取其分配列表包含目标记录的对象。

<a id="line-code-leanified-corereader-reflexivity-lean-359"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:359 --> **L359** 选择同一s及其给定的自有对象成员证明hs。

<a id="line-code-leanified-corereader-reflexivity-lean-360"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:360 --> **L360** 无论生成是否适用，分配列表都包含s的评估记录。

<a id="line-code-leanified-corereader-reflexivity-lean-362"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:362 --> **L362** 在明确生成适用条件下证明生成记录存在。

<a id="line-code-leanified-corereader-reflexivity-lean-363"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:363 --> **L363** 声称完整日志包含生成记录前，除自有成员关系外还要求生成资格。

<a id="line-code-leanified-corereader-reflexivity-lean-364"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:364 --> **L364** 选择s的flatMap分支；hg使该分支包含所需生成记录。

<a id="line-code-leanified-corereader-reflexivity-lean-366"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:366 --> **L366** 综合登记一致、记录存在及内容有效性，建立具体非空反身模型。

<a id="line-code-leanified-corereader-reflexivity-lean-367"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:367 --> **L367** 陈述实际双规则登记表与构造工作日志满足完整内容性反身要求。

<a id="line-code-leanified-corereader-reflexivity-lean-368"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:368 --> **L368** 提供已证登记一致性，余下逐一证明适用对象的内容性覆盖。

<a id="line-code-leanified-corereader-reflexivity-lean-369"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:369 --> **L369** 取实际登记规则和适用对象；适用性自身将提供所需自有成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-370"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:370 --> **L370** 选择recordFor rule s及已证内容有效性，仅留下它属于完整日志的义务。

<a id="line-code-leanified-corereader-reflexivity-lean-371"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:371 --> **L371** 把规则成员关系解析为生成或评估登记项。

<a id="line-code-leanified-corereader-reflexivity-lean-372"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:372 --> **L372** 按这两个实际规则情形分别证明记录成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-373"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:373 --> **L373** 对生成，ha提供自有成员关系和资格，使其记录属于完整日志。

<a id="line-code-leanified-corereader-reflexivity-lean-374"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:374 --> **L374** 对评估，ha直接提供其记录所需的自有成员关系。

<a id="line-code-leanified-corereader-reflexivity-lean-376"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:376 --> **L376** 为列表中的自身对象抽取已构造评估记录。

<a id="line-code-leanified-corereader-reflexivity-lean-377"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:377 --> **L377** 陈述同一完整工作日志中存在针对s的评估活动。

<a id="line-code-leanified-corereader-reflexivity-lean-378"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:378 --> **L378** 以s的评估记录、已证日志成员关系及确切目标活动一致性作为Performed见证。

<a id="line-code-leanified-corereader-reflexivity-lean-380"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:380 --> **L380** 把评估规则限定到一个应用阶段对象，并给出可解析键。

<a id="line-code-leanified-corereader-reflexivity-lean-381"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:381 --> **L381** 把评估规则限制为原则0的应用过程，标识为(0,0)。

<a id="line-code-leanified-corereader-reflexivity-lean-383"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:383 --> **L383** 储存该单一应用对象的完整评估记录。

<a id="line-code-leanified-corereader-reflexivity-lean-385"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:385 --> **L385** 核实单规则及其记录在受限适用范围内满足完整内容有效反身性。

<a id="line-code-leanified-corereader-reflexivity-lean-386"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:386 --> **L386** 将单项登记表一致性与唯一适用对象覆盖分开。

<a id="line-code-leanified-corereader-reflexivity-lean-387"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:387 --> **L387** 取单项登记表中任意两规则；成员关系已确定两者，因此无需使用标识相等前提。

<a id="line-code-leanified-corereader-reflexivity-lean-388"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:388 --> **L388** 单项成员关系使两规则都等于applicationRule。

<a id="line-code-leanified-corereader-reflexivity-lean-389"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:389 --> **L389** 代入这两个一致性证明两规则相等。

<a id="line-code-leanified-corereader-reflexivity-lean-390"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:390 --> **L390** 为单项应用登记表中的规则取一个适用对象。

<a id="line-code-leanified-corereader-reflexivity-lean-391"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:391 --> **L391** 用单项成员关系确认该规则是applicationRule。

<a id="line-code-leanified-corereader-reflexivity-lean-392"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:392 --> **L392** 在覆盖义务中把rule替换为确切的applicationRule。

<a id="line-code-leanified-corereader-reflexivity-lean-393"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:393 --> **L393** 展开适用性，得到s恰为所有者0的原则0应用过程。

<a id="line-code-leanified-corereader-reflexivity-lean-394"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:394 --> **L394** 把s替换为该确切过程，固定工作目标。

<a id="line-code-leanified-corereader-reflexivity-lean-395"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:395 --> **L395** 选择applicationWork唯一记录并证明成员关系，余下检查内容有效性。

<a id="line-code-leanified-corereader-reflexivity-lean-396"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:396 --> **L396** 填入直接成立的登记、适用与记录一致性字段，留下目标解析、理由及计算结果检查。

<a id="line-code-leanified-corereader-reflexivity-lean-397"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:397 --> **L397** 目标标识解析为单项登记表中的applicationRule自身。

<a id="line-code-leanified-corereader-reflexivity-lean-398"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:398 --> **L398** 同一登记规则提供问题实际考察的localMethod。

<a id="line-code-leanified-corereader-reflexivity-lean-399"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:399 --> **L399** 由reasonsFor_nonempty得应用问题理由非空。

<a id="line-code-leanified-corereader-reflexivity-lean-400"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:400 --> **L400** 每项应用理由都针对该确切应用过程对象。

<a id="line-code-leanified-corereader-reflexivity-lean-401"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:401 --> **L401** 余下含义义务是所陈述应用评估与实际有限计算结果相等。

<a id="line-code-leanified-corereader-reflexivity-lean-402"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:402 --> **L402** 用ownContentEvaluates确认应用阶段评估的该等式。

<a id="line-code-leanified-corereader-reflexivity-lean-404"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:404 --> **L404** 开启来源元数据，将CoreReader.Agency.applicabilityRetained绑定到后续来源引用；这些元数据不是证明前提。

<a id="line-code-leanified-corereader-reflexivity-lean-405"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:405 --> **L405** 记录来源引用organon.charter.reflexivity.limits#p1及内容摘要ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc；摘要匹配确定来源身份，不证明语义保真。

<a id="line-code-leanified-corereader-reflexivity-lean-406"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:406 --> **L406** 结束前述文档或来源注释，不增加可执行代码。

<a id="line-code-leanified-corereader-reflexivity-lean-407"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:407 --> **L407** 从完整反身性得到范围覆盖，证明条件与析取等价，并给无系统评估记录的有效受限实例。

<a id="line-code-leanified-corereader-reflexivity-lean-408"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:408 --> **L408** 第一条保留完整内容性反身要求推出范围覆盖的结论。

<a id="line-code-leanified-corereader-reflexivity-lean-409"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:409 --> **L409** 第二条把条件性范围覆盖改述为二择一义务。

<a id="line-code-leanified-corereader-reflexivity-lean-410"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:410 --> **L410** 对每个自有对象和登记规则，要么规则不适用，要么其活动已有记录。

<a id="line-code-leanified-corereader-reflexivity-lean-411"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:411 --> **L411** 具体单项应用日志在受限规则下满足完整反身要求。

<a id="line-code-leanified-corereader-reflexivity-lean-412"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:412 --> **L412** 但同一日志不含系统自身评估，因为该规则对系统自身不适用。

<a id="line-code-leanified-corereader-reflexivity-lean-413"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:413 --> **L413** 对可能不可判定的适用谓词使用古典分情形讨论。

<a id="line-code-leanified-corereader-reflexivity-lean-414"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:414 --> **L414** 提供一般范围投影和具体受限见证，留下等价关系与缺失系统记录证明。

<a id="line-code-leanified-corereader-reflexivity-lean-415"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:415 --> **L415** 证明适用性或已履行改述的两个方向。

<a id="line-code-leanified-corereader-reflexivity-lean-416"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:416 --> **L416** 假设条件性范围覆盖，固定登记规则与自有对象。

<a id="line-code-leanified-corereader-reflexivity-lean-417"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:417 --> **L417** 按该确切规则是否对该对象适用分情况。

<a id="line-code-leanified-corereader-reflexivity-lean-418"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:418 --> **L418** 适用时，覆盖义务提供已记录活动，满足右析取项。

<a id="line-code-leanified-corereader-reflexivity-lean-419"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:419 --> **L419** 不适用时，该否定适用事实满足左析取项。

<a id="line-code-leanified-corereader-reflexivity-lean-420"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:420 --> **L420** 反向证明假设该析取，并给出对自有对象的实际适用性。

<a id="line-code-leanified-corereader-reflexivity-lean-421"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:421 --> **L421** 用ha排除不适用分支，得到所需已记录活动。

<a id="line-code-leanified-corereader-reflexivity-lean-422"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:422 --> **L422** 假设存在系统评估，提取列表记录及目标一致性。

<a id="line-code-leanified-corereader-reflexivity-lean-423"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:423 --> **L423** 单项applicationWork迫使该记录就是应用过程记录。

<a id="line-code-leanified-corereader-reflexivity-lean-424"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:424 --> **L424** 把声称的系统评估记录替换为唯一过程记录。

<a id="line-code-leanified-corereader-reflexivity-lean-425"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:425 --> **L425** 其过程目标不可能等于系统目标，与假设的记录一致性矛盾。

<a id="line-code-leanified-corereader-reflexivity-lean-427"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:427 --> **L427** 关闭当前命名空间。

<a id="code-leanified-corereader-lean"></a>
### `leanified/CoreReader.lean`

<!-- lean-code leanified/CoreReader.lean -->
```lean
import CoreReader.Integration
```
<!-- /lean-code leanified/CoreReader.lean -->

<a id="line-code-leanified-corereader-lean-1"></a>
<!-- lean-line leanified/CoreReader.lean:1 --> **L1** 导入CoreReader.Integration及其依赖。

