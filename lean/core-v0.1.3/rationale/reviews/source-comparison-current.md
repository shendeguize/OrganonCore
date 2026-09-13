# Public review record

This is a path-redacted export of a retained review, not a new blind assessment. The initial records precede candidate comparison; later code/source updates are explicitly informed. Original SHA256: `cb99ad55a0e4dad0f45f74ef91d279313333a2571a48e0d3856670ad2734272b`. Only machine paths and private-location links were removed.

# 第二轮：两个修订对应的独立复评

日期：2026-09-13。仅复评c-83-c2和r-121-c4；旧初评、第一轮比较及其四项拒绝判断全部保留，不改写历史。本轮两个新版本均判断partial，详见mapped-judgments-round2.json中的逐条双语理由。c-89-c2和c-94-c3没有修正相关语义，继续rejected。

## 新证据与判断变化

c-83-c2：SelfAssessingSystem现在实际持有ownPrinciple和samples，runOwnAssessment确实计算同一所属谓词在自身样本上的结果。sampleSystem的[1]通过而0反驳其普遍正确，原先“只有名称、没有对象所属关系与实际考察”的缺口已在这个狭窄解释中补足。因此由rejected改为partial。仍没有形成/修订、适用条件、对评估规则本身的评估或全部反身性；不能从这个实例宣称任何自评都失败或自评永远不能支持正确结论。

r-121-c4：删除updateInvalidating实现修复示例，新增originalStates/revisedStates和实际compareReads。direct与cachedRead不变，修订的是比较状态集合，结果保留(10,10)并加入(11,10)，与本句的评估范围修订有直接有限对应。因此由rejected改为partial。它只是一个静态案例与一个变化案例，未建模一般测试运行器、任意序列、并发或所有回归案例。

## 自选实际边界变体

所有源码快照、探针、完整重跑命令、首次失败和实际输出保存在reader-round2-probes/。不是仅列计划或手动推断。

1. Core：把samples改为空列表，runOwnAssessment返回true，但所属谓词仍在0处为假；把samples改为[1,0]返回false；另建恒真所属谓词，测试返回true且能证明全部输入正确。四个实际输出为(true,true,false,true)，顺序为空样本、原实例、含反例样本、恒真原则。通过可以空泛，也可以与错误或正确并存，是否有实质支持仍需要解释采样和主张范围。
2. Rationale：compareReads在空状态列表输出[]，仅initial输出[(10,10)]，加入updateOnly initial 10仍只有相同对，真实revisedStates输出[(10,10),(11,10)]。另实际证明initial属于revisedStates。评估修订的可见贡献依赖加入相关变化，不由列表更长或“revised”名称保证。

这些边界不要求扩大公布模型。它们要求公布措辞保留“选定非空实例”“加入11这一相关变化”“有限反例/有限比较”，不把样本通过说成完整自评能力，也不把任意新增案例说成改进。

## 实际运行与限制

首次尝试在两个工程执行lake env lean并导入模块，均因工程搜索路径无对应olean返回1；Lake同时自动创建了此前不存在的lake-manifest.json。未假装首次运行通过。随后将所读完整源码快照与探针体拼接成两个独立Lean文件，使用固定Lean4.33.1二进制检查，均返回0并输出上述结果。这同时检查了源声明与新探针，无需依赖一个未知的新旧构建产物。实际结果含恢复过程和快照hash。

本轮未修改维护源码、run.json、原初评或第一轮判断。除Lake自动生成manifest外，新增文件仅在忽略的P下。无需重复已通过探针；后续若文稿宣称超出上述范围，应作为新的具体措辞/对应问题审查。没有full判断或哲学正确性认证。
