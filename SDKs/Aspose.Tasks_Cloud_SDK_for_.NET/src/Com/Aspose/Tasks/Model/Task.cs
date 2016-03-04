using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class Task {
    public int? Uid { get; set; }

    public int? Id { get; set; }

    public string Name { get; set; }

    public string Duration { get; set; }

    public string DurationString { get; set; }

    public DateTime Start { get; set; }

    public DateTime Finish { get; set; }

    public int? PercentComplete { get; set; }

    public int? PercentWorkComplete { get; set; }

    public bool? IsActive { get; set; }

    public double? ActualCost { get; set; }

    public string ActualDuration { get; set; }

    public string ActualDurationString { get; set; }

    public DateTime ActualFinish { get; set; }

    public double? ActualOvertimeCost { get; set; }

    public string ActualOvertimeWork { get; set; }

    public string ActualOvertimeWorkString { get; set; }

    public DateTime ActualStart { get; set; }

    public string BudgetWork { get; set; }

    public string BudgetWorkString { get; set; }

    public double? BudgetCost { get; set; }

    public DateTime ConstraintDate { get; set; }

    public string ConstraintType { get; set; }

    public string Contact { get; set; }

    public double? Cost { get; set; }

    public double? CV { get; set; }

    public double? Cv { get; set; }

    public DateTime Deadline { get; set; }

    public string DurationVariance { get; set; }

    public string DurationVarianceString { get; set; }

    public DateTime EarlyFinish { get; set; }

    public DateTime EarlyStart { get; set; }

    public bool? IsEffortDriven { get; set; }

    public bool? IsExternalTask { get; set; }

    public int? FinishSlack { get; set; }

    public int? FinishVariance { get; set; }

    public double? FixedCost { get; set; }

    public string FixedCostAccrual { get; set; }

    public int? FreeSlack { get; set; }

    public string Guid { get; set; }

    public string GUID { get; set; }

    public bool? HideBar { get; set; }

    public bool? IgnoreResourceCalendar { get; set; }

    public DateTime LateFinish { get; set; }

    public DateTime LateStart { get; set; }

    public bool? LevelAssignments { get; set; }

    public bool? IsLevelAssignments { get; set; }

    public bool? LevelingCanSplit { get; set; }

    public bool? CanLevelingSplit { get; set; }

    public int? LevelingDelay { get; set; }

    public bool? IsMarked { get; set; }

    public bool? IsMilestone { get; set; }

    public bool? IsCritical { get; set; }

    public bool? IsSubproject { get; set; }

    public bool? IsSubprojectReadOnly { get; set; }

    public string SubprojectName { get; set; }

    public bool? IsSummary { get; set; }

    public List<int?> SubtasksUids { get; set; }

    public int? OutlineLevel { get; set; }

    public bool? IsOverallocated { get; set; }

    public bool? IsOverAllocated { get; set; }

    public bool? IsEstimated { get; set; }

    public double? OvertimeCost { get; set; }

    public string OvertimeWork { get; set; }

    public string OvertimeWorkString { get; set; }

    public int? PhysicalPercentComplete { get; set; }

    public DateTime PreleveledFinish { get; set; }

    public DateTime PreLeveledFinish { get; set; }

    public DateTime PreleveledStart { get; set; }

    public DateTime PreLeveledStart { get; set; }

    public bool? IsRecurring { get; set; }

    public string RegularWork { get; set; }

    public string RegularWorkString { get; set; }

    public double? RemainingCost { get; set; }

    public string RemainingDuration { get; set; }

    public string RemainingDurationString { get; set; }

    public double? RemainingOvertimeCost { get; set; }

    public string RemainingOvertimeWork { get; set; }

    public string RemainingOvertimeWorkString { get; set; }

    public string RemainingWork { get; set; }

    public string RemainingWorkString { get; set; }

    public DateTime Resume { get; set; }

    public bool? IsRollup { get; set; }

    public int? StartSlack { get; set; }

    public int? StartVariance { get; set; }

    public int? CalendarUid { get; set; }

    public bool? IsManual { get; set; }

    public int? TotalSlack { get; set; }

    public string Type { get; set; }

    public string Wbs { get; set; }

    public int? Priority { get; set; }

    public string Work { get; set; }

    public string WorkString { get; set; }

    public double? WorkVariance { get; set; }

    public string NotesText { get; set; }

    public double? ACWP { get; set; }

    public double? Acwp { get; set; }

    public double? BCWS { get; set; }

    public double? Bcws { get; set; }

    public double? BCWP { get; set; }

    public double? Bcwp { get; set; }

    public string LevelingDelayFormat { get; set; }

    public string Predecessors { get; set; }

    public string Successors { get; set; }

    public DateTime BaselineStart { get; set; }

    public DateTime BaselineFinish { get; set; }

    public string BaselineDuration { get; set; }

    public string BaselineDurationString { get; set; }

    public double? BaselineFixedCost { get; set; }

    public string BaselineDurationFormat { get; set; }

    public bool? BaselineEstimatedDuration { get; set; }

    public string BaselineWork { get; set; }

    public string BaselineWorkString { get; set; }

    public double? BaselineCost { get; set; }

    public double? BaselineBcws { get; set; }

    public double? BaselineBcwp { get; set; }

    public DateTime Baseline1Start { get; set; }

    public DateTime Baseline1Finish { get; set; }

    public string Baseline1Duration { get; set; }

    public string Baseline1DurationString { get; set; }

    public double? Baseline1FixedCost { get; set; }

    public string Baseline1DurationFormat { get; set; }

    public bool? Baseline1EstimatedDuration { get; set; }

    public string Baseline1Work { get; set; }

    public string Baseline1WorkString { get; set; }

    public double? Baseline1Cost { get; set; }

    public double? Baseline1Bcws { get; set; }

    public double? Baseline1Bcwp { get; set; }

    public DateTime Baseline2Start { get; set; }

    public DateTime Baseline2Finish { get; set; }

    public string Baseline2Duration { get; set; }

    public string Baseline2DurationString { get; set; }

    public double? Baseline2FixedCost { get; set; }

    public string Baseline2DurationFormat { get; set; }

    public bool? Baseline2EstimatedDuration { get; set; }

    public string Baseline2Work { get; set; }

    public string Baseline2WorkString { get; set; }

    public double? Baseline2Cost { get; set; }

    public double? Baseline2Bcws { get; set; }

    public double? Baseline2Bcwp { get; set; }

    public DateTime Baseline3Start { get; set; }

    public DateTime Baseline3Finish { get; set; }

    public string Baseline3Duration { get; set; }

    public string Baseline3DurationString { get; set; }

    public double? Baseline3FixedCost { get; set; }

    public string Baseline3DurationFormat { get; set; }

    public bool? Baseline3EstimatedDuration { get; set; }

    public string Baseline3Work { get; set; }

    public string Baseline3WorkString { get; set; }

    public double? Baseline3Cost { get; set; }

    public double? Baseline3Bcws { get; set; }

    public double? Baseline3Bcwp { get; set; }

    public DateTime Baseline4Start { get; set; }

    public DateTime Baseline4Finish { get; set; }

    public string Baseline4Duration { get; set; }

    public string Baseline4DurationString { get; set; }

    public double? Baseline4FixedCost { get; set; }

    public string Baseline4DurationFormat { get; set; }

    public bool? Baseline4EstimatedDuration { get; set; }

    public string Baseline4Work { get; set; }

    public string Baseline4WorkString { get; set; }

    public double? Baseline4Cost { get; set; }

    public double? Baseline4Bcws { get; set; }

    public double? Baseline4Bcwp { get; set; }

    public DateTime Baseline5Start { get; set; }

    public DateTime Baseline5Finish { get; set; }

    public string Baseline5Duration { get; set; }

    public string Baseline5DurationString { get; set; }

    public double? Baseline5FixedCost { get; set; }

    public string Baseline5DurationFormat { get; set; }

    public bool? Baseline5EstimatedDuration { get; set; }

    public string Baseline5Work { get; set; }

    public string Baseline5WorkString { get; set; }

    public double? Baseline5Cost { get; set; }

    public double? Baseline5Bcws { get; set; }

    public double? Baseline5Bcwp { get; set; }

    public DateTime Baseline6Start { get; set; }

    public DateTime Baseline6Finish { get; set; }

    public string Baseline6Duration { get; set; }

    public string Baseline6DurationString { get; set; }

    public double? Baseline6FixedCost { get; set; }

    public string Baseline6DurationFormat { get; set; }

    public bool? Baseline6EstimatedDuration { get; set; }

    public string Baseline6Work { get; set; }

    public string Baseline6WorkString { get; set; }

    public double? Baseline6Cost { get; set; }

    public double? Baseline6Bcws { get; set; }

    public double? Baseline6Bcwp { get; set; }

    public DateTime Baseline7Start { get; set; }

    public DateTime Baseline7Finish { get; set; }

    public string Baseline7Duration { get; set; }

    public string Baseline7DurationString { get; set; }

    public double? Baseline7FixedCost { get; set; }

    public string Baseline7DurationFormat { get; set; }

    public bool? Baseline7EstimatedDuration { get; set; }

    public string Baseline7Work { get; set; }

    public string Baseline7WorkString { get; set; }

    public double? Baseline7Cost { get; set; }

    public double? Baseline7Bcws { get; set; }

    public double? Baseline7Bcwp { get; set; }

    public DateTime Baseline8Start { get; set; }

    public DateTime Baseline8Finish { get; set; }

    public string Baseline8Duration { get; set; }

    public string Baseline8DurationString { get; set; }

    public double? Baseline8FixedCost { get; set; }

    public string Baseline8DurationFormat { get; set; }

    public bool? Baseline8EstimatedDuration { get; set; }

    public string Baseline8Work { get; set; }

    public string Baseline8WorkString { get; set; }

    public double? Baseline8Cost { get; set; }

    public double? Baseline8Bcws { get; set; }

    public double? Baseline8Bcwp { get; set; }

    public DateTime Baseline9Start { get; set; }

    public DateTime Baseline9Finish { get; set; }

    public string Baseline9Duration { get; set; }

    public string Baseline9DurationString { get; set; }

    public double? Baseline9FixedCost { get; set; }

    public string Baseline9DurationFormat { get; set; }

    public bool? Baseline9EstimatedDuration { get; set; }

    public string Baseline9Work { get; set; }

    public string Baseline9WorkString { get; set; }

    public double? Baseline9Cost { get; set; }

    public double? Baseline9Bcws { get; set; }

    public double? Baseline9Bcwp { get; set; }

    public DateTime Baseline10Start { get; set; }

    public DateTime Baseline10Finish { get; set; }

    public string Baseline10Duration { get; set; }

    public string Baseline10DurationString { get; set; }

    public double? Baseline10FixedCost { get; set; }

    public string Baseline10DurationFormat { get; set; }

    public bool? Baseline10EstimatedDuration { get; set; }

    public string Baseline10Work { get; set; }

    public string Baseline10WorkString { get; set; }

    public double? Baseline10Cost { get; set; }

    public double? Baseline10Bcws { get; set; }

    public double? Baseline10Bcwp { get; set; }

    public List<ExtendedAttribute> ExtendedAttributes { get; set; }

    public List<OutlineCode> OutlineCodes { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Task {\n");
      sb.Append("  Uid: ").Append(Uid).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Duration: ").Append(Duration).Append("\n");
      sb.Append("  DurationString: ").Append(DurationString).Append("\n");
      sb.Append("  Start: ").Append(Start).Append("\n");
      sb.Append("  Finish: ").Append(Finish).Append("\n");
      sb.Append("  PercentComplete: ").Append(PercentComplete).Append("\n");
      sb.Append("  PercentWorkComplete: ").Append(PercentWorkComplete).Append("\n");
      sb.Append("  IsActive: ").Append(IsActive).Append("\n");
      sb.Append("  ActualCost: ").Append(ActualCost).Append("\n");
      sb.Append("  ActualDuration: ").Append(ActualDuration).Append("\n");
      sb.Append("  ActualDurationString: ").Append(ActualDurationString).Append("\n");
      sb.Append("  ActualFinish: ").Append(ActualFinish).Append("\n");
      sb.Append("  ActualOvertimeCost: ").Append(ActualOvertimeCost).Append("\n");
      sb.Append("  ActualOvertimeWork: ").Append(ActualOvertimeWork).Append("\n");
      sb.Append("  ActualOvertimeWorkString: ").Append(ActualOvertimeWorkString).Append("\n");
      sb.Append("  ActualStart: ").Append(ActualStart).Append("\n");
      sb.Append("  BudgetWork: ").Append(BudgetWork).Append("\n");
      sb.Append("  BudgetWorkString: ").Append(BudgetWorkString).Append("\n");
      sb.Append("  BudgetCost: ").Append(BudgetCost).Append("\n");
      sb.Append("  ConstraintDate: ").Append(ConstraintDate).Append("\n");
      sb.Append("  ConstraintType: ").Append(ConstraintType).Append("\n");
      sb.Append("  Contact: ").Append(Contact).Append("\n");
      sb.Append("  Cost: ").Append(Cost).Append("\n");
      sb.Append("  CV: ").Append(CV).Append("\n");
      sb.Append("  Cv: ").Append(Cv).Append("\n");
      sb.Append("  Deadline: ").Append(Deadline).Append("\n");
      sb.Append("  DurationVariance: ").Append(DurationVariance).Append("\n");
      sb.Append("  DurationVarianceString: ").Append(DurationVarianceString).Append("\n");
      sb.Append("  EarlyFinish: ").Append(EarlyFinish).Append("\n");
      sb.Append("  EarlyStart: ").Append(EarlyStart).Append("\n");
      sb.Append("  IsEffortDriven: ").Append(IsEffortDriven).Append("\n");
      sb.Append("  IsExternalTask: ").Append(IsExternalTask).Append("\n");
      sb.Append("  FinishSlack: ").Append(FinishSlack).Append("\n");
      sb.Append("  FinishVariance: ").Append(FinishVariance).Append("\n");
      sb.Append("  FixedCost: ").Append(FixedCost).Append("\n");
      sb.Append("  FixedCostAccrual: ").Append(FixedCostAccrual).Append("\n");
      sb.Append("  FreeSlack: ").Append(FreeSlack).Append("\n");
      sb.Append("  Guid: ").Append(Guid).Append("\n");
      sb.Append("  GUID: ").Append(GUID).Append("\n");
      sb.Append("  HideBar: ").Append(HideBar).Append("\n");
      sb.Append("  IgnoreResourceCalendar: ").Append(IgnoreResourceCalendar).Append("\n");
      sb.Append("  LateFinish: ").Append(LateFinish).Append("\n");
      sb.Append("  LateStart: ").Append(LateStart).Append("\n");
      sb.Append("  LevelAssignments: ").Append(LevelAssignments).Append("\n");
      sb.Append("  IsLevelAssignments: ").Append(IsLevelAssignments).Append("\n");
      sb.Append("  LevelingCanSplit: ").Append(LevelingCanSplit).Append("\n");
      sb.Append("  CanLevelingSplit: ").Append(CanLevelingSplit).Append("\n");
      sb.Append("  LevelingDelay: ").Append(LevelingDelay).Append("\n");
      sb.Append("  IsMarked: ").Append(IsMarked).Append("\n");
      sb.Append("  IsMilestone: ").Append(IsMilestone).Append("\n");
      sb.Append("  IsCritical: ").Append(IsCritical).Append("\n");
      sb.Append("  IsSubproject: ").Append(IsSubproject).Append("\n");
      sb.Append("  IsSubprojectReadOnly: ").Append(IsSubprojectReadOnly).Append("\n");
      sb.Append("  SubprojectName: ").Append(SubprojectName).Append("\n");
      sb.Append("  IsSummary: ").Append(IsSummary).Append("\n");
      sb.Append("  SubtasksUids: ").Append(SubtasksUids).Append("\n");
      sb.Append("  OutlineLevel: ").Append(OutlineLevel).Append("\n");
      sb.Append("  IsOverallocated: ").Append(IsOverallocated).Append("\n");
      sb.Append("  IsOverAllocated: ").Append(IsOverAllocated).Append("\n");
      sb.Append("  IsEstimated: ").Append(IsEstimated).Append("\n");
      sb.Append("  OvertimeCost: ").Append(OvertimeCost).Append("\n");
      sb.Append("  OvertimeWork: ").Append(OvertimeWork).Append("\n");
      sb.Append("  OvertimeWorkString: ").Append(OvertimeWorkString).Append("\n");
      sb.Append("  PhysicalPercentComplete: ").Append(PhysicalPercentComplete).Append("\n");
      sb.Append("  PreleveledFinish: ").Append(PreleveledFinish).Append("\n");
      sb.Append("  PreLeveledFinish: ").Append(PreLeveledFinish).Append("\n");
      sb.Append("  PreleveledStart: ").Append(PreleveledStart).Append("\n");
      sb.Append("  PreLeveledStart: ").Append(PreLeveledStart).Append("\n");
      sb.Append("  IsRecurring: ").Append(IsRecurring).Append("\n");
      sb.Append("  RegularWork: ").Append(RegularWork).Append("\n");
      sb.Append("  RegularWorkString: ").Append(RegularWorkString).Append("\n");
      sb.Append("  RemainingCost: ").Append(RemainingCost).Append("\n");
      sb.Append("  RemainingDuration: ").Append(RemainingDuration).Append("\n");
      sb.Append("  RemainingDurationString: ").Append(RemainingDurationString).Append("\n");
      sb.Append("  RemainingOvertimeCost: ").Append(RemainingOvertimeCost).Append("\n");
      sb.Append("  RemainingOvertimeWork: ").Append(RemainingOvertimeWork).Append("\n");
      sb.Append("  RemainingOvertimeWorkString: ").Append(RemainingOvertimeWorkString).Append("\n");
      sb.Append("  RemainingWork: ").Append(RemainingWork).Append("\n");
      sb.Append("  RemainingWorkString: ").Append(RemainingWorkString).Append("\n");
      sb.Append("  Resume: ").Append(Resume).Append("\n");
      sb.Append("  IsRollup: ").Append(IsRollup).Append("\n");
      sb.Append("  StartSlack: ").Append(StartSlack).Append("\n");
      sb.Append("  StartVariance: ").Append(StartVariance).Append("\n");
      sb.Append("  CalendarUid: ").Append(CalendarUid).Append("\n");
      sb.Append("  IsManual: ").Append(IsManual).Append("\n");
      sb.Append("  TotalSlack: ").Append(TotalSlack).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Wbs: ").Append(Wbs).Append("\n");
      sb.Append("  Priority: ").Append(Priority).Append("\n");
      sb.Append("  Work: ").Append(Work).Append("\n");
      sb.Append("  WorkString: ").Append(WorkString).Append("\n");
      sb.Append("  WorkVariance: ").Append(WorkVariance).Append("\n");
      sb.Append("  NotesText: ").Append(NotesText).Append("\n");
      sb.Append("  ACWP: ").Append(ACWP).Append("\n");
      sb.Append("  Acwp: ").Append(Acwp).Append("\n");
      sb.Append("  BCWS: ").Append(BCWS).Append("\n");
      sb.Append("  Bcws: ").Append(Bcws).Append("\n");
      sb.Append("  BCWP: ").Append(BCWP).Append("\n");
      sb.Append("  Bcwp: ").Append(Bcwp).Append("\n");
      sb.Append("  LevelingDelayFormat: ").Append(LevelingDelayFormat).Append("\n");
      sb.Append("  Predecessors: ").Append(Predecessors).Append("\n");
      sb.Append("  Successors: ").Append(Successors).Append("\n");
      sb.Append("  BaselineStart: ").Append(BaselineStart).Append("\n");
      sb.Append("  BaselineFinish: ").Append(BaselineFinish).Append("\n");
      sb.Append("  BaselineDuration: ").Append(BaselineDuration).Append("\n");
      sb.Append("  BaselineDurationString: ").Append(BaselineDurationString).Append("\n");
      sb.Append("  BaselineFixedCost: ").Append(BaselineFixedCost).Append("\n");
      sb.Append("  BaselineDurationFormat: ").Append(BaselineDurationFormat).Append("\n");
      sb.Append("  BaselineEstimatedDuration: ").Append(BaselineEstimatedDuration).Append("\n");
      sb.Append("  BaselineWork: ").Append(BaselineWork).Append("\n");
      sb.Append("  BaselineWorkString: ").Append(BaselineWorkString).Append("\n");
      sb.Append("  BaselineCost: ").Append(BaselineCost).Append("\n");
      sb.Append("  BaselineBcws: ").Append(BaselineBcws).Append("\n");
      sb.Append("  BaselineBcwp: ").Append(BaselineBcwp).Append("\n");
      sb.Append("  Baseline1Start: ").Append(Baseline1Start).Append("\n");
      sb.Append("  Baseline1Finish: ").Append(Baseline1Finish).Append("\n");
      sb.Append("  Baseline1Duration: ").Append(Baseline1Duration).Append("\n");
      sb.Append("  Baseline1DurationString: ").Append(Baseline1DurationString).Append("\n");
      sb.Append("  Baseline1FixedCost: ").Append(Baseline1FixedCost).Append("\n");
      sb.Append("  Baseline1DurationFormat: ").Append(Baseline1DurationFormat).Append("\n");
      sb.Append("  Baseline1EstimatedDuration: ").Append(Baseline1EstimatedDuration).Append("\n");
      sb.Append("  Baseline1Work: ").Append(Baseline1Work).Append("\n");
      sb.Append("  Baseline1WorkString: ").Append(Baseline1WorkString).Append("\n");
      sb.Append("  Baseline1Cost: ").Append(Baseline1Cost).Append("\n");
      sb.Append("  Baseline1Bcws: ").Append(Baseline1Bcws).Append("\n");
      sb.Append("  Baseline1Bcwp: ").Append(Baseline1Bcwp).Append("\n");
      sb.Append("  Baseline2Start: ").Append(Baseline2Start).Append("\n");
      sb.Append("  Baseline2Finish: ").Append(Baseline2Finish).Append("\n");
      sb.Append("  Baseline2Duration: ").Append(Baseline2Duration).Append("\n");
      sb.Append("  Baseline2DurationString: ").Append(Baseline2DurationString).Append("\n");
      sb.Append("  Baseline2FixedCost: ").Append(Baseline2FixedCost).Append("\n");
      sb.Append("  Baseline2DurationFormat: ").Append(Baseline2DurationFormat).Append("\n");
      sb.Append("  Baseline2EstimatedDuration: ").Append(Baseline2EstimatedDuration).Append("\n");
      sb.Append("  Baseline2Work: ").Append(Baseline2Work).Append("\n");
      sb.Append("  Baseline2WorkString: ").Append(Baseline2WorkString).Append("\n");
      sb.Append("  Baseline2Cost: ").Append(Baseline2Cost).Append("\n");
      sb.Append("  Baseline2Bcws: ").Append(Baseline2Bcws).Append("\n");
      sb.Append("  Baseline2Bcwp: ").Append(Baseline2Bcwp).Append("\n");
      sb.Append("  Baseline3Start: ").Append(Baseline3Start).Append("\n");
      sb.Append("  Baseline3Finish: ").Append(Baseline3Finish).Append("\n");
      sb.Append("  Baseline3Duration: ").Append(Baseline3Duration).Append("\n");
      sb.Append("  Baseline3DurationString: ").Append(Baseline3DurationString).Append("\n");
      sb.Append("  Baseline3FixedCost: ").Append(Baseline3FixedCost).Append("\n");
      sb.Append("  Baseline3DurationFormat: ").Append(Baseline3DurationFormat).Append("\n");
      sb.Append("  Baseline3EstimatedDuration: ").Append(Baseline3EstimatedDuration).Append("\n");
      sb.Append("  Baseline3Work: ").Append(Baseline3Work).Append("\n");
      sb.Append("  Baseline3WorkString: ").Append(Baseline3WorkString).Append("\n");
      sb.Append("  Baseline3Cost: ").Append(Baseline3Cost).Append("\n");
      sb.Append("  Baseline3Bcws: ").Append(Baseline3Bcws).Append("\n");
      sb.Append("  Baseline3Bcwp: ").Append(Baseline3Bcwp).Append("\n");
      sb.Append("  Baseline4Start: ").Append(Baseline4Start).Append("\n");
      sb.Append("  Baseline4Finish: ").Append(Baseline4Finish).Append("\n");
      sb.Append("  Baseline4Duration: ").Append(Baseline4Duration).Append("\n");
      sb.Append("  Baseline4DurationString: ").Append(Baseline4DurationString).Append("\n");
      sb.Append("  Baseline4FixedCost: ").Append(Baseline4FixedCost).Append("\n");
      sb.Append("  Baseline4DurationFormat: ").Append(Baseline4DurationFormat).Append("\n");
      sb.Append("  Baseline4EstimatedDuration: ").Append(Baseline4EstimatedDuration).Append("\n");
      sb.Append("  Baseline4Work: ").Append(Baseline4Work).Append("\n");
      sb.Append("  Baseline4WorkString: ").Append(Baseline4WorkString).Append("\n");
      sb.Append("  Baseline4Cost: ").Append(Baseline4Cost).Append("\n");
      sb.Append("  Baseline4Bcws: ").Append(Baseline4Bcws).Append("\n");
      sb.Append("  Baseline4Bcwp: ").Append(Baseline4Bcwp).Append("\n");
      sb.Append("  Baseline5Start: ").Append(Baseline5Start).Append("\n");
      sb.Append("  Baseline5Finish: ").Append(Baseline5Finish).Append("\n");
      sb.Append("  Baseline5Duration: ").Append(Baseline5Duration).Append("\n");
      sb.Append("  Baseline5DurationString: ").Append(Baseline5DurationString).Append("\n");
      sb.Append("  Baseline5FixedCost: ").Append(Baseline5FixedCost).Append("\n");
      sb.Append("  Baseline5DurationFormat: ").Append(Baseline5DurationFormat).Append("\n");
      sb.Append("  Baseline5EstimatedDuration: ").Append(Baseline5EstimatedDuration).Append("\n");
      sb.Append("  Baseline5Work: ").Append(Baseline5Work).Append("\n");
      sb.Append("  Baseline5WorkString: ").Append(Baseline5WorkString).Append("\n");
      sb.Append("  Baseline5Cost: ").Append(Baseline5Cost).Append("\n");
      sb.Append("  Baseline5Bcws: ").Append(Baseline5Bcws).Append("\n");
      sb.Append("  Baseline5Bcwp: ").Append(Baseline5Bcwp).Append("\n");
      sb.Append("  Baseline6Start: ").Append(Baseline6Start).Append("\n");
      sb.Append("  Baseline6Finish: ").Append(Baseline6Finish).Append("\n");
      sb.Append("  Baseline6Duration: ").Append(Baseline6Duration).Append("\n");
      sb.Append("  Baseline6DurationString: ").Append(Baseline6DurationString).Append("\n");
      sb.Append("  Baseline6FixedCost: ").Append(Baseline6FixedCost).Append("\n");
      sb.Append("  Baseline6DurationFormat: ").Append(Baseline6DurationFormat).Append("\n");
      sb.Append("  Baseline6EstimatedDuration: ").Append(Baseline6EstimatedDuration).Append("\n");
      sb.Append("  Baseline6Work: ").Append(Baseline6Work).Append("\n");
      sb.Append("  Baseline6WorkString: ").Append(Baseline6WorkString).Append("\n");
      sb.Append("  Baseline6Cost: ").Append(Baseline6Cost).Append("\n");
      sb.Append("  Baseline6Bcws: ").Append(Baseline6Bcws).Append("\n");
      sb.Append("  Baseline6Bcwp: ").Append(Baseline6Bcwp).Append("\n");
      sb.Append("  Baseline7Start: ").Append(Baseline7Start).Append("\n");
      sb.Append("  Baseline7Finish: ").Append(Baseline7Finish).Append("\n");
      sb.Append("  Baseline7Duration: ").Append(Baseline7Duration).Append("\n");
      sb.Append("  Baseline7DurationString: ").Append(Baseline7DurationString).Append("\n");
      sb.Append("  Baseline7FixedCost: ").Append(Baseline7FixedCost).Append("\n");
      sb.Append("  Baseline7DurationFormat: ").Append(Baseline7DurationFormat).Append("\n");
      sb.Append("  Baseline7EstimatedDuration: ").Append(Baseline7EstimatedDuration).Append("\n");
      sb.Append("  Baseline7Work: ").Append(Baseline7Work).Append("\n");
      sb.Append("  Baseline7WorkString: ").Append(Baseline7WorkString).Append("\n");
      sb.Append("  Baseline7Cost: ").Append(Baseline7Cost).Append("\n");
      sb.Append("  Baseline7Bcws: ").Append(Baseline7Bcws).Append("\n");
      sb.Append("  Baseline7Bcwp: ").Append(Baseline7Bcwp).Append("\n");
      sb.Append("  Baseline8Start: ").Append(Baseline8Start).Append("\n");
      sb.Append("  Baseline8Finish: ").Append(Baseline8Finish).Append("\n");
      sb.Append("  Baseline8Duration: ").Append(Baseline8Duration).Append("\n");
      sb.Append("  Baseline8DurationString: ").Append(Baseline8DurationString).Append("\n");
      sb.Append("  Baseline8FixedCost: ").Append(Baseline8FixedCost).Append("\n");
      sb.Append("  Baseline8DurationFormat: ").Append(Baseline8DurationFormat).Append("\n");
      sb.Append("  Baseline8EstimatedDuration: ").Append(Baseline8EstimatedDuration).Append("\n");
      sb.Append("  Baseline8Work: ").Append(Baseline8Work).Append("\n");
      sb.Append("  Baseline8WorkString: ").Append(Baseline8WorkString).Append("\n");
      sb.Append("  Baseline8Cost: ").Append(Baseline8Cost).Append("\n");
      sb.Append("  Baseline8Bcws: ").Append(Baseline8Bcws).Append("\n");
      sb.Append("  Baseline8Bcwp: ").Append(Baseline8Bcwp).Append("\n");
      sb.Append("  Baseline9Start: ").Append(Baseline9Start).Append("\n");
      sb.Append("  Baseline9Finish: ").Append(Baseline9Finish).Append("\n");
      sb.Append("  Baseline9Duration: ").Append(Baseline9Duration).Append("\n");
      sb.Append("  Baseline9DurationString: ").Append(Baseline9DurationString).Append("\n");
      sb.Append("  Baseline9FixedCost: ").Append(Baseline9FixedCost).Append("\n");
      sb.Append("  Baseline9DurationFormat: ").Append(Baseline9DurationFormat).Append("\n");
      sb.Append("  Baseline9EstimatedDuration: ").Append(Baseline9EstimatedDuration).Append("\n");
      sb.Append("  Baseline9Work: ").Append(Baseline9Work).Append("\n");
      sb.Append("  Baseline9WorkString: ").Append(Baseline9WorkString).Append("\n");
      sb.Append("  Baseline9Cost: ").Append(Baseline9Cost).Append("\n");
      sb.Append("  Baseline9Bcws: ").Append(Baseline9Bcws).Append("\n");
      sb.Append("  Baseline9Bcwp: ").Append(Baseline9Bcwp).Append("\n");
      sb.Append("  Baseline10Start: ").Append(Baseline10Start).Append("\n");
      sb.Append("  Baseline10Finish: ").Append(Baseline10Finish).Append("\n");
      sb.Append("  Baseline10Duration: ").Append(Baseline10Duration).Append("\n");
      sb.Append("  Baseline10DurationString: ").Append(Baseline10DurationString).Append("\n");
      sb.Append("  Baseline10FixedCost: ").Append(Baseline10FixedCost).Append("\n");
      sb.Append("  Baseline10DurationFormat: ").Append(Baseline10DurationFormat).Append("\n");
      sb.Append("  Baseline10EstimatedDuration: ").Append(Baseline10EstimatedDuration).Append("\n");
      sb.Append("  Baseline10Work: ").Append(Baseline10Work).Append("\n");
      sb.Append("  Baseline10WorkString: ").Append(Baseline10WorkString).Append("\n");
      sb.Append("  Baseline10Cost: ").Append(Baseline10Cost).Append("\n");
      sb.Append("  Baseline10Bcws: ").Append(Baseline10Bcws).Append("\n");
      sb.Append("  Baseline10Bcwp: ").Append(Baseline10Bcwp).Append("\n");
      sb.Append("  ExtendedAttributes: ").Append(ExtendedAttributes).Append("\n");
      sb.Append("  OutlineCodes: ").Append(OutlineCodes).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
