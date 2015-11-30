#import "ASPRecurringInfo.h"

@implementation ASPRecurringInfo

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"RecurrencePattern": @"recurrencePattern", @"StartDate": @"startDate", @"EndDate": @"endDate", @"Duration": @"duration", @"Occurrences": @"occurrences", @"UseEndDate": @"useEndDate", @"DailyRepetitions": @"dailyRepetitions", @"DailyUseWorkdays": @"dailyUseWorkdays", @"WeeklyRepetitions": @"weeklyRepetitions", @"WeeklyDays": @"weeklyDays", @"MonthlyUseOrdinalDay": @"monthlyUseOrdinalDay", @"MonthlyOrdinalNumber": @"monthlyOrdinalNumber", @"MonthlyOrdinalDay": @"monthlyOrdinalDay", @"MonthlyOrdinalRepetitions": @"monthlyOrdinalRepetitions", @"MonthlyDay": @"monthlyDay", @"MonthlyRepetitions": @"monthlyRepetitions", @"YearlyUseOrdinalDay": @"yearlyUseOrdinalDay", @"YearlyDate": @"yearlyDate", @"YearlyOrdinalNumber": @"yearlyOrdinalNumber", @"YearlyOrdinalDay": @"yearlyOrdinalDay", @"YearlyOrdinalMonth": @"yearlyOrdinalMonth" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"recurrencePattern", @"startDate", @"endDate", @"duration", @"occurrences", @"useEndDate", @"dailyRepetitions", @"dailyUseWorkdays", @"weeklyRepetitions", @"weeklyDays", @"monthlyUseOrdinalDay", @"monthlyOrdinalNumber", @"monthlyOrdinalDay", @"monthlyOrdinalRepetitions", @"monthlyDay", @"monthlyRepetitions", @"yearlyUseOrdinalDay", @"yearlyDate", @"yearlyOrdinalNumber", @"yearlyOrdinalDay", @"yearlyOrdinalMonth"];

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
