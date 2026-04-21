# 章节控制卡 (Chapter Control Card)

每章起草前先生成这一张卡。

每章接受后，将控制卡保存到 `control-cards/NN-<chapter-title>-control-card.md`。如果成稿标题发生变化，要在同一次回写里重命名控制卡，使其与 `chapters/` 里的接受稿一致。

```markdown
# 章节控制卡

## 章节身份
- chapter:
- mode:
- point_of_view:
- primary_style:
- support_style:
- paragraph_mode:
- style_intensity:

## 本章任务
- core_goal:
- required_plotlines:
- required_prior_debts:

## 章节标题
- title_mode:
- title_system_reference:
- primary_title_job:
- secondary_title_job:
- title_anchor:
- title_candidates:
- working_title:
- spoiler_risk:
- final_title_recheck:

## 召回与返场压力
- retrieval_slice_targets:
- cold_lines_due:
- characters_due_for_return:
- relationships_due_for_bridge:
- foreshadows_due_or_overdue:
- world_rules_in_play:

## 冲突
- external_conflict:
- internal_conflict:
- relational_conflict:

## 人物使用
- appearing_characters:
- character_desires_this_chapter:
- character_concealments_this_chapter:
- protagonist_personality_trigger:
- character_increment:
- arc_progression_point:

## 伏笔
- new_plants:
- active_callbacks:
- blocked_reveals:

## 场景执行
- scene_pressure_shape:
- planned_unit_count:
- scene_units:
  - unit_label:
    - goal:
    - conflict:
    - turn_or_aftershock:
    - carryover:
  - add_more_if_needed:

## 主题压力
- human_truth_exposed:
- central_question_pressure:
- value_collision:
- social_or_era_pressure:
- motif_or_image_return:

## 风格执行
- internalized_strengths:
- active_style_drivers:
- primary_style_payoff:
- support_style_payoff:
- paragraph_override_reason:
- paragraph_rhythm_task:
- short_paragraph_license:
- pseudo_style_to_avoid:
- required_effects:
- optional_effects:
- forbidden_drift:
- language_signature_task:
    # 填三个具体项：
    # 1. 本章视角人物的感知习惯，要具体到这个人，不要写“细腻”这类泛词
    # 2. 场景中已经存在、能承担压力的物质细节，不要写“这里需要一个细节”
    # 3. 本章禁用的比喻/拟人类型，例如“不要把地点拟人成身体器官”“不要使用通用 mood 比喻”
- dialogue_task:
- suspense_task:
- structure_task:
- authenticity_focus:
    # 填两个具体项：
    # 1. 本章情绪色彩的承载方式，从 action / choice / physical_detail / dialogue_rhythm / silence 中选
    #    不要靠比喻或内心总结直接命名情绪
    # 2. 本章最容易出现的模块化语言风险，要点明具体句式或模式
- hook_type:
- closure_type:
- theme_landing_action:

## 风险扫描
- missing_information:
- conflicts_found:
- continuity_risks:
- forgotten_element_risk:
- trope_convenience_risk:
- user_branch:

## 基准检查
- benchmark_group:
- hard_gates:
- down_weighted_checks:
- authenticity_risk:
- failed_dimensions:
- rewrite_direction_if_failed:

## 马拉松控制
- marathon_mode:
- next_line_auto_entry:

## 章尾钩子
- chapter_end_hook:
```

最低标准：

- 多数章节至少推进一项主要义务；安静过桥章也必须加深代价、重摆某条线，或让旧债更沉
- 多数章节至少带出一笔情绪债或结构债，除非它明确是在收束一个阶段
- 只要项目有高密度返场，控制卡就必须写明召回与返场压力
- 每章都要暴露一种人的压力，不能只有章节调度
- 每章要么明确场景推进，要么说明为什么本章故意采用更松的结构
- 场景单元数量服从章节需要，不为凑数硬拆
- 每章要说明基准期待如何被满足、软化或有意降权
- 对话、悬念或结构压力活跃时，必须写明对应任务
- 文字容易泛化时，必须写明真实感校正重点
- 段落模式默认继承 `09-style-guide.md`；若本章覆盖，必须写理由
- 在 `web-serial-natural` 下，叙述段通常 `2-4` 句；单句段必须有真实压力任务，不要堆叠成习惯
- 段落断开应服务说话人变化、时空/视角变化或压力转折，而不是装饰空白
- 风格压力明显时，控制卡要点名 `1-2` 个活跃风格驱动，不要只写抽象形容词
- 过桥、恢复或安静摆位章节可以降低风格强度，但仍要保留风格连续性
- 如果主风格或副风格处于活跃状态，控制卡要写明本章想交付的效果，以及要避开的伪风格漂移
- 如果项目使用章节标题，每张控制卡都要生成 `3-5` 个候选，并选择一个工作标题
- 标题要提示压力、方位或余味，不要总结整章事件链
- 如果成稿真正中心发生移动，工作标题可以改
- 每个钩子都必须接在已有线上，不能靠随机惊吓
