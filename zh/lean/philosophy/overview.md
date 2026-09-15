# 哲学与 Lean：主张速览

本文按 28 个冻结目标组织。目标接受、Lean 检查及来源保真是不同判断；规范定义不证明义务已履行，有限模型也不证明现实中的普遍正确性。33 个来源段落与两个空标题在追溯附录完整保留。

`accepted` 表示相应目标在已说明范围内获接受；`limited` 表示来源段落只有受限的形式对应；`incomplete` 保留未构成该段完整证明的部分。Lean 的 `passed` 仅报告已登记声明的检查；规范接口的通过不等于义务履行。

[另一粒度](details.md) · [冻结目标](../../../lean/philosophy/targets.json) · [审查与暴露说明](../../../lean/philosophy/reviews/README.md) · [实际声明类型](../../../lean/philosophy/evidence/declaration-types.json)

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

[声明、证明与逐行解释](details.md#t01)


<a id="t02"></a>
## T02 · 同一非空模型

一个具有明确见证的 System 与 World，同时承载章程、该系统自身得到支持的输出能力、具有相关理由的实现选择，以及五项被表示承诺各自的依据。

**前提与表示:** 见证为 actualSystem 与 actual = (identity, apply)。世界类型独立变化两种实现与两种治理模式；上下文包含该系统的理论、观测假设与应用范围，契约和评估适配器都是明确的模型约定。

**证明或检查:** jointWitness 始终使用同一对象对，组合 actualAdmissible、charterChecked、ownCapabilityGrounded、identityJustified 与 reasonsBelongToCommitments；存在性结论还用等式确定见证身份。

**限度:** 这证明了各项要求在已说明的应用模型中可以共同满足，不证明任意系统正确，也不独立确证所采纳的规范判据。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.preamble#p1](#source-organon-preamble-p1), [organon.preamble#p2](#source-organon-preamble-p2), [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t02)


<a id="t03"></a>
## T03 · 生成取向承诺

Generative 被定义为重视理解与建构的扩展，并允许政策认定为当前的每种形式被修订。

**前提与表示:** 参数为包含 worthPursuing、current 与 revisable 谓词的 Policy。可修订条款适用于满足 current 的形式；permitsVersion 是另一个独立字段。

**证明或检查:** 该声明通过合取定义一项义务；后续具体政策提供实例，定义本身并不证明任何主体履行了它。

**限度:** 该表示不确立这一目标的终极价值，不证明每次获准修改都推进目标，也不要求立即更改当前形式。

**状态:** accepted (specification). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.charter.self-transcendence#p1](#source-organon-charter-self-transcendence-p1), [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1), [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

[声明、证明与逐行解释](details.md#t03)


<a id="t04"></a>
## T04 · 许可不提供价值立场

版本变更获准可以与生成性价值取向缺失同时成立。

**前提与表示:** 具体的 neutral 政策允许版本变更，却不赋予扩展目标价值；Generative 保留其价值取向这一合取项。

**证明或检查:** permissionNotValuation 计算许可条件，并展开 Generative，以缺失的价值取向否定该定义。

**限度:** 这是被表示谓词之间某个蕴含关系的反例，不为任一政策辩护，也不分类所有现实中的许可。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1)

[声明、证明与逐行解释](details.md#t04)


<a id="t05"></a>
## T05 · 可修订性与进步

生成性政策使当前形式保持可修订；具体的开放政策也可以在能力完全没有扩展的轨迹中仍满足 Generative。

**前提与表示:** 一般可修订结论以 Generative 及所选形式属于 current 为前提。实例涵盖组织、方法、原则、呈现与产物，并采用恒定的基础状态轨迹。

**证明或检查:** revisabilityCovers 提取可修订义务；revisionWithoutProgress 使用开放政策实例，并证明相邻的相同状态没有新增的理解或建构操作。

**限度:** 可修订与许可并非实际发生修订或能力进步的证据；该结果也不声称修订永远不会带来进步。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.relationships.terms#p1](#source-organon-relationships-terms-p1)

[声明、证明与逐行解释](details.md#t05)


<a id="t06"></a>
## T06 · 生成的限度

同一个生成系统展示了没有进步的膨胀、对三种外部资源的依赖、符合应用预算且有理由维持的稳定行动，以及关于自身实际变化的虚假扩展报告。

**前提与表示:** 该系统包含 openPolicy、baseState、assistedExecution、必需的复制能力与数量为 1 的库存预算。inflatedState 复制产物、抽象层和词汇，却不增加理解或建构操作；报告明确指向该所有者、前后状态及输入 0 时预期输出 1 的后继操作。

**证明或检查:** generationLimits 计算同一系统接口：资源齐备时得到 6，删除经验、知识、协作者中的任一项或全部三项均得到 none；稳定行动保持当前状态、必需能力与预算。膨胀超过该预算，而系统生成的报告因其声称的新操作实际上不存在而不成立。

**限度:** 资源依赖与预算是明确的应用条件。这些具有实际内容的实例不确立普遍学习规律、普遍节制义务或任何现实扩展报告的充分性。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

[声明、证明与逐行解释](details.md#t06)


<a id="t07"></a>
## T07 · 成就需要相应依据

AchievementAccountability 要求为同一成就主张提供 Grounds。若已有支持且实际世界与证据相容，该主张就在该世界成立；具体扩展实例具有匹配依据，而其积极自报本身不足以支持该主张。

**前提与表示:** 一般定理的参数包括世界类型、成就谓词、记录、实际世界，以及 Compatible records actual 和 Supports records achievement 两个前提。具体实例另行固定共同的 baseState 与输入 0：extend 增加后继操作，inflate 只复制内容。

**证明或检查:** achievementNeedsSupport 将支持应用于相容的实际世界，并包含 ConcreteAchievementExample。真实后状态的表现区分出 extend，提供规范连接的匹配依据；积极报告也与 inflate 相容，而该情况下 Expanded before after 为假。

**限度:** 该定义表达规范问责，不把观测设为普遍必需条件。定理的一般分支以支持为前提，不从任意断言推得支持，也不凭记录标签证明现实成就。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2), [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

[声明、证明与逐行解释](details.md#t07)


<a id="t08"></a>
## T08 · 整个判断集合的一致性

具有共同世界见证的理论与上下文，不能在语义上同时推出同一问题的肯定与否定答案；分别可满足的假设合在一起仍可能不一致。

**前提与表示:** consequenceConsistency 对世界与问题类型、所持理论和一个 Context 量化，并假定存在同时满足整套所持理论、上下文假设与范围的 Admissible 世界。

**证明或检查:** 一般证明在同一见证处计算两个后果，得到矛盾。jointConflict 合并 P、P 蕴含 Q 与非 Q：每个单元素理论都有模型，其并集却没有模型。

**限度:** 非空见证是这一语义一致性论证的必要前提；成对或孤立检查不确立整体可满足性，也不推出假设的经验真实性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency#p1](#source-organon-charter-consistency-p1)

[声明、证明与逐行解释](details.md#t08)


<a id="t09"></a>
## T09 · 修订与语境变化

不同时间索引下的理论可以给出相反答案，而各自均可满足；改变假设、问题含义或范围，也可以改变答案。

**前提与表示:** 这些实例固定明确的布尔解释，并为各个上下文提供见证。肯定与否定答案属于不同的理论切片或上下文，并非同一套不变的合取。

**证明或检查:** revisionCanReverse 构造两个切片，并证明同时合并会失败；contextDifferences 分别改变假设、含义和范围组件，计算相应后果。

**限度:** 这些实例区分修订、上下文差异与同时矛盾，不证明某次具体修订有充分理由、真实或带来进步。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

[声明、证明与逐行解释](details.md#t09)


<a id="t10"></a>
## T10 · 变化必须如实说明

在 TruthfulReport 约定下，语义变化或修订身份变化要求积极报告变更。重排相同的所持内容并不改变内容，而如实报告也不使修订后的假设变真。

**前提与表示:** 一般结论以两个快照、报告标记、TruthfulReport 义务及实际发生的语义或身份变化为前提。SameContent 外延比较所持主张、上下文假设、含义与范围。

**证明或检查:** semanticChangeMustBeReported 应用已假定的报告义务；representationOrderIrrelevant 证明并集交换性；hiddenContextChangeRejected 分别检验隐瞒假设、含义、范围与身份变化的情况，并展示已报告的修订仍可在指定实际世界为假。

**限度:** 报告规则是被采纳的约定，不能仅从逻辑推导；这些实例不判定所有可能的修订形式，也不认证已报告变更的质量。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

[声明、证明与逐行解释](details.md#t10)


<a id="t11"></a>
## T11 · 张力与矛盾

不同资源目标可以共同满足；相反，同一理论与上下文对同一问题的肯定和否定后果会违反 Consistent。

**前提与表示:** 张力实例采用 4 ≤ budget 与 budget ≤ 6 两个谓词；conflictRequiresChange 接受任意理论、上下文与问题，以及两个相反后果作为前提。

**证明或检查:** tensionWithoutContradiction 提供预算 5，并证明两个谓词不同；conflictRequiresChange 将 Consistent 的定义应用于已给出的相反后果对。

**限度:** 后一定理只证明不一致，既不构造修复，也不决定应改变哪项承诺；资源实例不分类一切实践张力。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1)

[声明、证明与逐行解释](details.md#t11)


<a id="t12"></a>
## T12 · 一致性不等于真实性或覆盖充分性

可满足性不确立指定实际世界中的真实性；一个可满足的理论也可以对明确的问题不作决定。

**前提与表示:** 实例采用布尔世界：一个理论只有“世界为 true”这一假设；另一个为空理论，问题为世界是否为 true。

**证明或检查:** consistentFalse 提供 true 模型，并在 false 处否定该单一假设；consistentIncomplete 提供空理论的模型，利用相反世界分别否定两个答案的语义蕴含。

**限度:** 这些是明确的可满足性与非蕴含结果，不是对现实信念的经验分类，也不是形式算术的一般不完备定理。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t12)


<a id="t13"></a>
## T13 · 具有具体问题与理由的反身性工作

Reflexive 要求原则登记一致，并对各已登记原则实际适用的每个自有对象进行有效应用。有效应用携带该原则的问题、理由、限度，以及满足其独立规定含义的结果。

**前提与表示:** 参数为所有者、已登记原则与工作记录。ValidApplication 连接原则身份、对象、生成或评估活动、解析后的目标方法、准确问题、非空且匹配对象的理由、限度与语义结果；适用性与所有权是明确条件。

**证明或检查:** 该声明定义义务。共享模型中的 completeOwnWork_reflexive 为系统、两个原则及其形成、应用、修订过程提供经过内容检查的工作；评估器读取实际样本、声明范围与反例，并接受对修订作出的 insufficient 判断。

**限度:** 生成只对 generationEligible 对象成立；在本模型中，应用阶段过程接受评估。包括否定判断在内的有效工作，不证明受评原则正确，也不穷尽现实反身性探究。

**状态:** accepted (specification). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.reflexivity#p1](#source-organon-charter-reflexivity-p1), [organon.charter.reflexivity.meaning#p1](#source-organon-charter-reflexivity-meaning-p1), [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

[声明、证明与逐行解释](details.md#t13)


<a id="t14"></a>
## T14 · 自我应用不构成自证

满足 Reflexive 的工作集合不能遗漏适用的自有对象，但不适用对象无需接受工作。通过选定的自测或自行生成修订，都不确立普遍正确性。

**前提与表示:** noSelfExemption 以 Reflexive、原则属于登记集合、所有者匹配及适用性为前提；applicabilityRetained 保留这些条件。反例在测试与主张中使用同一算术原则，并使用所有者为 17、先前输出恒假、种子为 0 且确实生成相应修订的 GeneratingProcess。

**证明或检查:** 一般证明提取有效工作及其范围。算术原则在 1 处通过，却在 0 处失败；selfOriginDoesNotSupport 包含真实的生成者、旧对象和输出关系：修订通过输入 0 的观测，却在 1 处失败，构成否定 allTrue 的证据相容反世界。

**限度:** 范围覆盖弱于完整有效的 Reflexive 工作。实例否定自我认证的蕴含关系，不表示一切自测或自行生成的修订都无价值。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

[声明、证明与逐行解释](details.md#t14)


<a id="t15"></a>
## T15 · 支持、强度与范围

Grounds 将同一主张与全部实际适用的已表示方面及其真实表述连接起来。固定证据时，弱化结论或缩小其量化范围可保持支持。

**前提与表示:** Grounds 接受主张、按方面索引的表述、actualApplicable 谓词及覆盖它的非空列表。各列出方面必须属于同一主张、具有表述、匹配实际前提、理由与限度，并通过已说明的评估适配器。supportWeakening 假定 Supports records p 及逐点的 p 蕴含 q；scopeRestriction 假定广域结论已获支持，并有窄域包含于广域的条件。

**证明或检查:** 这里定义义务，而不普遍证明义务已履行。两个保持性证明都在同一相容世界应用原有支持，再使用蕴含或范围包含；经验、推论与价值表述适配器分别揭示实际记录相容性、理论或按选项索引的理由。

**限度:** 这些定理弱化的是结论，不是证据。FacetDischarged 与规范表述是特定应用的语义适配器，并不完整定义或证明原文层面的所有经验或价值充分性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

[声明、证明与逐行解释](details.md#t15)


<a id="t16"></a>
## T16 · 所有适用面向均保留责任

两组适用方面的责任恰好按并集合并，新增标签不能免除它们。一个同时具有经验与价值方面的主张，可以通过所表示的经验检查，却未通过其价值程序。

**前提与表示:** assessmentUnion 使用两个真实的方面谓词；labelsCannotWaive 中的标签不改变这些谓词或 FacetDischarged。混合开关实例针对同一“已选择开启”主张：真实观测评估选择事实，而采纳又引入价值程序。

**证明或检查:** 一般证明把全称义务分配到析取上，并展开标签包装；mixedMissingResponsibility 将通过检查的开关证据与理由列表为空、因而未通过 ValueProcedure 的 unsupportedPosition 组合起来。

**限度:** 空列表失败确立的是已记录程序责任的缺失，不是不存在充分价值理由。哪些方面实际适用仍是明确输入，需要忠于来源的判断。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

[声明、证明与逐行解释](details.md#t16)


<a id="t17"></a>
## T17 · 清晰表达、重复与断言仍可能不足

在明确反例中，表述、重复的无关观测、与理论相容及自我断言，都不能确立更强的主张。非空公告可以与真实预算违规并存。

**前提与表示:** 实例区分可观测温度与另一输出，以及被观测的选择与可用预算。预算模型评估成本为 3 的同一采纳选项；起点假设固定选择而不保证预算。真实的启动公告与预算为 0 相容。

**证明或检查:** articulationNotSupport 提供非空但无信息的表述；measurementRepeatNotSupport 在重复同一真实测试后仍保留反世界；compatibilityNotEntailment 区分已有共同模型与不成立的全称后果；selfAssertionNotReason 同时包含理由缺失与非空公告实例，后者虽可共同采纳，实际成本却超过预算。

**限度:** 这些是特定主张与依据的失败，不是否定表述、重复或相容性的价值。理由缺失分支属于程序结果；预算分支另在其选定的目标与约束适配器内提供实质反例。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

[声明、证明与逐行解释](details.md#t17)


<a id="t18"></a>
## T18 · 被采纳的价值立场与联合理由

价值评估程序可以从可满足、但不能由空理论推出的采纳起点得到履行。多条理由可以共同支持所采纳选项的真实后果，即使每条理由单独均不充分。

**前提与表示:** ValueProcedure 要求非空且按选项索引的理由；存在一个同时满足起点假设、限度、采纳和全部理由的世界；在起点与限度内，理由合取支持该选项的目标和约束；并对相关批评给出非空回应。这些是明确的“选项—后果”评估条件。

**证明或检查:** valueWithoutSelfProof 构造有收益的开启选项，证明其起点理论可满足且承诺不由 emptyTheory 蕴含，并排除相反、矛盾及无法采纳的变体。heterogeneousReasons 包含真实的经验、推论与价值实例，以及收益为 4、成本至多为 3 的实例：理由合取通过，而世界 (4,5) 与 (0,3) 分别否定单条理由的充分性。

**限度:** 该程序检查已说明的应用适配器，不确立终极价值正当性，也不把演绎形式规定为所有价值理由的必需形式。回应字符串表示已记录回应，不证明回答令人信服；未由自身推得的起点有别于不一致起点。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

[声明、证明与逐行解释](details.md#t18)


<a id="t19"></a>
## T19 · 局部证据与被遗漏的差异

在已观测输入上的一致可以掩盖其他位置的差异，因此针对特定输入的证据不足以支持全称主张。

**前提与表示:** 世界为自然数输入上的布尔值函数。zeroRecord 只观测输入 0 返回 true；比较对象为恒真函数与 localGenerator 0。

**证明或检查:** localNotUniversal 保留 localGenerator 0 作为否定 allTrue 的记录相容反世界；hiddenDifference 证明在 n = 0 范围内一致，并计算 n = 1 处的不同输出。

**限度:** 结论针对所述观测范围，不排除利用额外前提作出有理由的推广，也不建立一般统计推断规则。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

[声明、证明与逐行解释](details.md#t19)


<a id="t20"></a>
## T20 · 观察、复现与稳定性

单次观测无需重复即可支持有界主张；有效的推论评估也可以完全不使用观测。记录准确性、条件复现与结论稳定性彼此不同，不同结果仍可保持同一界限。

**前提与表示:** 观测仅涉及输入 0；非观测方面以 n = 2 为假设，得出 n + 1 = 3。Trial 明确区分 setting、actualOutcome 与 recordedOutcome；Verified 比较实际值与记录值，Reproduced 比较设置，Bounded 表示实际结果至多为 2。

**证明或检查:** singleObservation 证明局部支持并否定 allTrue；noUniversalChain 提供无需观测且通过检查的算术方面；variableOutcomesStableBound 使用设置为 0、实际结果为 1 和 2 的实例；verificationReproductionStability 分别提供设置变化、记录不准确及超出界限的实例。

**限度:** 这是有限的可能试次模型，不是概率定理、经验复现研究或未来运行保证；它仅在所表示的评估接口内否定普遍必需的观测链条。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

[声明、证明与逐行解释](details.md#t20)


<a id="t21"></a>
## T21 · 能力契约与外部评估

同一 Process 的正确输出与解释契约彼此不同。只要求输出与要求解释的应用分别具有真实且限定对象的依据；外部评估者可以在过程不提供内部解释时认证前者。复制库存不会增加被表示的操作。

**前提与表示:** OutputContract 要求每个自然数输入均输出 n + n；ExplanationContract 要求提供一个 Program，其在每个输入上的计算等于同一过程的输出。processScope 用相等关系固定受评过程；规范表述与方面使用同一范围和契约。ExternalCertificate 以实际过程为索引，并区分评估者 42 与受评参与者 7。

**证明或检查:** 具体计算证明两个过程都将输入加倍；outputOnlyProcess 的解释为 none，explainedProcess 则提供 doubleInput。同一只输出过程在其非空对象范围中否定更强的完整契约。externalAssessment 构造完整输出证明，而不是假定其真实性；inventoryNotCapability 证明复制不改变可用操作的成员关系。

**限度:** 这些算术契约是应用选择，不是能力或理解的普遍定义。解释契约针对明确证书，不涉及未观测的心智理解；外部参与者标识不确立现实来源。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

[声明、证明与逐行解释](details.md#t21)


<a id="t22"></a>
## T22 · 相关实现理由

地位本身不能满足被表示的实现选择规范；一个既有且惯常的实现，在实际行为提供相关理由并满足要求时，可以满足该规范。

**前提与表示:** JustifiedChoice 要求可行性及列表中存在 Relevant 理由。被采纳的 Relevant 定义排除地位理由，并按要求检查实际方法内容。具体恒等应用要求恒等输出、预算为 1，并接纳输出理由。

**证明或检查:** statusOnlyFails 对任意要求、实现与地位理由展开地位分支；conventionWithReason 检验惯常且已确立的恒等实现，并构造基于输出的选择理由。

**限度:** 这种排除是明确采纳的选择规范，不是价值中立的定理。实例既不拒绝所有既有实现，也不证明所选要求普遍充分。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2)

[声明、证明与逐行解释](details.md#t22)


<a id="t23"></a>
## T23 · 准确审查不自动施加额外选择规范

两个独立规定的选择政策完成同一个准确的、否定地位优先权的审查，却在额外选择规范上不同：仅凭地位的政策失败，使用输出理由的政策通过。

**前提与表示:** 两个政策都选择 identity，共享真实的惯常与既有地位事实、这些事实是否蕴含 identity 优先权这一准确问题，以及 false 报告。变化的仅为 priorityReasons。GeneralAssessmentFulfilled 登记表述与准确完成该审查；AdditionalChoiceNorm 单独检查 JustifiedChoice。

**证明或检查:** generalGroundsNotChoice 保留地位非蕴含的反模型，并包含 PolicyIndependenceExample。successor 解释满足相同地位事实却否定优先权；随后 statusOnlyFails 与 identityJustified 在不改变该审查的情况下确立相反的政策结果。

**限度:** 该结果针对所规定评估程序的履行，不是完整的哲学 Grounds。继续凭未获支持的地位赋予优先权，也可能违反一般支持比例要求；本定理不否认这一点，也不证明选择规范独立于所有核心义务。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t23)


<a id="t24"></a>
## T24 · 开放不蕴含等价或多个可行方案

开放的选择情境中，被表示的候选仍可能只有一个可行。局部一致不使实现等价；当必需输出错误时，合格的内部方法理由也未必足以支持选择。

**前提与表示:** 候选类型包含 identity 与 successor，按恒等输出和预算 1 评估。相关内部理由由 Requirements.values 选定，并检查忠实解释、适用性、成本或过程。另一个便宜的后继实现成本为 1，却仍返回 n + 1。

**证明或检查:** singleFeasible 确定唯一可行候选；localNotGlobal 对照 0 处一致与 1 处不同；internalReasons 验证 identity 的四类真实理由，并包含便宜却错误的反例；openNotEquivalent 保留有理由的恒等选择，同时证明其输出不同于 successor。

**限度:** 唯一性相对于这两个候选及所述要求成立。理由相关不等于充分可行；开放性不蕴含价值相同、必须多选或拒绝既有选项。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.grounds.implementations.limits#p1](#source-organon-grounds-implementations-limits-p1)

[声明、证明与逐行解释](details.md#t24)


<a id="t25"></a>
## T25 · 同一系统中的相互应用

共享系统在已报告修订中保持一致，承载自有评估工作及自身能力依据，评估自身的一般依据供给规则，并通过相关提案判断而非地位来评价其当前哲学方法。

**前提与表示:** 实例使用 actualSystem 与 actual。修订理论增加同一方法在输入 0 处的事实，并改变修订身份。GroundsProvision 在 apply/waive 许可下，对任意已表示主张与方面组合量化。当前哲学方法共享系统的原则形式与治理模式，并按两个指定提案输入评估。

**证明或检查:** revisionKeepsConsistency 复用同一可接受见证并排除虚假变更报告；ownCapabilityGrounded 组合自有评估工作与匹配的输出依据；groundsSelfAssessment 通过依据承诺的真实接受、拒绝后果及相关批评，评估一般供给规则；existingPhilosophyNotPrivileged 证明该实际方法接受有效提案、拒绝便宜却错误的提案、不能仅凭地位获准，却可得到基于输出的选择理由。

**限度:** 这些是针对一个系统构造的结果。自有评估工作与能力依据是分别检查的组件，并不声称一条工作记录包含全部能力证明。经典逻辑判定定义是数学装置；价值适配器不确立该哲学的终极正当性。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t25)


<a id="t26"></a>
## T26 · 不同承诺及其组合

仅有生成性取向不保证 Reflexive 工作；满足章程的系统仍可能为自身能力提交不足的证据。共享见证还证明被表示的各项承诺可以共同满足。

**前提与表示:** 第一个反例组合 openPolicy 与空工作列表，却确有适用的系统评估义务。第二个保留 actualSystem、actual 及其章程，却以真实的成本许可证据支持输出能力主张。jointWitness 使用匹配的能力证据与完整自有工作。

**证明或检查:** generationNotReflexivity 从假定的 Reflexive 证明中推出实际上缺失的适用工作；charterNotGrounds 保留与成本记录相容但输出错误的世界；jointWitness 提供同一实际对象对，满足可接受性、章程、能力责任、有理由的选择及每项承诺的依据。

**限度:** 这些结果确立所述区分与共同可满足性，不证明所有承诺完整的两两逻辑独立、优先级层次，也不自动为满足章程的每项主张提供依据。

**状态:** accepted (nonentailment). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t26)


<a id="t27"></a>
## T27 · 应用责任与分别给出的理由

满足已采纳 ApplicationDuties 的应用，保留 Reflexive 工作，以及针对自身契约主张的全部实际适用且正确表述的依据。共享的五项承诺各自具有匹配价值依据、共同采纳见证与相关批评，而其 waive 变体未通过所选程序。 在已登记的变化案例中，同一证据仍支持恒等契约，但不支持改后的后继契约。

**前提与表示:** applicationRetainsDuties 接受 System、World、Requirements、任意契约、按方面索引的表述、适用性谓词与方面列表，并假定这些确切参数满足 ApplicationDuties。reasonsBelongToCommitments 接受生成性、一致性、反身性、依据或选择中的一项；每个立场共享治理选择，却各自具有真实后果、理由、约束与批评。

**证明或检查:** 应用定理提取已假定的义务，包括各列出方面的同一主张等式与 FacetArticulated；承诺定理按各方面的原有内容构造表述，建立相应依据与共同见证，检查非空泛的批评条件，并以真实操作扩展、矛盾处理、自测覆盖、证据接受与实现判断比较 apply 和 waive。 补充案例 applicationVariation 固定系统与观察：恒等契约具有匹配依据，后继契约则在实际输入 0 处失败，其尝试使用的经验方面也被拒绝。

**限度:** 一般应用结果不证明任意应用合规。五组理由分别属于同一选项与后果适配器中的不同承诺立场；这些检查不从事实推导规范权威，也不证明所有可能价值理由都在演绎上充分。

**状态:** accepted (theorem). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

[声明、证明与逐行解释](details.md#t27)


<a id="t28"></a>
## T28 · 无需观测测试的评估

匹配的推论评估可以无需观测测试而具有 Grounds；另一个适用的经验方面仍使用观测。

**前提与表示:** 推论方面明确假定 n = 2 并得出 n + 1 = 3，具有规范表述与非空模型；经验对照为真实开关观测方面，usesObservation 按方面形式分类。

**证明或检查:** nonExecutableAssessment 根据可满足前提与语义蕴含构造算术主张的 Grounds，证明此处 usesObservation 为 false，并包含已通过检查且 usesObservation 为 true 的经验开关方面。

**限度:** 该定理区分评估与观测测试，不证明该算术推理不可计算，不分类所有不可执行方法，也不免除适用的经验责任。

**状态:** accepted (satisfiability). 这是该冻结目标的审查结果，不提升为整段来源的完整证明。

**来源:** [organon.relationships.terms#p1](#source-organon-relationships-terms-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

[声明、证明与逐行解释](details.md#t28)


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

