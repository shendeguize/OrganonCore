# Public review record

This is a path-redacted export of a retained review, not a new blind assessment. The initial records precede candidate comparison; later code/source updates are explicitly informed. Original SHA256: `37695a48276f635e264f19ccc07bef559600946518835eef37029ab18c7b3a1d`. Only machine paths and private-location links were removed.

# 原文初评与已披露编码比较

日期：2026-09-13。比较者：reader_source_initial。本轮是在source-initial.md和source-inventory.json冻结后进行的知情比较；不修改两份初评文件。基线仍为Core 0.1.3英文正本及当前rationale。已读取两个run.json、两个完整Lean源文件、encoding-preregistration.md，以及两份entry-data的全部映射条目。输入hash单独保存在comparison-input-hashes.json。

## 判断

16个已映射源子句中，12项支持有限对应（partial），4项拒绝当前对应（rejected）。另记录15项实质未编码内容为pending，108项结构或表格角色/名称为not_applicable。无full判断。mapped-judgments.json提供逐项英文及中文理由，id使用clause_id；clause=null则使用entry_id。未列出的实质主张应由汇总者明确标为pending并说明没有编码，不能因为条目缺席视为通过。

构建与依赖审计通过是调用者披露的机械结果；本轮未重复构建。所有保真判断来自实际定义、完整定理陈述与源文对应，不来自build状态。没有把未建模判为哲学缺陷。

## 四项当前对应应撤回或修订

1. c-89-c2：ObservationComplete只表示列表覆盖全部自然数，不含观测结果、主张、根据和支持关系。因此observation_gap及真假结论并列定理均不能表示“根据支持与主张强度/范围相称”。尤其真结论n+0=n已有独立证明，不能因列表未覆盖全部自然数称它支持不足；反过来只有输入覆盖也不保证观测内容为真或相关。预注册的“coverage sufficiency criterion”并未以证据与结论的关系实现，而且若被视为一般充分支持会改变原义。最小修正是撤回这四项对c-89-c2的映射，保留未映射的算术/覆盖示例；若要重新映射，需要明确的仅凭观测记录的蕴涵模型及额外假设，不能以名称补足。
2. c-94-c3：unrelated_grounds_rejected仅因bothExamined要求grounds=3而拒绝4，证明的是记录编号不匹配。它没有实现“考察那些根据是否支持相应主张”。允许examined作为外部关系的条件化接口，不等于具体编号等式已经有考察语义。应撤回对这句实质考察责任的映射，保留编号完整性探针。c-94-c5/c6可保留为条件化责任分配和分类标签无免责效力的有限接口。
3. c-83-c2：self_assessment_not_correctness是样本1通过、输入0失败的局部测试反例。没有系统、它的评估原则或将同一评估原则用于自身的行为；selfAssessmentSamples只是名称。应撤回当前自评对应，或建立有解释依据的自评对象与行为实例。这个算术结果可有限说明局部通过不能保证普遍正确，但后者不等同于原文的反身对象关系。
4. r-121-c4：invalidation_restores_fixture修改了实现，令acknowledged与cached同步；原文此句说修订评估方法，比较两个候选的update–read序列并保留静态案例。不能把修复实现当成修订评估方法。最小修正是将映射改为实际update_read_counterexample加original_comparison/unchanged_update_retained，并仍标partial；正向失效更新实例可保留为额外候选示例，不能凭它证明测试集合保留或评估流程已形式化。

## 有限成立之处及保留界限

- 实际类型叫Aspect，具有empirical/inferential/value三个构造子，源码没有Kind声明。这是应用预设分类而非完整认识论分类的证明。Duties保留同一claim/grounds对及每个实际适用面的责任；mixed_projection只是由已假设的Duties投影，不构成外部责任已履行的证据。bothExamined及empiricalOnly是编号/标签记录，未实现经验考察的不确定性、推论支持关系或价值批评责任。标签遗漏反例能说明该接口的责任不随labels变化，不能证明真实适用分类已穷尽。
- Consistent的整个held列表可产生联合后果，p/pImpliesQ/notQ确实触发一个context的正反结论；撤回及不同context示例提供有限对应。context把问题/假设/含义/范围折叠，推论关系是一个预设实例而非通用逻辑系统。ChangeReported只在实质撤回实例中对应明确；一般List不等会把重排或重复也视为变化，不能泛称语义变化判定器。
- R1：namedUniversalTruth明确为h:P推出P，不是无条件普遍真理。0≤1与被2反驳的∀n,n≤1构成条件/量词改变的具体反例，支持“证明这个陈述不能自动建立另一个陈述”的有限说明。different_statement_refuted确实断言这个选定更强命题为假；这可以是具体见证，但中文英文解释均须避免提升为“凡对应失败，散文主张必假”。未编码一般证明可靠性、任意编码对应或哲学承诺的真假。r-77-c1与c4仍未映射。
- 软件初态10/10、预算6下时延5/2均合格；updateOnly改为11后缓存仍10，直接读取11。它们实现源案例的一个明确反例，未建模真实时延、并发或全部故障。budget3是另一情境，预算定理仅覆盖r-119-c2合取义务的时延部分，新鲜度责任仍未表达。
- 当前rationale.L120（r-120-c2至c6）没有任何声明映射，旧method-stage对应已撤回；这是正确保留缺口。此处的Grounds/Consistency/Reflexivity/可审查性推论不能由算术状态定理替代。r-119-c1与r-120-c1等“Additional premises”“Inference”只是表格角色，已标not_applicable。

## 范围与自检

本轮对所有16个已映射子句逐项检查了实际声明；未宣称全部未映射子句已做同等深度编码评审。结构、表格角色名称与实质论断分开，源文仍完整保留。模型失败不改写原文；既有初评与hash不变。判断标准没有因作者声明“checked”或“limited”而降低，partial也不意味着完整子句已被证明。有限接口可作为可读实例；错误的直接对应应修正而不是仅靠总体免责声明稀释。

没有必要递归委派或重跑相同构建。后续仅需比较有实质变化的映射/编码和文稿陈述，并分别保留原判与新判。未执行维护文件修改或哲学采用。
