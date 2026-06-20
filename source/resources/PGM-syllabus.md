---
title: resources
date: false
layout: "page"
type: "resources"
hide: false
---


# 概率论与随机过程  
**Probability Theory and Stochastic Process**

---

## 课程基本信息

- **课程代码**：PSYC1505  
- **课程性质**：专业必修课程  
- **学分 / 学时**：3 学分 / 54 学时  
- **开课单位**：心理与认知科学学院  
- **适用专业**：心理学 + 计算机 双学位  
- **授课语言**：中文  

---

## 上课安排

- **时间**：第 1–17 周，每周二 11–13 节
- **地点**：普陀校区 · 教书院 132  
- **开课时间**：2026 年 3 月 3 日  

---



## 课程时间表（Course Schedule）

| 周次 / 日期 | 主题 | 内容简介 | 作业及项目节点 |
| :--- | :--- | :--- | :--- |
| **第 1 周**<br>2026‑03‑03 | **概率表征 1** | 生成模型；先验、似然、后验；乘积法则、加法法则；归一化；贝叶斯更新。 | 启动项目分组与选题讨论 |
| **第 2 周**<br>2026‑03‑10 | 概率表征 2 | 有向无环图（DAG）；因子分解；Fork、Chain、Collider；d-分离；条件独立；马尔可夫毯。 | 确定项目分组名单 |
| **第 3 周**<br>2026‑03‑17 | 概率表征 3 | 马尔可夫网络；团势能；Gibbs 分布；因子图；Ising 模型；Boltzmann 机。 | **第一章结束** |
| **第 4 周**<br>2026‑03‑24 | **概率推断算法 1** | 变量消去；边缘化；MAP 推断；Sum-product 消息传递；多感觉线索整合。 | 📍 **交作业 1** |
| **第 5 周**<br>2026‑03‑31 | 概率推断算法 2 | Max-product；Loopy BP；Junction tree；Separator 一致性；Predictive Coding。 | **第二章结束** |
| **第 6 周**<br>2026‑04‑07 | **概率学习 1** | 最大似然估计（MLE）；充分统计量；熵；KL 散度；指数族分布。 | |
| **第 7 周**<br>2026‑04‑14 | 概率学习 2 | 学习即推断；Beta-Bernoulli 共轭；MLE vs MAP；Occam 因子；模型比较。 | |
| **第 8 周**<br>2026‑04‑21 | 概率学习 3 | 隐变量；边缘似然；EM 算法（E 步、M 步）；Jensen 不等式；ELBO；GMM。 | **第三章结束** |
| **第 9 周**<br>2026‑04‑28 | **概率时序模型 1** | 马尔可夫假设；HMM（初始分布、转移矩阵、发射分布）；前向滤波；统计词切分。 | 📊 **数据发放**：发放实验室采集的认知科学实验行为序列数据集 |
| **第 10 周**<br>2026‑05‑05 | 概率时序模型 2 | 前向-后向算法；Viterbi 算法；Baum-Welch；事件分割 HMM。 | 📍 **交作业 2**（涵盖概率推断算法 + 概率学习） |
| **第 11 周**<br>2026‑05‑12 | 概率时序模型 3 | 线性动力系统（LDS）；卡尔曼滤波；卡尔曼增益；RTS 平滑；运动控制与预测编码。 | **第四章结束** |
| **第 12 周**<br>2026‑05‑19 | **项目开题** | 各组轮流汇报选题与建模计划：数据理解、PGM 结构选择、参数学习方案，教师与同学现场提问与建议。 | 🎯 **项目开题汇报** |
| **第 13 周**<br>2026‑05‑26 | **近似推断 1** | 蒙特卡洛近似；逆函数采样；拒绝采样；重要性采样；权重退化；神经采样假说。 | 📍 **交作业 3**（涵盖概率时序模型） |
| **第 14 周**<br>2026‑06‑02 | 近似推断 2 | Gibbs 采样；Metropolis-Hastings；平稳分布；混合时间；MCMCP；粒子滤波。 | |
| **第 15 周**<br>2026‑06‑09 | 近似推断 3 | 变分推断；KL 散度最小化；ELBO；拉普拉斯近似；自由能原理（FEP）；主动推断（Active Inference）。 | |
| **第 16 周**<br>2026‑06‑16 | 近似推断 4 · 课程收束 | 平均场近似；平均场迭代更新；社交网络 Ising 去噪实验；课程知识图谱串联；期末项目答疑。 | |
| **第 17 周**<br>2026‑06‑23 | 期末项目汇报 | 分组汇报：每组 **10 分钟展示 + 2 分钟 Q&A**。重点展示如何利用概率图模型对认知科学实验行为数据进行建模、推断与解释。 | 📍 **交作业 4**（涵盖近似推断）；📍 **提交汇报 PPT 与完整代码** |
| **第 18 周**<br>2026‑06‑30 | — | — | 📍 **提交期末项目报告（PDF）** |


---

## 课堂互动演示（Interactive Demos）

以下演示配合各章教学内容，均基于真实心理学实验设计，可在浏览器中直接运行。完整演示列表见 [Resources 页面](https://qyanglab.github.io/resources)。

### 第一章：概率表征（第 1–3 周）

- [基率忽视 — 贝叶斯诊断](https://qyanglab.github.io/showcase/ch1_demo3_bayes_evidence.html)（Kahneman & Tversky 经典实验：人类如何系统性忽视先验概率）
- [Gopnik Blicket Detector — 儿童因果学习](https://qyanglab.github.io/showcase/ch2_demo1_bn_factorization.html)（Gopnik 发展心理学实验：幼儿如何从观测中推断因果结构）
- [Boltzmann 联想记忆](https://qyanglab.github.io/showcase/ch3_demo3_boltzmann_memory.html)（联想记忆网络：噪声输入的模式补全）
- [Ising 视觉去噪](https://qyanglab.github.io/showcase/ch3_demo4_ising_denoising.html)（MRF 能量最小化：像素级感知补全）

### 第二章：概率推断算法（第 4–5 周）

- [多感觉线索整合 — Sum-Product](https://qyanglab.github.io/showcase/ch4_demo2_cue_integration.html)（Ernst & Banks 2002 视触整合：信念传播的直接心理学实现）
- [Predictive Coding 层级消息传递](https://qyanglab.github.io/showcase/ch4_demo1_predictive_coding.html)（Rao & Ballard 预测编码：大脑作为层级贝叶斯推断机器）

### 第三章：概率学习（第 6–8 周）

- [Rescorla-Wagner vs 贝叶斯 Cue Learning](https://qyanglab.github.io/showcase/ch7_demo1_rw_bayesian_learning.html)（经典条件反射模型与贝叶斯学习的直接对比）
- [Xu & Tenenbaum 强抽样概念学习](https://qyanglab.github.io/showcase/ch7_demo2_concept_learning.html)（认知科学中最具影响力的贝叶斯概念学习实验复现）
- [语音音素 GMM 类别学习](https://qyanglab.github.io/showcase/ch8_demo2_phoneme_gmm.html)（语言感知的 EM 模型：音素范畴作为混合高斯分布）

### 第四章：概率时序模型（第 9–11 周）

- [Saffran 统计词切分](https://qyanglab.github.io/showcase/ch10_demo1_saffran_segmentation.html)（Saffran 1996 婴儿统计学习：转移概率驱动语言习得）
- [事件分割 HMM](https://qyanglab.github.io/showcase/ch10_demo4_event_segmentation.html)（Zacks 事件边界感知：HMM 对日常活动分段的建模）
- [Wolpert 运动控制 Kalman 滤波](https://qyanglab.github.io/showcase/ch11_demo1_wolpert_motor.html)（小脑前馈模型：卡尔曼增益与感觉线索可靠性）
- [Shadmehr 运动适应](https://qyanglab.github.io/showcase/ch11_demo3_shadmehr_adaptation.html)（力场适应实验：运动预测误差驱动内部模型更新）

### 第五章：近似推断（第 13–16 周）

- [Necker 立方体 MH 采样](https://qyanglab.github.io/showcase/ch12_demo8_necker_mh.html)（双稳态视觉感知的 MCMC 解释：感知切换即马尔可夫跳转）
- [MCMCP 形状空间](https://qyanglab.github.io/showcase/ch12_demo9_mcmcp_shape.html)（Sanborn & Griffiths 实验：人类相似性判断即 MCMC 采样）
- [先验、似然、后验与 ELBO 匹配](https://qyanglab.github.io/showcase/ch13_demo2_elbo_posterior_matching.html)（自由能原理可视化：变分推断与大脑最小化自由能）
- [平均场社交去噪](https://qyanglab.github.io/showcase/ch13_demo5_human_mean_field_classroom.html)（课堂社交网络的 Ising 平均场推断）

---

## 课程作业说明

本课程设四次个人作业，采用统一 LaTeX 模板提交，每次不超过 8 页。

**作业的核心结构是一个科学问题**：

1. **科学问题**：聚焦某一具体认知现象或推理任务，明确说明想解释什么。问题应当足够具体，能够与某类 PGM 结构（贝叶斯网、马尔可夫网、HMM 等）直接对应，避免泛泛的问题（如"人是不是贝叶斯的？"）。
2. **重要性**：说明该问题的科学价值——它为什么有趣，对理解人类认知或行为有何意义。
3. **方法**：二选一——**A. 行为实验设计**（参与者、任务、自变量、因变量、模型预测，以及对应的 PGM 变量、图结构、推断算法）；**B. 理论推导 / 仿真**（公式推导、证明大纲或具体算例）。
4. **讨论**：总结问题与方案，联系教材（BRML）相关章节，列出参考文献，讨论模型的假设与局限。

**为什么这样设计**：概率图模型不是一套纯数学工具，它的力量在于能够为认知科学问题提供精确的形式化语言。每次作业要求学生以"提出一个科学问题"为起点，而不是"复述一个算法"，目的是训练从现象到模型的建模能力——先搞清楚想解释什么，再决定用什么图结构、什么推断算法。这与认知科学研究的实际工作流程一致：从行为现象出发，构造生成模型，再用数据反推隐藏的心理机制。

**评分维度**：问题清晰度（15）、动机与重要性（10）、与课程内容的联系（20）、建模质量（25）、推理深度（20）、原创性（10）。

---

## 期末项目说明

**主题**：用概率图模型对认知科学实验行为数据进行建模与推断。

- **形式**：分组研究（4 人 / 组）
- **数据**：实验室采集的认知科学实验行为序列数据集（第 9 周发放）

**项目逻辑**：从真实行为数据出发，选择合适的 PGM 结构（HMM、LDS、贝叶斯网等），完成参数学习与推断，并对认知机制给出解释。项目的核心不是算法实现本身，而是**模型选择的理由**和**结果的认知科学解读**。

**项目报告结构**（PDF，参考作业模板扩展）：
1. **科学问题与假设**：选定的认知现象，对应的 PGM 结构选择理由。
2. **数据描述**：数据来源、变量定义、预处理方式。
3. **模型与算法**：图结构、参数学习方法、推断算法。
4. **结果与解读**：模型输出的认知科学含义，与已有文献的对照。
5. **讨论与局限**：假设是否合理，替代模型，未来方向。

**时间节点**：
- 第 12 周：开题汇报（各组上台，教师与同学现场提问，最高 +3 分）
- 第 17 周：分组 PK 汇报，每组 10 分钟展示 + 2 分钟 Q&A；提交 PPT 与完整代码
- 第 18 周：提交期末项目报告（PDF）

---
