#import "ASPTask.h"

@implementation ASPTask

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Uid": @"uid", @"Id": @"_id", @"Name": @"name", @"Duration": @"duration", @"Start": @"start", @"Finish": @"finish", @"PercentComplete": @"percentComplete", @"PercentWorkComplete": @"percentWorkComplete", @"IsActive": @"isActive", @"ActualCost": @"actualCost", @"ActualDuration": @"actualDuration", @"ActualFinish": @"actualFinish", @"ActualOvertimeCost": @"actualOvertimeCost", @"ActualOvertimeWork": @"actualOvertimeWork", @"ActualStart": @"actualStart", @"BudgetWork": @"budgetWork", @"BudgetCost": @"budgetCost", @"ConstraintDate": @"constraintDate", @"ConstraintType": @"constraintType", @"Contact": @"contact", @"Cost": @"cost", @"Cv": @"cv", @"Deadline": @"deadline", @"DurationVariance": @"durationVariance", @"EarlyFinish": @"earlyFinish", @"EarlyStart": @"earlyStart", @"IsEffortDriven": @"isEffortDriven", @"IsExternalTask": @"isExternalTask", @"FinishSlack": @"finishSlack", @"FinishVariance": @"finishVariance", @"FixedCost": @"fixedCost", @"FixedCostAccrual": @"fixedCostAccrual", @"FreeSlack": @"freeSlack", @"GUID": @"gUID", @"HideBar": @"hideBar", @"IgnoreResourceCalendar": @"ignoreResourceCalendar", @"LateFinish": @"lateFinish", @"LateStart": @"lateStart", @"IsLevelAssignments": @"isLevelAssignments", @"CanLevelingSplit": @"canLevelingSplit", @"LevelingDelay": @"levelingDelay", @"IsMarked": @"isMarked", @"IsMilestone": @"isMilestone", @"IsCritical": @"isCritical", @"IsSubproject": @"isSubproject", @"IsSubprojectReadOnly": @"isSubprojectReadOnly", @"SubprojectName": @"subprojectName", @"IsSummary": @"isSummary", @"SubtasksUids": @"subtasksUids", @"OutlineLevel": @"outlineLevel", @"IsOverAllocated": @"isOverAllocated", @"IsEstimated": @"isEstimated", @"OvertimeCost": @"overtimeCost", @"OvertimeWork": @"overtimeWork", @"PhysicalPercentComplete": @"physicalPercentComplete", @"PreLeveledFinish": @"preLeveledFinish", @"PreLeveledStart": @"preLeveledStart", @"IsRecurring": @"isRecurring", @"RegularWork": @"regularWork", @"RemainingCost": @"remainingCost", @"RemainingDuration": @"remainingDuration", @"RemainingOvertimeCost": @"remainingOvertimeCost", @"RemainingOvertimeWork": @"remainingOvertimeWork", @"RemainingWork": @"remainingWork", @"Resume": @"resume", @"IsRollup": @"isRollup", @"StartSlack": @"startSlack", @"StartVariance": @"startVariance", @"CalendarUid": @"calendarUid", @"IsManual": @"isManual", @"TotalSlack": @"totalSlack", @"Type": @"type", @"Wbs": @"wbs", @"Priority": @"priority", @"Work": @"work", @"WorkVariance": @"workVariance", @"NotesText": @"notesText", @"Acwp": @"acwp", @"Bcws": @"bcws", @"Bcwp": @"bcwp", @"LevelingDelayFormat": @"levelingDelayFormat", @"Predecessors": @"predecessors", @"Successors": @"successors", @"BaselineStart": @"baselineStart", @"BaselineFinish": @"baselineFinish", @"BaselineDuration": @"baselineDuration", @"BaselineFixedCost": @"baselineFixedCost", @"BaselineDurationFormat": @"baselineDurationFormat", @"BaselineEstimatedDuration": @"baselineEstimatedDuration", @"BaselineWork": @"baselineWork", @"BaselineCost": @"baselineCost", @"BaselineBcws": @"baselineBcws", @"BaselineBcwp": @"baselineBcwp", @"Baseline1Start": @"baseline1Start", @"Baseline1Finish": @"baseline1Finish", @"Baseline1Duration": @"baseline1Duration", @"Baseline1FixedCost": @"baseline1FixedCost", @"Baseline1DurationFormat": @"baseline1DurationFormat", @"Baseline1EstimatedDuration": @"baseline1EstimatedDuration", @"Baseline1Work": @"baseline1Work", @"Baseline1Cost": @"baseline1Cost", @"Baseline1Bcws": @"baseline1Bcws", @"Baseline1Bcwp": @"baseline1Bcwp", @"Baseline2Start": @"baseline2Start", @"Baseline2Finish": @"baseline2Finish", @"Baseline2Duration": @"baseline2Duration", @"Baseline2FixedCost": @"baseline2FixedCost", @"Baseline2DurationFormat": @"baseline2DurationFormat", @"Baseline2EstimatedDuration": @"baseline2EstimatedDuration", @"Baseline2Work": @"baseline2Work", @"Baseline2Cost": @"baseline2Cost", @"Baseline2Bcws": @"baseline2Bcws", @"Baseline2Bcwp": @"baseline2Bcwp", @"Baseline3Start": @"baseline3Start", @"Baseline3Finish": @"baseline3Finish", @"Baseline3Duration": @"baseline3Duration", @"Baseline3FixedCost": @"baseline3FixedCost", @"Baseline3DurationFormat": @"baseline3DurationFormat", @"Baseline3EstimatedDuration": @"baseline3EstimatedDuration", @"Baseline3Work": @"baseline3Work", @"Baseline3Cost": @"baseline3Cost", @"Baseline3Bcws": @"baseline3Bcws", @"Baseline3Bcwp": @"baseline3Bcwp", @"Baseline4Start": @"baseline4Start", @"Baseline4Finish": @"baseline4Finish", @"Baseline4Duration": @"baseline4Duration", @"Baseline4FixedCost": @"baseline4FixedCost", @"Baseline4DurationFormat": @"baseline4DurationFormat", @"Baseline4EstimatedDuration": @"baseline4EstimatedDuration", @"Baseline4Work": @"baseline4Work", @"Baseline4Cost": @"baseline4Cost", @"Baseline4Bcws": @"baseline4Bcws", @"Baseline4Bcwp": @"baseline4Bcwp", @"Baseline5Start": @"baseline5Start", @"Baseline5Finish": @"baseline5Finish", @"Baseline5Duration": @"baseline5Duration", @"Baseline5FixedCost": @"baseline5FixedCost", @"Baseline5DurationFormat": @"baseline5DurationFormat", @"Baseline5EstimatedDuration": @"baseline5EstimatedDuration", @"Baseline5Work": @"baseline5Work", @"Baseline5Cost": @"baseline5Cost", @"Baseline5Bcws": @"baseline5Bcws", @"Baseline5Bcwp": @"baseline5Bcwp", @"Baseline6Start": @"baseline6Start", @"Baseline6Finish": @"baseline6Finish", @"Baseline6Duration": @"baseline6Duration", @"Baseline6FixedCost": @"baseline6FixedCost", @"Baseline6DurationFormat": @"baseline6DurationFormat", @"Baseline6EstimatedDuration": @"baseline6EstimatedDuration", @"Baseline6Work": @"baseline6Work", @"Baseline6Cost": @"baseline6Cost", @"Baseline6Bcws": @"baseline6Bcws", @"Baseline6Bcwp": @"baseline6Bcwp", @"Baseline7Start": @"baseline7Start", @"Baseline7Finish": @"baseline7Finish", @"Baseline7Duration": @"baseline7Duration", @"Baseline7FixedCost": @"baseline7FixedCost", @"Baseline7DurationFormat": @"baseline7DurationFormat", @"Baseline7EstimatedDuration": @"baseline7EstimatedDuration", @"Baseline7Work": @"baseline7Work", @"Baseline7Cost": @"baseline7Cost", @"Baseline7Bcws": @"baseline7Bcws", @"Baseline7Bcwp": @"baseline7Bcwp", @"Baseline8Start": @"baseline8Start", @"Baseline8Finish": @"baseline8Finish", @"Baseline8Duration": @"baseline8Duration", @"Baseline8FixedCost": @"baseline8FixedCost", @"Baseline8DurationFormat": @"baseline8DurationFormat", @"Baseline8EstimatedDuration": @"baseline8EstimatedDuration", @"Baseline8Work": @"baseline8Work", @"Baseline8Cost": @"baseline8Cost", @"Baseline8Bcws": @"baseline8Bcws", @"Baseline8Bcwp": @"baseline8Bcwp", @"Baseline9Start": @"baseline9Start", @"Baseline9Finish": @"baseline9Finish", @"Baseline9Duration": @"baseline9Duration", @"Baseline9FixedCost": @"baseline9FixedCost", @"Baseline9DurationFormat": @"baseline9DurationFormat", @"Baseline9EstimatedDuration": @"baseline9EstimatedDuration", @"Baseline9Work": @"baseline9Work", @"Baseline9Cost": @"baseline9Cost", @"Baseline9Bcws": @"baseline9Bcws", @"Baseline9Bcwp": @"baseline9Bcwp", @"Baseline10Start": @"baseline10Start", @"Baseline10Finish": @"baseline10Finish", @"Baseline10Duration": @"baseline10Duration", @"Baseline10FixedCost": @"baseline10FixedCost", @"Baseline10DurationFormat": @"baseline10DurationFormat", @"BaselineEstimated10Duration": @"baselineEstimated10Duration", @"Baseline10Work": @"baseline10Work", @"Baseline10Cost": @"baseline10Cost", @"Baseline10Bcws": @"baseline10Bcws", @"Baseline10Bcwp": @"baseline10Bcwp", @"ExtendedAttributes": @"extendedAttributes", @"OutlineCodes": @"outlineCodes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"uid", @"_id", @"name", @"duration", @"start", @"finish", @"percentComplete", @"percentWorkComplete", @"isActive", @"actualCost", @"actualDuration", @"actualFinish", @"actualOvertimeCost", @"actualOvertimeWork", @"actualStart", @"budgetWork", @"budgetCost", @"constraintDate", @"constraintType", @"contact", @"cost", @"cv", @"deadline", @"durationVariance", @"earlyFinish", @"earlyStart", @"isEffortDriven", @"isExternalTask", @"finishSlack", @"finishVariance", @"fixedCost", @"fixedCostAccrual", @"freeSlack", @"gUID", @"hideBar", @"ignoreResourceCalendar", @"lateFinish", @"lateStart", @"isLevelAssignments", @"canLevelingSplit", @"levelingDelay", @"isMarked", @"isMilestone", @"isCritical", @"isSubproject", @"isSubprojectReadOnly", @"subprojectName", @"isSummary", @"subtasksUids", @"outlineLevel", @"isOverAllocated", @"isEstimated", @"overtimeCost", @"overtimeWork", @"physicalPercentComplete", @"preLeveledFinish", @"preLeveledStart", @"isRecurring", @"regularWork", @"remainingCost", @"remainingDuration", @"remainingOvertimeCost", @"remainingOvertimeWork", @"remainingWork", @"resume", @"isRollup", @"startSlack", @"startVariance", @"calendarUid", @"isManual", @"totalSlack", @"type", @"wbs", @"priority", @"work", @"workVariance", @"notesText", @"acwp", @"bcws", @"bcwp", @"levelingDelayFormat", @"predecessors", @"successors", @"baselineStart", @"baselineFinish", @"baselineDuration", @"baselineFixedCost", @"baselineDurationFormat", @"baselineEstimatedDuration", @"baselineWork", @"baselineCost", @"baselineBcws", @"baselineBcwp", @"baseline1Start", @"baseline1Finish", @"baseline1Duration", @"baseline1FixedCost", @"baseline1DurationFormat", @"baseline1EstimatedDuration", @"baseline1Work", @"baseline1Cost", @"baseline1Bcws", @"baseline1Bcwp", @"baseline2Start", @"baseline2Finish", @"baseline2Duration", @"baseline2FixedCost", @"baseline2DurationFormat", @"baseline2EstimatedDuration", @"baseline2Work", @"baseline2Cost", @"baseline2Bcws", @"baseline2Bcwp", @"baseline3Start", @"baseline3Finish", @"baseline3Duration", @"baseline3FixedCost", @"baseline3DurationFormat", @"baseline3EstimatedDuration", @"baseline3Work", @"baseline3Cost", @"baseline3Bcws", @"baseline3Bcwp", @"baseline4Start", @"baseline4Finish", @"baseline4Duration", @"baseline4FixedCost", @"baseline4DurationFormat", @"baseline4EstimatedDuration", @"baseline4Work", @"baseline4Cost", @"baseline4Bcws", @"baseline4Bcwp", @"baseline5Start", @"baseline5Finish", @"baseline5Duration", @"baseline5FixedCost", @"baseline5DurationFormat", @"baseline5EstimatedDuration", @"baseline5Work", @"baseline5Cost", @"baseline5Bcws", @"baseline5Bcwp", @"baseline6Start", @"baseline6Finish", @"baseline6Duration", @"baseline6FixedCost", @"baseline6DurationFormat", @"baseline6EstimatedDuration", @"baseline6Work", @"baseline6Cost", @"baseline6Bcws", @"baseline6Bcwp", @"baseline7Start", @"baseline7Finish", @"baseline7Duration", @"baseline7FixedCost", @"baseline7DurationFormat", @"baseline7EstimatedDuration", @"baseline7Work", @"baseline7Cost", @"baseline7Bcws", @"baseline7Bcwp", @"baseline8Start", @"baseline8Finish", @"baseline8Duration", @"baseline8FixedCost", @"baseline8DurationFormat", @"baseline8EstimatedDuration", @"baseline8Work", @"baseline8Cost", @"baseline8Bcws", @"baseline8Bcwp", @"baseline9Start", @"baseline9Finish", @"baseline9Duration", @"baseline9FixedCost", @"baseline9DurationFormat", @"baseline9EstimatedDuration", @"baseline9Work", @"baseline9Cost", @"baseline9Bcws", @"baseline9Bcwp", @"baseline10Start", @"baseline10Finish", @"baseline10Duration", @"baseline10FixedCost", @"baseline10DurationFormat", @"baselineEstimated10Duration", @"baseline10Work", @"baseline10Cost", @"baseline10Bcws", @"baseline10Bcwp", @"extendedAttributes", @"outlineCodes"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
