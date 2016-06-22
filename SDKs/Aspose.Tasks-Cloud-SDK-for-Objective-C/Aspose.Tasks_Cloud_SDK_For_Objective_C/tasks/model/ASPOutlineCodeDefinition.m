#import "ASPOutlineCodeDefinition.h"

@implementation ASPOutlineCodeDefinition

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Guid": @"guid", @"FieldId": @"fieldId", @"FieldName": @"fieldName", @"Alias": @"alias", @"PhoneticAlias": @"phoneticAlias", @"Values": @"values", @"Enterprise": @"enterprise", @"EnterpriseOutlineCodeAlias": @"enterpriseOutlineCodeAlias", @"ResourceSubstitutionEnabled": @"resourceSubstitutionEnabled", @"LeafOnly": @"leafOnly", @"AllLevelsRequired": @"allLevelsRequired", @"OnlyTableValuesAllowed": @"onlyTableValuesAllowed", @"Masks": @"masks", @"ShowIndent": @"showIndent" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"guid", @"fieldId", @"fieldName", @"alias", @"phoneticAlias", @"values", @"enterprise", @"enterpriseOutlineCodeAlias", @"resourceSubstitutionEnabled", @"leafOnly", @"allLevelsRequired", @"onlyTableValuesAllowed", @"masks", @"showIndent"];

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
