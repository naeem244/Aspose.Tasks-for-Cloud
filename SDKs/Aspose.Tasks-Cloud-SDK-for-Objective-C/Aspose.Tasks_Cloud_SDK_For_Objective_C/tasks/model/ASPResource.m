#import "ASPResource.h"

@implementation ASPResource

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Name": @"name", @"Uid": @"uid", @"Id": @"_id", @"Type": @"type", @"IsNull": @"isNull", @"Initials": @"initials", @"Phonetics": @"phonetics", @"NtAccount": @"ntAccount", @"MaterialLabel": @"materialLabel", @"Code": @"code", @"Group": @"group", @"EmailAddress": @"emailAddress", @"Hyperlink": @"hyperlink", @"HyperlinkAddress": @"hyperlinkAddress", @"HyperlinkSubAddress": @"hyperlinkSubAddress", @"MaxUnits": @"maxUnits", @"PeakUnits": @"peakUnits", @"OverAllocated": @"overAllocated", @"AvailableFrom": @"availableFrom", @"AvailableTo": @"availableTo", @"Start": @"start", @"Finish": @"finish", @"CanLevel": @"canLevel", @"AccrueAt": @"accrueAt", @"Work": @"work", @"RegularWork": @"regularWork", @"OvertimeWork": @"overtimeWork", @"ActualWork": @"actualWork", @"RemainingWork": @"remainingWork", @"ActualOvertimeWork": @"actualOvertimeWork", @"RemainingOvertimeWork": @"remainingOvertimeWork", @"PercentWorkComplete": @"percentWorkComplete", @"StandardRate": @"standardRate", @"StandardRateFormat": @"standardRateFormat", @"Cost": @"cost", @"OvertimeRateFormat": @"overtimeRateFormat", @"OvertimeCost": @"overtimeCost", @"CostPerUse": @"costPerUse", @"ActualCost": @"actualCost", @"ActualOvertimeCost": @"actualOvertimeCost", @"RemainingCost": @"remainingCost", @"RemainingOvertimeCost": @"remainingOvertimeCost", @"WorkVariance": @"workVariance", @"CostVariance": @"costVariance", @"Sv": @"sv", @"Cv": @"cv", @"Acwp": @"acwp", @"CalendarUid": @"calendarUid", @"NotesText": @"notesText", @"Bcws": @"bcws", @"Bcwp": @"bcwp", @"IsGeneric": @"isGeneric", @"IsInactive": @"isInactive", @"IsEnterprise": @"isEnterprise", @"BookingType": @"bookingType", @"ActualWorkProtected": @"actualWorkProtected", @"ActualOvertimeWorkProtected": @"actualOvertimeWorkProtected", @"ActiveDirectoryGuid": @"activeDirectoryGuid", @"CreationDate": @"creationDate", @"CostCenter": @"costCenter", @"IsCostResource": @"isCostResource", @"TeamAssignmentPool": @"teamAssignmentPool", @"AssignmentOwner": @"assignmentOwner", @"AssignmentOwnerGuid": @"assignmentOwnerGuid", @"IsBudget": @"isBudget", @"BudgetWork": @"budgetWork", @"BudgetCost": @"budgetCost", @"OvertimeRate": @"overtimeRate", @"BaselineWork": @"baselineWork", @"BaselineCost": @"baselineCost", @"BaselineBcws": @"baselineBcws", @"BaselineBcwp": @"baselineBcwp", @"Baseline1Work": @"baseline1Work", @"Baseline1Cost": @"baseline1Cost", @"Baseline1Bcws": @"baseline1Bcws", @"Baseline1Bcwp": @"baseline1Bcwp", @"Baseline2Work": @"baseline2Work", @"Baseline2Cost": @"baseline2Cost", @"Baseline2Bcws": @"baseline2Bcws", @"Baseline2Bcwp": @"baseline2Bcwp", @"Baseline3Work": @"baseline3Work", @"Baseline3Cost": @"baseline3Cost", @"Baseline3Bcws": @"baseline3Bcws", @"Baseline3Bcwp": @"baseline3Bcwp", @"Baseline4Work": @"baseline4Work", @"Baseline4Cost": @"baseline4Cost", @"Baseline4Bcws": @"baseline4Bcws", @"Baseline4Bcwp": @"baseline4Bcwp", @"Baseline5Work": @"baseline5Work", @"Baseline5Cost": @"baseline5Cost", @"Baseline5Bcws": @"baseline5Bcws", @"Baseline5Bcwp": @"baseline5Bcwp", @"Baseline6Work": @"baseline6Work", @"Baseline6Cost": @"baseline6Cost", @"Baseline6Bcws": @"baseline6Bcws", @"Baseline6Bcwp": @"baseline6Bcwp", @"Baseline7Work": @"baseline7Work", @"Baseline7Cost": @"baseline7Cost", @"Baseline7Bcws": @"baseline7Bcws", @"Baseline7Bcwp": @"baseline7Bcwp", @"Baseline8Work": @"baseline8Work", @"Baseline8Cost": @"baseline8Cost", @"Baseline8Bcws": @"baseline8Bcws", @"Baseline8Bcwp": @"baseline8Bcwp", @"Baseline9Work": @"baseline9Work", @"Baseline9Cost": @"baseline9Cost", @"Baseline9Bcws": @"baseline9Bcws", @"Baseline9Bcwp": @"baseline9Bcwp", @"Baseline10Work": @"baseline10Work", @"Baseline10Cost": @"baseline10Cost", @"Baseline10Bcws": @"baseline10Bcws", @"Baseline10Bcwp": @"baseline10Bcwp", @"ExtendedAttributes": @"extendedAttributes", @"OutlineCodes": @"outlineCodes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"name", @"uid", @"_id", @"type", @"isNull", @"initials", @"phonetics", @"ntAccount", @"materialLabel", @"code", @"group", @"emailAddress", @"hyperlink", @"hyperlinkAddress", @"hyperlinkSubAddress", @"maxUnits", @"peakUnits", @"overAllocated", @"availableFrom", @"availableTo", @"start", @"finish", @"canLevel", @"accrueAt", @"work", @"regularWork", @"overtimeWork", @"actualWork", @"remainingWork", @"actualOvertimeWork", @"remainingOvertimeWork", @"percentWorkComplete", @"standardRate", @"standardRateFormat", @"cost", @"overtimeRateFormat", @"overtimeCost", @"costPerUse", @"actualCost", @"actualOvertimeCost", @"remainingCost", @"remainingOvertimeCost", @"workVariance", @"costVariance", @"sv", @"cv", @"acwp", @"calendarUid", @"notesText", @"bcws", @"bcwp", @"isGeneric", @"isInactive", @"isEnterprise", @"bookingType", @"actualWorkProtected", @"actualOvertimeWorkProtected", @"activeDirectoryGuid", @"creationDate", @"costCenter", @"isCostResource", @"teamAssignmentPool", @"assignmentOwner", @"assignmentOwnerGuid", @"isBudget", @"budgetWork", @"budgetCost", @"overtimeRate", @"baselineWork", @"baselineCost", @"baselineBcws", @"baselineBcwp", @"baseline1Work", @"baseline1Cost", @"baseline1Bcws", @"baseline1Bcwp", @"baseline2Work", @"baseline2Cost", @"baseline2Bcws", @"baseline2Bcwp", @"baseline3Work", @"baseline3Cost", @"baseline3Bcws", @"baseline3Bcwp", @"baseline4Work", @"baseline4Cost", @"baseline4Bcws", @"baseline4Bcwp", @"baseline5Work", @"baseline5Cost", @"baseline5Bcws", @"baseline5Bcwp", @"baseline6Work", @"baseline6Cost", @"baseline6Bcws", @"baseline6Bcwp", @"baseline7Work", @"baseline7Cost", @"baseline7Bcws", @"baseline7Bcwp", @"baseline8Work", @"baseline8Cost", @"baseline8Bcws", @"baseline8Bcwp", @"baseline9Work", @"baseline9Cost", @"baseline9Bcws", @"baseline9Bcwp", @"baseline10Work", @"baseline10Cost", @"baseline10Bcws", @"baseline10Bcwp", @"extendedAttributes", @"outlineCodes"];

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
