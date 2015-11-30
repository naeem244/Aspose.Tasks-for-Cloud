#import "ASPResourceAssignment.h"

@implementation ASPResourceAssignment

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"TaskUid": @"taskUid", @"ResourceUid": @"resourceUid", @"Uid": @"uid", @"PercentWorkComplete": @"percentWorkComplete", @"ActualCost": @"actualCost", @"ActualFinish": @"actualFinish", @"ActualOvertimeCost": @"actualOvertimeCost", @"ActualOvertimeWork": @"actualOvertimeWork", @"ActualStart": @"actualStart", @"ActualWork": @"actualWork", @"Acwp": @"acwp", @"Confirmed": @"confirmed", @"Cost": @"cost", @"CostRateTableType": @"costRateTableType", @"CostVariance": @"costVariance", @"Cv": @"cv", @"Delay": @"delay", @"Finish": @"finish", @"FinishVariance": @"finishVariance", @"Hyperlink": @"hyperlink", @"HyperlinkAddress": @"hyperlinkAddress", @"HyperlinkSubAddress": @"hyperlinkSubAddress", @"WorkVariance": @"workVariance", @"HasFixedRateUnits": @"hasFixedRateUnits", @"FixedMaterial": @"fixedMaterial", @"LevelingDelay": @"levelingDelay", @"LevelingDelayFormat": @"levelingDelayFormat", @"LinkedFields": @"linkedFields", @"Milestone": @"milestone", @"Notes": @"notes", @"Overallocated": @"overallocated", @"OvertimeCost": @"overtimeCost", @"OvertimeWork": @"overtimeWork", @"PeakUnits": @"peakUnits", @"RegularWork": @"regularWork", @"RemainingCost": @"remainingCost", @"RemainingOvertimeCost": @"remainingOvertimeCost", @"RemainingOvertimeWork": @"remainingOvertimeWork", @"RemainingWork": @"remainingWork", @"ResponsePending": @"responsePending", @"Start": @"start", @"Stop": @"stop", @"Resume": @"resume", @"StartVariance": @"startVariance", @"Summary": @"summary", @"Sv": @"sv", @"Units": @"units", @"UpdateNeeded": @"updateNeeded", @"Vac": @"vac", @"Work": @"work", @"WorkContour": @"workContour", @"Bcws": @"bcws", @"Bcwp": @"bcwp", @"BookingType": @"bookingType", @"ActualWorkProtected": @"actualWorkProtected", @"ActualOvertimeWorkProtected": @"actualOvertimeWorkProtected", @"CreationDate": @"creationDate", @"AssnOwner": @"assnOwner", @"AssnOwnerGuid": @"assnOwnerGuid", @"BudgetCost": @"budgetCost", @"BudgetWork": @"budgetWork", @"RateScale": @"rateScale", @"BaselineStart": @"baselineStart", @"BaselineFinish": @"baselineFinish", @"BaselineWork": @"baselineWork", @"BaselineCost": @"baselineCost", @"BaselineBcws": @"baselineBcws", @"BaselineBcwp": @"baselineBcwp", @"Baseline1Start": @"baseline1Start", @"Baseline1Finish": @"baseline1Finish", @"Baseline1Work": @"baseline1Work", @"Baseline1Cost": @"baseline1Cost", @"Baseline1Bcws": @"baseline1Bcws", @"Baseline1Bcwp": @"baseline1Bcwp", @"Baseline2Start": @"baseline2Start", @"Baseline2Finish": @"baseline2Finish", @"Baseline2Work": @"baseline2Work", @"Baseline2Cost": @"baseline2Cost", @"Baseline2Bcws": @"baseline2Bcws", @"Baseline2Bcwp": @"baseline2Bcwp", @"Baseline3Start": @"baseline3Start", @"Baseline3Finish": @"baseline3Finish", @"Baseline3Work": @"baseline3Work", @"Baseline3Cost": @"baseline3Cost", @"Baseline3Bcws": @"baseline3Bcws", @"Baseline3Bcwp": @"baseline3Bcwp", @"Baseline4Start": @"baseline4Start", @"Baseline4Finish": @"baseline4Finish", @"Baseline4Work": @"baseline4Work", @"Baseline4Cost": @"baseline4Cost", @"Baseline4Bcws": @"baseline4Bcws", @"Baseline4Bcwp": @"baseline4Bcwp", @"Baseline5Start": @"baseline5Start", @"Baseline5Finish": @"baseline5Finish", @"Baseline5Work": @"baseline5Work", @"Baseline5Cost": @"baseline5Cost", @"Baseline5Bcws": @"baseline5Bcws", @"Baseline5Bcwp": @"baseline5Bcwp", @"Baseline6Start": @"baseline6Start", @"Baseline6Finish": @"baseline6Finish", @"Baseline6Work": @"baseline6Work", @"Baseline6Cost": @"baseline6Cost", @"Baseline6Bcws": @"baseline6Bcws", @"Baseline6Bcwp": @"baseline6Bcwp", @"Baseline7Start": @"baseline7Start", @"Baseline7Finish": @"baseline7Finish", @"Baseline7Work": @"baseline7Work", @"Baseline7Cost": @"baseline7Cost", @"Baseline7Bcws": @"baseline7Bcws", @"Baseline7Bcwp": @"baseline7Bcwp", @"Baseline8Start": @"baseline8Start", @"Baseline8Finish": @"baseline8Finish", @"Baseline8Work": @"baseline8Work", @"Baseline8Cost": @"baseline8Cost", @"Baseline8Bcws": @"baseline8Bcws", @"Baseline8Bcwp": @"baseline8Bcwp", @"Baseline9Start": @"baseline9Start", @"Baseline9Finish": @"baseline9Finish", @"Baseline9Work": @"baseline9Work", @"Baseline9Cost": @"baseline9Cost", @"Baseline9Bcws": @"baseline9Bcws", @"Baseline9Bcwp": @"baseline9Bcwp", @"Baseline10Start": @"baseline10Start", @"Baseline10Finish": @"baseline10Finish", @"Baseline10Work": @"baseline10Work", @"Baseline10Cost": @"baseline10Cost", @"Baseline10Bcws": @"baseline10Bcws", @"Baseline10Bcwp": @"baseline10Bcwp", @"ExtendedAttributes": @"extendedAttributes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"taskUid", @"resourceUid", @"uid", @"percentWorkComplete", @"actualCost", @"actualFinish", @"actualOvertimeCost", @"actualOvertimeWork", @"actualStart", @"actualWork", @"acwp", @"confirmed", @"cost", @"costRateTableType", @"costVariance", @"cv", @"delay", @"finish", @"finishVariance", @"hyperlink", @"hyperlinkAddress", @"hyperlinkSubAddress", @"workVariance", @"hasFixedRateUnits", @"fixedMaterial", @"levelingDelay", @"levelingDelayFormat", @"linkedFields", @"milestone", @"notes", @"overallocated", @"overtimeCost", @"overtimeWork", @"peakUnits", @"regularWork", @"remainingCost", @"remainingOvertimeCost", @"remainingOvertimeWork", @"remainingWork", @"responsePending", @"start", @"stop", @"resume", @"startVariance", @"summary", @"sv", @"units", @"updateNeeded", @"vac", @"work", @"workContour", @"bcws", @"bcwp", @"bookingType", @"actualWorkProtected", @"actualOvertimeWorkProtected", @"creationDate", @"assnOwner", @"assnOwnerGuid", @"budgetCost", @"budgetWork", @"rateScale", @"baselineStart", @"baselineFinish", @"baselineWork", @"baselineCost", @"baselineBcws", @"baselineBcwp", @"baseline1Start", @"baseline1Finish", @"baseline1Work", @"baseline1Cost", @"baseline1Bcws", @"baseline1Bcwp", @"baseline2Start", @"baseline2Finish", @"baseline2Work", @"baseline2Cost", @"baseline2Bcws", @"baseline2Bcwp", @"baseline3Start", @"baseline3Finish", @"baseline3Work", @"baseline3Cost", @"baseline3Bcws", @"baseline3Bcwp", @"baseline4Start", @"baseline4Finish", @"baseline4Work", @"baseline4Cost", @"baseline4Bcws", @"baseline4Bcwp", @"baseline5Start", @"baseline5Finish", @"baseline5Work", @"baseline5Cost", @"baseline5Bcws", @"baseline5Bcwp", @"baseline6Start", @"baseline6Finish", @"baseline6Work", @"baseline6Cost", @"baseline6Bcws", @"baseline6Bcwp", @"baseline7Start", @"baseline7Finish", @"baseline7Work", @"baseline7Cost", @"baseline7Bcws", @"baseline7Bcwp", @"baseline8Start", @"baseline8Finish", @"baseline8Work", @"baseline8Cost", @"baseline8Bcws", @"baseline8Bcwp", @"baseline9Start", @"baseline9Finish", @"baseline9Work", @"baseline9Cost", @"baseline9Bcws", @"baseline9Bcwp", @"baseline10Start", @"baseline10Finish", @"baseline10Work", @"baseline10Cost", @"baseline10Bcws", @"baseline10Bcwp", @"extendedAttributes"];

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
