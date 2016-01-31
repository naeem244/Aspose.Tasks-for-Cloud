module AsposeTasksCloud
  # 
  class Task < BaseObject
    attr_accessor :uid, :id, :name, :duration, :start, :finish, :percent_complete, :percent_work_complete, :is_active, :actual_cost, :actual_duration, :actual_finish, :actual_overtime_cost, :actual_overtime_work, :actual_start, :budget_work, :budget_cost, :constraint_date, :constraint_type, :contact, :cost, :cv, :deadline, :duration_variance, :early_finish, :early_start, :is_effort_driven, :is_external_task, :finish_slack, :finish_variance, :fixed_cost, :fixed_cost_accrual, :free_slack, :guid, :hide_bar, :ignore_resource_calendar, :late_finish, :late_start, :is_level_assignments, :can_leveling_split, :leveling_delay, :is_marked, :is_milestone, :is_critical, :is_subproject, :is_subproject_read_only, :subproject_name, :is_summary, :subtasks_uids, :outline_level, :is_over_allocated, :is_estimated, :overtime_cost, :overtime_work, :physical_percent_complete, :pre_leveled_finish, :pre_leveled_start, :is_recurring, :regular_work, :remaining_cost, :remaining_duration, :remaining_overtime_cost, :remaining_overtime_work, :remaining_work, :resume, :is_rollup, :start_slack, :start_variance, :calendar_uid, :is_manual, :total_slack, :type, :wbs, :priority, :work, :work_variance, :notes_text, :acwp, :bcws, :bcwp, :leveling_delay_format, :predecessors, :successors, :baseline_start, :baseline_finish, :baseline_duration, :baseline_fixed_cost, :baseline_duration_format, :baseline_estimated_duration, :baseline_work, :baseline_cost, :baseline_bcws, :baseline_bcwp, :baseline1_start, :baseline1_finish, :baseline1_duration, :baseline1_fixed_cost, :baseline1_duration_format, :baseline1_estimated_duration, :baseline1_work, :baseline1_cost, :baseline1_bcws, :baseline1_bcwp, :baseline2_start, :baseline2_finish, :baseline2_duration, :baseline2_fixed_cost, :baseline2_duration_format, :baseline2_estimated_duration, :baseline2_work, :baseline2_cost, :baseline2_bcws, :baseline2_bcwp, :baseline3_start, :baseline3_finish, :baseline3_duration, :baseline3_fixed_cost, :baseline3_duration_format, :baseline3_estimated_duration, :baseline3_work, :baseline3_cost, :baseline3_bcws, :baseline3_bcwp, :baseline4_start, :baseline4_finish, :baseline4_duration, :baseline4_fixed_cost, :baseline4_duration_format, :baseline4_estimated_duration, :baseline4_work, :baseline4_cost, :baseline4_bcws, :baseline4_bcwp, :baseline5_start, :baseline5_finish, :baseline5_duration, :baseline5_fixed_cost, :baseline5_duration_format, :baseline5_estimated_duration, :baseline5_work, :baseline5_cost, :baseline5_bcws, :baseline5_bcwp, :baseline6_start, :baseline6_finish, :baseline6_duration, :baseline6_fixed_cost, :baseline6_duration_format, :baseline6_estimated_duration, :baseline6_work, :baseline6_cost, :baseline6_bcws, :baseline6_bcwp, :baseline7_start, :baseline7_finish, :baseline7_duration, :baseline7_fixed_cost, :baseline7_duration_format, :baseline7_estimated_duration, :baseline7_work, :baseline7_cost, :baseline7_bcws, :baseline7_bcwp, :baseline8_start, :baseline8_finish, :baseline8_duration, :baseline8_fixed_cost, :baseline8_duration_format, :baseline8_estimated_duration, :baseline8_work, :baseline8_cost, :baseline8_bcws, :baseline8_bcwp, :baseline9_start, :baseline9_finish, :baseline9_duration, :baseline9_fixed_cost, :baseline9_duration_format, :baseline9_estimated_duration, :baseline9_work, :baseline9_cost, :baseline9_bcws, :baseline9_bcwp, :baseline10_start, :baseline10_finish, :baseline10_duration, :baseline10_fixed_cost, :baseline10_duration_format, :baseline_estimated10_duration, :baseline10_work, :baseline10_cost, :baseline10_bcws, :baseline10_bcwp, :extended_attributes, :outline_codes
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'id' => :'Id',
        
        # 
        :'name' => :'Name',
        
        # 
        :'duration' => :'Duration',
        
        # 
        :'start' => :'Start',
        
        # 
        :'finish' => :'Finish',
        
        # 
        :'percent_complete' => :'PercentComplete',
        
        # 
        :'percent_work_complete' => :'PercentWorkComplete',
        
        # 
        :'is_active' => :'IsActive',
        
        # 
        :'actual_cost' => :'ActualCost',
        
        # 
        :'actual_duration' => :'ActualDuration',
        
        # 
        :'actual_finish' => :'ActualFinish',
        
        # 
        :'actual_overtime_cost' => :'ActualOvertimeCost',
        
        # 
        :'actual_overtime_work' => :'ActualOvertimeWork',
        
        # 
        :'actual_start' => :'ActualStart',
        
        # 
        :'budget_work' => :'BudgetWork',
        
        # 
        :'budget_cost' => :'BudgetCost',
        
        # 
        :'constraint_date' => :'ConstraintDate',
        
        # 
        :'constraint_type' => :'ConstraintType',
        
        # 
        :'contact' => :'Contact',
        
        # 
        :'cost' => :'Cost',
        
        # 
        :'cv' => :'Cv',
        
        # 
        :'deadline' => :'Deadline',
        
        # 
        :'duration_variance' => :'DurationVariance',
        
        # 
        :'early_finish' => :'EarlyFinish',
        
        # 
        :'early_start' => :'EarlyStart',
        
        # 
        :'is_effort_driven' => :'IsEffortDriven',
        
        # 
        :'is_external_task' => :'IsExternalTask',
        
        # 
        :'finish_slack' => :'FinishSlack',
        
        # 
        :'finish_variance' => :'FinishVariance',
        
        # 
        :'fixed_cost' => :'FixedCost',
        
        # 
        :'fixed_cost_accrual' => :'FixedCostAccrual',
        
        # 
        :'free_slack' => :'FreeSlack',
        
        # 
        :'guid' => :'GUID',
        
        # 
        :'hide_bar' => :'HideBar',
        
        # 
        :'ignore_resource_calendar' => :'IgnoreResourceCalendar',
        
        # 
        :'late_finish' => :'LateFinish',
        
        # 
        :'late_start' => :'LateStart',
        
        # 
        :'is_level_assignments' => :'IsLevelAssignments',
        
        # 
        :'can_leveling_split' => :'CanLevelingSplit',
        
        # 
        :'leveling_delay' => :'LevelingDelay',
        
        # 
        :'is_marked' => :'IsMarked',
        
        # 
        :'is_milestone' => :'IsMilestone',
        
        # 
        :'is_critical' => :'IsCritical',
        
        # 
        :'is_subproject' => :'IsSubproject',
        
        # 
        :'is_subproject_read_only' => :'IsSubprojectReadOnly',
        
        # 
        :'subproject_name' => :'SubprojectName',
        
        # 
        :'is_summary' => :'IsSummary',
        
        # 
        :'subtasks_uids' => :'SubtasksUids',
        
        # 
        :'outline_level' => :'OutlineLevel',
        
        # 
        :'is_over_allocated' => :'IsOverAllocated',
        
        # 
        :'is_estimated' => :'IsEstimated',
        
        # 
        :'overtime_cost' => :'OvertimeCost',
        
        # 
        :'overtime_work' => :'OvertimeWork',
        
        # 
        :'physical_percent_complete' => :'PhysicalPercentComplete',
        
        # 
        :'pre_leveled_finish' => :'PreLeveledFinish',
        
        # 
        :'pre_leveled_start' => :'PreLeveledStart',
        
        # 
        :'is_recurring' => :'IsRecurring',
        
        # 
        :'regular_work' => :'RegularWork',
        
        # 
        :'remaining_cost' => :'RemainingCost',
        
        # 
        :'remaining_duration' => :'RemainingDuration',
        
        # 
        :'remaining_overtime_cost' => :'RemainingOvertimeCost',
        
        # 
        :'remaining_overtime_work' => :'RemainingOvertimeWork',
        
        # 
        :'remaining_work' => :'RemainingWork',
        
        # 
        :'resume' => :'Resume',
        
        # 
        :'is_rollup' => :'IsRollup',
        
        # 
        :'start_slack' => :'StartSlack',
        
        # 
        :'start_variance' => :'StartVariance',
        
        # 
        :'calendar_uid' => :'CalendarUid',
        
        # 
        :'is_manual' => :'IsManual',
        
        # 
        :'total_slack' => :'TotalSlack',
        
        # 
        :'type' => :'Type',
        
        # 
        :'wbs' => :'Wbs',
        
        # 
        :'priority' => :'Priority',
        
        # 
        :'work' => :'Work',
        
        # 
        :'work_variance' => :'WorkVariance',
        
        # 
        :'notes_text' => :'NotesText',
        
        # 
        :'acwp' => :'Acwp',
        
        # 
        :'bcws' => :'Bcws',
        
        # 
        :'bcwp' => :'Bcwp',
        
        # 
        :'leveling_delay_format' => :'LevelingDelayFormat',
        
        # 
        :'predecessors' => :'Predecessors',
        
        # 
        :'successors' => :'Successors',
        
        # 
        :'baseline_start' => :'BaselineStart',
        
        # 
        :'baseline_finish' => :'BaselineFinish',
        
        # 
        :'baseline_duration' => :'BaselineDuration',
        
        # 
        :'baseline_fixed_cost' => :'BaselineFixedCost',
        
        # 
        :'baseline_duration_format' => :'BaselineDurationFormat',
        
        # 
        :'baseline_estimated_duration' => :'BaselineEstimatedDuration',
        
        # 
        :'baseline_work' => :'BaselineWork',
        
        # 
        :'baseline_cost' => :'BaselineCost',
        
        # 
        :'baseline_bcws' => :'BaselineBcws',
        
        # 
        :'baseline_bcwp' => :'BaselineBcwp',
        
        # 
        :'baseline1_start' => :'Baseline1Start',
        
        # 
        :'baseline1_finish' => :'Baseline1Finish',
        
        # 
        :'baseline1_duration' => :'Baseline1Duration',
        
        # 
        :'baseline1_fixed_cost' => :'Baseline1FixedCost',
        
        # 
        :'baseline1_duration_format' => :'Baseline1DurationFormat',
        
        # 
        :'baseline1_estimated_duration' => :'Baseline1EstimatedDuration',
        
        # 
        :'baseline1_work' => :'Baseline1Work',
        
        # 
        :'baseline1_cost' => :'Baseline1Cost',
        
        # 
        :'baseline1_bcws' => :'Baseline1Bcws',
        
        # 
        :'baseline1_bcwp' => :'Baseline1Bcwp',
        
        # 
        :'baseline2_start' => :'Baseline2Start',
        
        # 
        :'baseline2_finish' => :'Baseline2Finish',
        
        # 
        :'baseline2_duration' => :'Baseline2Duration',
        
        # 
        :'baseline2_fixed_cost' => :'Baseline2FixedCost',
        
        # 
        :'baseline2_duration_format' => :'Baseline2DurationFormat',
        
        # 
        :'baseline2_estimated_duration' => :'Baseline2EstimatedDuration',
        
        # 
        :'baseline2_work' => :'Baseline2Work',
        
        # 
        :'baseline2_cost' => :'Baseline2Cost',
        
        # 
        :'baseline2_bcws' => :'Baseline2Bcws',
        
        # 
        :'baseline2_bcwp' => :'Baseline2Bcwp',
        
        # 
        :'baseline3_start' => :'Baseline3Start',
        
        # 
        :'baseline3_finish' => :'Baseline3Finish',
        
        # 
        :'baseline3_duration' => :'Baseline3Duration',
        
        # 
        :'baseline3_fixed_cost' => :'Baseline3FixedCost',
        
        # 
        :'baseline3_duration_format' => :'Baseline3DurationFormat',
        
        # 
        :'baseline3_estimated_duration' => :'Baseline3EstimatedDuration',
        
        # 
        :'baseline3_work' => :'Baseline3Work',
        
        # 
        :'baseline3_cost' => :'Baseline3Cost',
        
        # 
        :'baseline3_bcws' => :'Baseline3Bcws',
        
        # 
        :'baseline3_bcwp' => :'Baseline3Bcwp',
        
        # 
        :'baseline4_start' => :'Baseline4Start',
        
        # 
        :'baseline4_finish' => :'Baseline4Finish',
        
        # 
        :'baseline4_duration' => :'Baseline4Duration',
        
        # 
        :'baseline4_fixed_cost' => :'Baseline4FixedCost',
        
        # 
        :'baseline4_duration_format' => :'Baseline4DurationFormat',
        
        # 
        :'baseline4_estimated_duration' => :'Baseline4EstimatedDuration',
        
        # 
        :'baseline4_work' => :'Baseline4Work',
        
        # 
        :'baseline4_cost' => :'Baseline4Cost',
        
        # 
        :'baseline4_bcws' => :'Baseline4Bcws',
        
        # 
        :'baseline4_bcwp' => :'Baseline4Bcwp',
        
        # 
        :'baseline5_start' => :'Baseline5Start',
        
        # 
        :'baseline5_finish' => :'Baseline5Finish',
        
        # 
        :'baseline5_duration' => :'Baseline5Duration',
        
        # 
        :'baseline5_fixed_cost' => :'Baseline5FixedCost',
        
        # 
        :'baseline5_duration_format' => :'Baseline5DurationFormat',
        
        # 
        :'baseline5_estimated_duration' => :'Baseline5EstimatedDuration',
        
        # 
        :'baseline5_work' => :'Baseline5Work',
        
        # 
        :'baseline5_cost' => :'Baseline5Cost',
        
        # 
        :'baseline5_bcws' => :'Baseline5Bcws',
        
        # 
        :'baseline5_bcwp' => :'Baseline5Bcwp',
        
        # 
        :'baseline6_start' => :'Baseline6Start',
        
        # 
        :'baseline6_finish' => :'Baseline6Finish',
        
        # 
        :'baseline6_duration' => :'Baseline6Duration',
        
        # 
        :'baseline6_fixed_cost' => :'Baseline6FixedCost',
        
        # 
        :'baseline6_duration_format' => :'Baseline6DurationFormat',
        
        # 
        :'baseline6_estimated_duration' => :'Baseline6EstimatedDuration',
        
        # 
        :'baseline6_work' => :'Baseline6Work',
        
        # 
        :'baseline6_cost' => :'Baseline6Cost',
        
        # 
        :'baseline6_bcws' => :'Baseline6Bcws',
        
        # 
        :'baseline6_bcwp' => :'Baseline6Bcwp',
        
        # 
        :'baseline7_start' => :'Baseline7Start',
        
        # 
        :'baseline7_finish' => :'Baseline7Finish',
        
        # 
        :'baseline7_duration' => :'Baseline7Duration',
        
        # 
        :'baseline7_fixed_cost' => :'Baseline7FixedCost',
        
        # 
        :'baseline7_duration_format' => :'Baseline7DurationFormat',
        
        # 
        :'baseline7_estimated_duration' => :'Baseline7EstimatedDuration',
        
        # 
        :'baseline7_work' => :'Baseline7Work',
        
        # 
        :'baseline7_cost' => :'Baseline7Cost',
        
        # 
        :'baseline7_bcws' => :'Baseline7Bcws',
        
        # 
        :'baseline7_bcwp' => :'Baseline7Bcwp',
        
        # 
        :'baseline8_start' => :'Baseline8Start',
        
        # 
        :'baseline8_finish' => :'Baseline8Finish',
        
        # 
        :'baseline8_duration' => :'Baseline8Duration',
        
        # 
        :'baseline8_fixed_cost' => :'Baseline8FixedCost',
        
        # 
        :'baseline8_duration_format' => :'Baseline8DurationFormat',
        
        # 
        :'baseline8_estimated_duration' => :'Baseline8EstimatedDuration',
        
        # 
        :'baseline8_work' => :'Baseline8Work',
        
        # 
        :'baseline8_cost' => :'Baseline8Cost',
        
        # 
        :'baseline8_bcws' => :'Baseline8Bcws',
        
        # 
        :'baseline8_bcwp' => :'Baseline8Bcwp',
        
        # 
        :'baseline9_start' => :'Baseline9Start',
        
        # 
        :'baseline9_finish' => :'Baseline9Finish',
        
        # 
        :'baseline9_duration' => :'Baseline9Duration',
        
        # 
        :'baseline9_fixed_cost' => :'Baseline9FixedCost',
        
        # 
        :'baseline9_duration_format' => :'Baseline9DurationFormat',
        
        # 
        :'baseline9_estimated_duration' => :'Baseline9EstimatedDuration',
        
        # 
        :'baseline9_work' => :'Baseline9Work',
        
        # 
        :'baseline9_cost' => :'Baseline9Cost',
        
        # 
        :'baseline9_bcws' => :'Baseline9Bcws',
        
        # 
        :'baseline9_bcwp' => :'Baseline9Bcwp',
        
        # 
        :'baseline10_start' => :'Baseline10Start',
        
        # 
        :'baseline10_finish' => :'Baseline10Finish',
        
        # 
        :'baseline10_duration' => :'Baseline10Duration',
        
        # 
        :'baseline10_fixed_cost' => :'Baseline10FixedCost',
        
        # 
        :'baseline10_duration_format' => :'Baseline10DurationFormat',
        
        # 
        :'baseline_estimated10_duration' => :'BaselineEstimated10Duration',
        
        # 
        :'baseline10_work' => :'Baseline10Work',
        
        # 
        :'baseline10_cost' => :'Baseline10Cost',
        
        # 
        :'baseline10_bcws' => :'Baseline10Bcws',
        
        # 
        :'baseline10_bcwp' => :'Baseline10Bcwp',
        
        # 
        :'extended_attributes' => :'ExtendedAttributes',
        
        # 
        :'outline_codes' => :'OutlineCodes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'uid' => :'Integer',
        :'id' => :'Integer',
        :'name' => :'String',
        :'duration' => :'String',
        :'start' => :'String',
        :'finish' => :'String',
        :'percent_complete' => :'Integer',
        :'percent_work_complete' => :'Integer',
        :'is_active' => :'BOOLEAN',
        :'actual_cost' => :'Float',
        :'actual_duration' => :'String',
        :'actual_finish' => :'String',
        :'actual_overtime_cost' => :'Float',
        :'actual_overtime_work' => :'String',
        :'actual_start' => :'String',
        :'budget_work' => :'String',
        :'budget_cost' => :'Float',
        :'constraint_date' => :'String',
        :'constraint_type' => :'String',
        :'contact' => :'String',
        :'cost' => :'Float',
        :'cv' => :'Float',
        :'deadline' => :'String',
        :'duration_variance' => :'String',
        :'early_finish' => :'String',
        :'early_start' => :'String',
        :'is_effort_driven' => :'BOOLEAN',
        :'is_external_task' => :'BOOLEAN',
        :'finish_slack' => :'Integer',
        :'finish_variance' => :'Integer',
        :'fixed_cost' => :'Float',
        :'fixed_cost_accrual' => :'String',
        :'free_slack' => :'Integer',
        :'guid' => :'String',
        :'hide_bar' => :'BOOLEAN',
        :'ignore_resource_calendar' => :'BOOLEAN',
        :'late_finish' => :'String',
        :'late_start' => :'String',
        :'is_level_assignments' => :'BOOLEAN',
        :'can_leveling_split' => :'BOOLEAN',
        :'leveling_delay' => :'Integer',
        :'is_marked' => :'BOOLEAN',
        :'is_milestone' => :'BOOLEAN',
        :'is_critical' => :'BOOLEAN',
        :'is_subproject' => :'BOOLEAN',
        :'is_subproject_read_only' => :'BOOLEAN',
        :'subproject_name' => :'String',
        :'is_summary' => :'BOOLEAN',
        :'subtasks_uids' => :'Array<Integer>',
        :'outline_level' => :'Integer',
        :'is_over_allocated' => :'BOOLEAN',
        :'is_estimated' => :'BOOLEAN',
        :'overtime_cost' => :'Float',
        :'overtime_work' => :'String',
        :'physical_percent_complete' => :'Integer',
        :'pre_leveled_finish' => :'String',
        :'pre_leveled_start' => :'String',
        :'is_recurring' => :'BOOLEAN',
        :'regular_work' => :'String',
        :'remaining_cost' => :'Float',
        :'remaining_duration' => :'String',
        :'remaining_overtime_cost' => :'Float',
        :'remaining_overtime_work' => :'String',
        :'remaining_work' => :'String',
        :'resume' => :'String',
        :'is_rollup' => :'BOOLEAN',
        :'start_slack' => :'Integer',
        :'start_variance' => :'Integer',
        :'calendar_uid' => :'Integer',
        :'is_manual' => :'BOOLEAN',
        :'total_slack' => :'Integer',
        :'type' => :'String',
        :'wbs' => :'String',
        :'priority' => :'Integer',
        :'work' => :'String',
        :'work_variance' => :'Float',
        :'notes_text' => :'String',
        :'acwp' => :'Float',
        :'bcws' => :'Float',
        :'bcwp' => :'Float',
        :'leveling_delay_format' => :'String',
        :'predecessors' => :'String',
        :'successors' => :'String',
        :'baseline_start' => :'String',
        :'baseline_finish' => :'String',
        :'baseline_duration' => :'String',
        :'baseline_fixed_cost' => :'Float',
        :'baseline_duration_format' => :'String',
        :'baseline_estimated_duration' => :'BOOLEAN',
        :'baseline_work' => :'String',
        :'baseline_cost' => :'Float',
        :'baseline_bcws' => :'Float',
        :'baseline_bcwp' => :'Float',
        :'baseline1_start' => :'String',
        :'baseline1_finish' => :'String',
        :'baseline1_duration' => :'String',
        :'baseline1_fixed_cost' => :'Float',
        :'baseline1_duration_format' => :'String',
        :'baseline1_estimated_duration' => :'BOOLEAN',
        :'baseline1_work' => :'String',
        :'baseline1_cost' => :'Float',
        :'baseline1_bcws' => :'Float',
        :'baseline1_bcwp' => :'Float',
        :'baseline2_start' => :'String',
        :'baseline2_finish' => :'String',
        :'baseline2_duration' => :'String',
        :'baseline2_fixed_cost' => :'Float',
        :'baseline2_duration_format' => :'String',
        :'baseline2_estimated_duration' => :'BOOLEAN',
        :'baseline2_work' => :'String',
        :'baseline2_cost' => :'Float',
        :'baseline2_bcws' => :'Float',
        :'baseline2_bcwp' => :'Float',
        :'baseline3_start' => :'String',
        :'baseline3_finish' => :'String',
        :'baseline3_duration' => :'String',
        :'baseline3_fixed_cost' => :'Float',
        :'baseline3_duration_format' => :'String',
        :'baseline3_estimated_duration' => :'BOOLEAN',
        :'baseline3_work' => :'String',
        :'baseline3_cost' => :'Float',
        :'baseline3_bcws' => :'Float',
        :'baseline3_bcwp' => :'Float',
        :'baseline4_start' => :'String',
        :'baseline4_finish' => :'String',
        :'baseline4_duration' => :'String',
        :'baseline4_fixed_cost' => :'Float',
        :'baseline4_duration_format' => :'String',
        :'baseline4_estimated_duration' => :'BOOLEAN',
        :'baseline4_work' => :'String',
        :'baseline4_cost' => :'Float',
        :'baseline4_bcws' => :'Float',
        :'baseline4_bcwp' => :'Float',
        :'baseline5_start' => :'String',
        :'baseline5_finish' => :'String',
        :'baseline5_duration' => :'String',
        :'baseline5_fixed_cost' => :'Float',
        :'baseline5_duration_format' => :'String',
        :'baseline5_estimated_duration' => :'BOOLEAN',
        :'baseline5_work' => :'String',
        :'baseline5_cost' => :'Float',
        :'baseline5_bcws' => :'Float',
        :'baseline5_bcwp' => :'Float',
        :'baseline6_start' => :'String',
        :'baseline6_finish' => :'String',
        :'baseline6_duration' => :'String',
        :'baseline6_fixed_cost' => :'Float',
        :'baseline6_duration_format' => :'String',
        :'baseline6_estimated_duration' => :'BOOLEAN',
        :'baseline6_work' => :'String',
        :'baseline6_cost' => :'Float',
        :'baseline6_bcws' => :'Float',
        :'baseline6_bcwp' => :'Float',
        :'baseline7_start' => :'String',
        :'baseline7_finish' => :'String',
        :'baseline7_duration' => :'String',
        :'baseline7_fixed_cost' => :'Float',
        :'baseline7_duration_format' => :'String',
        :'baseline7_estimated_duration' => :'BOOLEAN',
        :'baseline7_work' => :'String',
        :'baseline7_cost' => :'Float',
        :'baseline7_bcws' => :'Float',
        :'baseline7_bcwp' => :'Float',
        :'baseline8_start' => :'String',
        :'baseline8_finish' => :'String',
        :'baseline8_duration' => :'String',
        :'baseline8_fixed_cost' => :'Float',
        :'baseline8_duration_format' => :'String',
        :'baseline8_estimated_duration' => :'BOOLEAN',
        :'baseline8_work' => :'String',
        :'baseline8_cost' => :'Float',
        :'baseline8_bcws' => :'Float',
        :'baseline8_bcwp' => :'Float',
        :'baseline9_start' => :'String',
        :'baseline9_finish' => :'String',
        :'baseline9_duration' => :'String',
        :'baseline9_fixed_cost' => :'Float',
        :'baseline9_duration_format' => :'String',
        :'baseline9_estimated_duration' => :'BOOLEAN',
        :'baseline9_work' => :'String',
        :'baseline9_cost' => :'Float',
        :'baseline9_bcws' => :'Float',
        :'baseline9_bcwp' => :'Float',
        :'baseline10_start' => :'String',
        :'baseline10_finish' => :'String',
        :'baseline10_duration' => :'String',
        :'baseline10_fixed_cost' => :'Float',
        :'baseline10_duration_format' => :'String',
        :'baseline_estimated10_duration' => :'BOOLEAN',
        :'baseline10_work' => :'String',
        :'baseline10_cost' => :'Float',
        :'baseline10_bcws' => :'Float',
        :'baseline10_bcwp' => :'Float',
        :'extended_attributes' => :'Array<ExtendedAttribute>',
        :'outline_codes' => :'Array<OutlineCode>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'Id']
        self.id = attributes[:'Id']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Duration']
        self.duration = attributes[:'Duration']
      end
      
      if attributes[:'Start']
        self.start = attributes[:'Start']
      end
      
      if attributes[:'Finish']
        self.finish = attributes[:'Finish']
      end
      
      if attributes[:'PercentComplete']
        self.percent_complete = attributes[:'PercentComplete']
      end
      
      if attributes[:'PercentWorkComplete']
        self.percent_work_complete = attributes[:'PercentWorkComplete']
      end
      
      if attributes[:'IsActive']
        self.is_active = attributes[:'IsActive']
      end
      
      if attributes[:'ActualCost']
        self.actual_cost = attributes[:'ActualCost']
      end
      
      if attributes[:'ActualDuration']
        self.actual_duration = attributes[:'ActualDuration']
      end
      
      if attributes[:'ActualFinish']
        self.actual_finish = attributes[:'ActualFinish']
      end
      
      if attributes[:'ActualOvertimeCost']
        self.actual_overtime_cost = attributes[:'ActualOvertimeCost']
      end
      
      if attributes[:'ActualOvertimeWork']
        self.actual_overtime_work = attributes[:'ActualOvertimeWork']
      end
      
      if attributes[:'ActualStart']
        self.actual_start = attributes[:'ActualStart']
      end
      
      if attributes[:'BudgetWork']
        self.budget_work = attributes[:'BudgetWork']
      end
      
      if attributes[:'BudgetCost']
        self.budget_cost = attributes[:'BudgetCost']
      end
      
      if attributes[:'ConstraintDate']
        self.constraint_date = attributes[:'ConstraintDate']
      end
      
      if attributes[:'ConstraintType']
        self.constraint_type = attributes[:'ConstraintType']
      end
      
      if attributes[:'Contact']
        self.contact = attributes[:'Contact']
      end
      
      if attributes[:'Cost']
        self.cost = attributes[:'Cost']
      end
      
      if attributes[:'Cv']
        self.cv = attributes[:'Cv']
      end
      
      if attributes[:'Deadline']
        self.deadline = attributes[:'Deadline']
      end
      
      if attributes[:'DurationVariance']
        self.duration_variance = attributes[:'DurationVariance']
      end
      
      if attributes[:'EarlyFinish']
        self.early_finish = attributes[:'EarlyFinish']
      end
      
      if attributes[:'EarlyStart']
        self.early_start = attributes[:'EarlyStart']
      end
      
      if attributes[:'IsEffortDriven']
        self.is_effort_driven = attributes[:'IsEffortDriven']
      end
      
      if attributes[:'IsExternalTask']
        self.is_external_task = attributes[:'IsExternalTask']
      end
      
      if attributes[:'FinishSlack']
        self.finish_slack = attributes[:'FinishSlack']
      end
      
      if attributes[:'FinishVariance']
        self.finish_variance = attributes[:'FinishVariance']
      end
      
      if attributes[:'FixedCost']
        self.fixed_cost = attributes[:'FixedCost']
      end
      
      if attributes[:'FixedCostAccrual']
        self.fixed_cost_accrual = attributes[:'FixedCostAccrual']
      end
      
      if attributes[:'FreeSlack']
        self.free_slack = attributes[:'FreeSlack']
      end
      
      if attributes[:'GUID']
        self.guid = attributes[:'GUID']
      end
      
      if attributes[:'HideBar']
        self.hide_bar = attributes[:'HideBar']
      end
      
      if attributes[:'IgnoreResourceCalendar']
        self.ignore_resource_calendar = attributes[:'IgnoreResourceCalendar']
      end
      
      if attributes[:'LateFinish']
        self.late_finish = attributes[:'LateFinish']
      end
      
      if attributes[:'LateStart']
        self.late_start = attributes[:'LateStart']
      end
      
      if attributes[:'IsLevelAssignments']
        self.is_level_assignments = attributes[:'IsLevelAssignments']
      end
      
      if attributes[:'CanLevelingSplit']
        self.can_leveling_split = attributes[:'CanLevelingSplit']
      end
      
      if attributes[:'LevelingDelay']
        self.leveling_delay = attributes[:'LevelingDelay']
      end
      
      if attributes[:'IsMarked']
        self.is_marked = attributes[:'IsMarked']
      end
      
      if attributes[:'IsMilestone']
        self.is_milestone = attributes[:'IsMilestone']
      end
      
      if attributes[:'IsCritical']
        self.is_critical = attributes[:'IsCritical']
      end
      
      if attributes[:'IsSubproject']
        self.is_subproject = attributes[:'IsSubproject']
      end
      
      if attributes[:'IsSubprojectReadOnly']
        self.is_subproject_read_only = attributes[:'IsSubprojectReadOnly']
      end
      
      if attributes[:'SubprojectName']
        self.subproject_name = attributes[:'SubprojectName']
      end
      
      if attributes[:'IsSummary']
        self.is_summary = attributes[:'IsSummary']
      end
      
      if attributes[:'SubtasksUids']
        if (value = attributes[:'SubtasksUids']).is_a?(Array)
          self.subtasks_uids = value
        end
      end
      
      if attributes[:'OutlineLevel']
        self.outline_level = attributes[:'OutlineLevel']
      end
      
      if attributes[:'IsOverAllocated']
        self.is_over_allocated = attributes[:'IsOverAllocated']
      end
      
      if attributes[:'IsEstimated']
        self.is_estimated = attributes[:'IsEstimated']
      end
      
      if attributes[:'OvertimeCost']
        self.overtime_cost = attributes[:'OvertimeCost']
      end
      
      if attributes[:'OvertimeWork']
        self.overtime_work = attributes[:'OvertimeWork']
      end
      
      if attributes[:'PhysicalPercentComplete']
        self.physical_percent_complete = attributes[:'PhysicalPercentComplete']
      end
      
      if attributes[:'PreLeveledFinish']
        self.pre_leveled_finish = attributes[:'PreLeveledFinish']
      end
      
      if attributes[:'PreLeveledStart']
        self.pre_leveled_start = attributes[:'PreLeveledStart']
      end
      
      if attributes[:'IsRecurring']
        self.is_recurring = attributes[:'IsRecurring']
      end
      
      if attributes[:'RegularWork']
        self.regular_work = attributes[:'RegularWork']
      end
      
      if attributes[:'RemainingCost']
        self.remaining_cost = attributes[:'RemainingCost']
      end
      
      if attributes[:'RemainingDuration']
        self.remaining_duration = attributes[:'RemainingDuration']
      end
      
      if attributes[:'RemainingOvertimeCost']
        self.remaining_overtime_cost = attributes[:'RemainingOvertimeCost']
      end
      
      if attributes[:'RemainingOvertimeWork']
        self.remaining_overtime_work = attributes[:'RemainingOvertimeWork']
      end
      
      if attributes[:'RemainingWork']
        self.remaining_work = attributes[:'RemainingWork']
      end
      
      if attributes[:'Resume']
        self.resume = attributes[:'Resume']
      end
      
      if attributes[:'IsRollup']
        self.is_rollup = attributes[:'IsRollup']
      end
      
      if attributes[:'StartSlack']
        self.start_slack = attributes[:'StartSlack']
      end
      
      if attributes[:'StartVariance']
        self.start_variance = attributes[:'StartVariance']
      end
      
      if attributes[:'CalendarUid']
        self.calendar_uid = attributes[:'CalendarUid']
      end
      
      if attributes[:'IsManual']
        self.is_manual = attributes[:'IsManual']
      end
      
      if attributes[:'TotalSlack']
        self.total_slack = attributes[:'TotalSlack']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Wbs']
        self.wbs = attributes[:'Wbs']
      end
      
      if attributes[:'Priority']
        self.priority = attributes[:'Priority']
      end
      
      if attributes[:'Work']
        self.work = attributes[:'Work']
      end
      
      if attributes[:'WorkVariance']
        self.work_variance = attributes[:'WorkVariance']
      end
      
      if attributes[:'NotesText']
        self.notes_text = attributes[:'NotesText']
      end
      
      if attributes[:'Acwp']
        self.acwp = attributes[:'Acwp']
      end
      
      if attributes[:'Bcws']
        self.bcws = attributes[:'Bcws']
      end
      
      if attributes[:'Bcwp']
        self.bcwp = attributes[:'Bcwp']
      end
      
      if attributes[:'LevelingDelayFormat']
        self.leveling_delay_format = attributes[:'LevelingDelayFormat']
      end
      
      if attributes[:'Predecessors']
        self.predecessors = attributes[:'Predecessors']
      end
      
      if attributes[:'Successors']
        self.successors = attributes[:'Successors']
      end
      
      if attributes[:'BaselineStart']
        self.baseline_start = attributes[:'BaselineStart']
      end
      
      if attributes[:'BaselineFinish']
        self.baseline_finish = attributes[:'BaselineFinish']
      end
      
      if attributes[:'BaselineDuration']
        self.baseline_duration = attributes[:'BaselineDuration']
      end
      
      if attributes[:'BaselineFixedCost']
        self.baseline_fixed_cost = attributes[:'BaselineFixedCost']
      end
      
      if attributes[:'BaselineDurationFormat']
        self.baseline_duration_format = attributes[:'BaselineDurationFormat']
      end
      
      if attributes[:'BaselineEstimatedDuration']
        self.baseline_estimated_duration = attributes[:'BaselineEstimatedDuration']
      end
      
      if attributes[:'BaselineWork']
        self.baseline_work = attributes[:'BaselineWork']
      end
      
      if attributes[:'BaselineCost']
        self.baseline_cost = attributes[:'BaselineCost']
      end
      
      if attributes[:'BaselineBcws']
        self.baseline_bcws = attributes[:'BaselineBcws']
      end
      
      if attributes[:'BaselineBcwp']
        self.baseline_bcwp = attributes[:'BaselineBcwp']
      end
      
      if attributes[:'Baseline1Start']
        self.baseline1_start = attributes[:'Baseline1Start']
      end
      
      if attributes[:'Baseline1Finish']
        self.baseline1_finish = attributes[:'Baseline1Finish']
      end
      
      if attributes[:'Baseline1Duration']
        self.baseline1_duration = attributes[:'Baseline1Duration']
      end
      
      if attributes[:'Baseline1FixedCost']
        self.baseline1_fixed_cost = attributes[:'Baseline1FixedCost']
      end
      
      if attributes[:'Baseline1DurationFormat']
        self.baseline1_duration_format = attributes[:'Baseline1DurationFormat']
      end
      
      if attributes[:'Baseline1EstimatedDuration']
        self.baseline1_estimated_duration = attributes[:'Baseline1EstimatedDuration']
      end
      
      if attributes[:'Baseline1Work']
        self.baseline1_work = attributes[:'Baseline1Work']
      end
      
      if attributes[:'Baseline1Cost']
        self.baseline1_cost = attributes[:'Baseline1Cost']
      end
      
      if attributes[:'Baseline1Bcws']
        self.baseline1_bcws = attributes[:'Baseline1Bcws']
      end
      
      if attributes[:'Baseline1Bcwp']
        self.baseline1_bcwp = attributes[:'Baseline1Bcwp']
      end
      
      if attributes[:'Baseline2Start']
        self.baseline2_start = attributes[:'Baseline2Start']
      end
      
      if attributes[:'Baseline2Finish']
        self.baseline2_finish = attributes[:'Baseline2Finish']
      end
      
      if attributes[:'Baseline2Duration']
        self.baseline2_duration = attributes[:'Baseline2Duration']
      end
      
      if attributes[:'Baseline2FixedCost']
        self.baseline2_fixed_cost = attributes[:'Baseline2FixedCost']
      end
      
      if attributes[:'Baseline2DurationFormat']
        self.baseline2_duration_format = attributes[:'Baseline2DurationFormat']
      end
      
      if attributes[:'Baseline2EstimatedDuration']
        self.baseline2_estimated_duration = attributes[:'Baseline2EstimatedDuration']
      end
      
      if attributes[:'Baseline2Work']
        self.baseline2_work = attributes[:'Baseline2Work']
      end
      
      if attributes[:'Baseline2Cost']
        self.baseline2_cost = attributes[:'Baseline2Cost']
      end
      
      if attributes[:'Baseline2Bcws']
        self.baseline2_bcws = attributes[:'Baseline2Bcws']
      end
      
      if attributes[:'Baseline2Bcwp']
        self.baseline2_bcwp = attributes[:'Baseline2Bcwp']
      end
      
      if attributes[:'Baseline3Start']
        self.baseline3_start = attributes[:'Baseline3Start']
      end
      
      if attributes[:'Baseline3Finish']
        self.baseline3_finish = attributes[:'Baseline3Finish']
      end
      
      if attributes[:'Baseline3Duration']
        self.baseline3_duration = attributes[:'Baseline3Duration']
      end
      
      if attributes[:'Baseline3FixedCost']
        self.baseline3_fixed_cost = attributes[:'Baseline3FixedCost']
      end
      
      if attributes[:'Baseline3DurationFormat']
        self.baseline3_duration_format = attributes[:'Baseline3DurationFormat']
      end
      
      if attributes[:'Baseline3EstimatedDuration']
        self.baseline3_estimated_duration = attributes[:'Baseline3EstimatedDuration']
      end
      
      if attributes[:'Baseline3Work']
        self.baseline3_work = attributes[:'Baseline3Work']
      end
      
      if attributes[:'Baseline3Cost']
        self.baseline3_cost = attributes[:'Baseline3Cost']
      end
      
      if attributes[:'Baseline3Bcws']
        self.baseline3_bcws = attributes[:'Baseline3Bcws']
      end
      
      if attributes[:'Baseline3Bcwp']
        self.baseline3_bcwp = attributes[:'Baseline3Bcwp']
      end
      
      if attributes[:'Baseline4Start']
        self.baseline4_start = attributes[:'Baseline4Start']
      end
      
      if attributes[:'Baseline4Finish']
        self.baseline4_finish = attributes[:'Baseline4Finish']
      end
      
      if attributes[:'Baseline4Duration']
        self.baseline4_duration = attributes[:'Baseline4Duration']
      end
      
      if attributes[:'Baseline4FixedCost']
        self.baseline4_fixed_cost = attributes[:'Baseline4FixedCost']
      end
      
      if attributes[:'Baseline4DurationFormat']
        self.baseline4_duration_format = attributes[:'Baseline4DurationFormat']
      end
      
      if attributes[:'Baseline4EstimatedDuration']
        self.baseline4_estimated_duration = attributes[:'Baseline4EstimatedDuration']
      end
      
      if attributes[:'Baseline4Work']
        self.baseline4_work = attributes[:'Baseline4Work']
      end
      
      if attributes[:'Baseline4Cost']
        self.baseline4_cost = attributes[:'Baseline4Cost']
      end
      
      if attributes[:'Baseline4Bcws']
        self.baseline4_bcws = attributes[:'Baseline4Bcws']
      end
      
      if attributes[:'Baseline4Bcwp']
        self.baseline4_bcwp = attributes[:'Baseline4Bcwp']
      end
      
      if attributes[:'Baseline5Start']
        self.baseline5_start = attributes[:'Baseline5Start']
      end
      
      if attributes[:'Baseline5Finish']
        self.baseline5_finish = attributes[:'Baseline5Finish']
      end
      
      if attributes[:'Baseline5Duration']
        self.baseline5_duration = attributes[:'Baseline5Duration']
      end
      
      if attributes[:'Baseline5FixedCost']
        self.baseline5_fixed_cost = attributes[:'Baseline5FixedCost']
      end
      
      if attributes[:'Baseline5DurationFormat']
        self.baseline5_duration_format = attributes[:'Baseline5DurationFormat']
      end
      
      if attributes[:'Baseline5EstimatedDuration']
        self.baseline5_estimated_duration = attributes[:'Baseline5EstimatedDuration']
      end
      
      if attributes[:'Baseline5Work']
        self.baseline5_work = attributes[:'Baseline5Work']
      end
      
      if attributes[:'Baseline5Cost']
        self.baseline5_cost = attributes[:'Baseline5Cost']
      end
      
      if attributes[:'Baseline5Bcws']
        self.baseline5_bcws = attributes[:'Baseline5Bcws']
      end
      
      if attributes[:'Baseline5Bcwp']
        self.baseline5_bcwp = attributes[:'Baseline5Bcwp']
      end
      
      if attributes[:'Baseline6Start']
        self.baseline6_start = attributes[:'Baseline6Start']
      end
      
      if attributes[:'Baseline6Finish']
        self.baseline6_finish = attributes[:'Baseline6Finish']
      end
      
      if attributes[:'Baseline6Duration']
        self.baseline6_duration = attributes[:'Baseline6Duration']
      end
      
      if attributes[:'Baseline6FixedCost']
        self.baseline6_fixed_cost = attributes[:'Baseline6FixedCost']
      end
      
      if attributes[:'Baseline6DurationFormat']
        self.baseline6_duration_format = attributes[:'Baseline6DurationFormat']
      end
      
      if attributes[:'Baseline6EstimatedDuration']
        self.baseline6_estimated_duration = attributes[:'Baseline6EstimatedDuration']
      end
      
      if attributes[:'Baseline6Work']
        self.baseline6_work = attributes[:'Baseline6Work']
      end
      
      if attributes[:'Baseline6Cost']
        self.baseline6_cost = attributes[:'Baseline6Cost']
      end
      
      if attributes[:'Baseline6Bcws']
        self.baseline6_bcws = attributes[:'Baseline6Bcws']
      end
      
      if attributes[:'Baseline6Bcwp']
        self.baseline6_bcwp = attributes[:'Baseline6Bcwp']
      end
      
      if attributes[:'Baseline7Start']
        self.baseline7_start = attributes[:'Baseline7Start']
      end
      
      if attributes[:'Baseline7Finish']
        self.baseline7_finish = attributes[:'Baseline7Finish']
      end
      
      if attributes[:'Baseline7Duration']
        self.baseline7_duration = attributes[:'Baseline7Duration']
      end
      
      if attributes[:'Baseline7FixedCost']
        self.baseline7_fixed_cost = attributes[:'Baseline7FixedCost']
      end
      
      if attributes[:'Baseline7DurationFormat']
        self.baseline7_duration_format = attributes[:'Baseline7DurationFormat']
      end
      
      if attributes[:'Baseline7EstimatedDuration']
        self.baseline7_estimated_duration = attributes[:'Baseline7EstimatedDuration']
      end
      
      if attributes[:'Baseline7Work']
        self.baseline7_work = attributes[:'Baseline7Work']
      end
      
      if attributes[:'Baseline7Cost']
        self.baseline7_cost = attributes[:'Baseline7Cost']
      end
      
      if attributes[:'Baseline7Bcws']
        self.baseline7_bcws = attributes[:'Baseline7Bcws']
      end
      
      if attributes[:'Baseline7Bcwp']
        self.baseline7_bcwp = attributes[:'Baseline7Bcwp']
      end
      
      if attributes[:'Baseline8Start']
        self.baseline8_start = attributes[:'Baseline8Start']
      end
      
      if attributes[:'Baseline8Finish']
        self.baseline8_finish = attributes[:'Baseline8Finish']
      end
      
      if attributes[:'Baseline8Duration']
        self.baseline8_duration = attributes[:'Baseline8Duration']
      end
      
      if attributes[:'Baseline8FixedCost']
        self.baseline8_fixed_cost = attributes[:'Baseline8FixedCost']
      end
      
      if attributes[:'Baseline8DurationFormat']
        self.baseline8_duration_format = attributes[:'Baseline8DurationFormat']
      end
      
      if attributes[:'Baseline8EstimatedDuration']
        self.baseline8_estimated_duration = attributes[:'Baseline8EstimatedDuration']
      end
      
      if attributes[:'Baseline8Work']
        self.baseline8_work = attributes[:'Baseline8Work']
      end
      
      if attributes[:'Baseline8Cost']
        self.baseline8_cost = attributes[:'Baseline8Cost']
      end
      
      if attributes[:'Baseline8Bcws']
        self.baseline8_bcws = attributes[:'Baseline8Bcws']
      end
      
      if attributes[:'Baseline8Bcwp']
        self.baseline8_bcwp = attributes[:'Baseline8Bcwp']
      end
      
      if attributes[:'Baseline9Start']
        self.baseline9_start = attributes[:'Baseline9Start']
      end
      
      if attributes[:'Baseline9Finish']
        self.baseline9_finish = attributes[:'Baseline9Finish']
      end
      
      if attributes[:'Baseline9Duration']
        self.baseline9_duration = attributes[:'Baseline9Duration']
      end
      
      if attributes[:'Baseline9FixedCost']
        self.baseline9_fixed_cost = attributes[:'Baseline9FixedCost']
      end
      
      if attributes[:'Baseline9DurationFormat']
        self.baseline9_duration_format = attributes[:'Baseline9DurationFormat']
      end
      
      if attributes[:'Baseline9EstimatedDuration']
        self.baseline9_estimated_duration = attributes[:'Baseline9EstimatedDuration']
      end
      
      if attributes[:'Baseline9Work']
        self.baseline9_work = attributes[:'Baseline9Work']
      end
      
      if attributes[:'Baseline9Cost']
        self.baseline9_cost = attributes[:'Baseline9Cost']
      end
      
      if attributes[:'Baseline9Bcws']
        self.baseline9_bcws = attributes[:'Baseline9Bcws']
      end
      
      if attributes[:'Baseline9Bcwp']
        self.baseline9_bcwp = attributes[:'Baseline9Bcwp']
      end
      
      if attributes[:'Baseline10Start']
        self.baseline10_start = attributes[:'Baseline10Start']
      end
      
      if attributes[:'Baseline10Finish']
        self.baseline10_finish = attributes[:'Baseline10Finish']
      end
      
      if attributes[:'Baseline10Duration']
        self.baseline10_duration = attributes[:'Baseline10Duration']
      end
      
      if attributes[:'Baseline10FixedCost']
        self.baseline10_fixed_cost = attributes[:'Baseline10FixedCost']
      end
      
      if attributes[:'Baseline10DurationFormat']
        self.baseline10_duration_format = attributes[:'Baseline10DurationFormat']
      end
      
      if attributes[:'BaselineEstimated10Duration']
        self.baseline_estimated10_duration = attributes[:'BaselineEstimated10Duration']
      end
      
      if attributes[:'Baseline10Work']
        self.baseline10_work = attributes[:'Baseline10Work']
      end
      
      if attributes[:'Baseline10Cost']
        self.baseline10_cost = attributes[:'Baseline10Cost']
      end
      
      if attributes[:'Baseline10Bcws']
        self.baseline10_bcws = attributes[:'Baseline10Bcws']
      end
      
      if attributes[:'Baseline10Bcwp']
        self.baseline10_bcwp = attributes[:'Baseline10Bcwp']
      end
      
      if attributes[:'ExtendedAttributes']
        if (value = attributes[:'ExtendedAttributes']).is_a?(Array)
          self.extended_attributes = value
        end
      end
      
      if attributes[:'OutlineCodes']
        if (value = attributes[:'OutlineCodes']).is_a?(Array)
          self.outline_codes = value
        end
      end
      
    end

  end
end
