#import "ASPExtendedAttributeDefinition.h"

@implementation ASPExtendedAttributeDefinition

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"FieldId": @"fieldId", @"FieldName": @"fieldName", @"CfType": @"cfType", @"Guid": @"guid", @"ElementType": @"elementType", @"MaxMultiValues": @"maxMultiValues", @"UserDef": @"userDef", @"Alias": @"alias", @"SecondaryPid": @"secondaryPid", @"AutoRollDown": @"autoRollDown", @"DefaultGuid": @"defaultGuid", @"LookupUid": @"lookupUid", @"PhoneticsAlias": @"phoneticsAlias", @"RollupType": @"rollupType", @"CalculationType": @"calculationType", @"Formula": @"formula", @"RestrictValues": @"restrictValues", @"ValuelistSortOrder": @"valuelistSortOrder", @"AppendNewValues": @"appendNewValues", @"Default": @"_default", @"ValueList": @"valueList", @"SecondaryGuid": @"secondaryGuid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"fieldId", @"fieldName", @"cfType", @"guid", @"elementType", @"maxMultiValues", @"userDef", @"alias", @"secondaryPid", @"autoRollDown", @"defaultGuid", @"lookupUid", @"phoneticsAlias", @"rollupType", @"calculationType", @"formula", @"restrictValues", @"valuelistSortOrder", @"appendNewValues", @"_default", @"valueList", @"secondaryGuid"];

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
