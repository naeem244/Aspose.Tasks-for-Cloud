#import "ASPTasksApi.h"
#import "ASPQueryParamCollection.h"
#import "ASPAssignmentItemsResponse.h"
#import "ASPAssignmentItemResponse.h"
#import "ASPAssignmentResponse.h"
#import "ASPBaseResponse.h"
#import "ASPCalendarItemsResponse.h"
#import "ASPCalendarItemResponse.h"
#import "ASPCalendar.h"
#import "ASPCalendarResponse.h"
#import "ASPCalendarExceptionsResponse.h"
#import "ASPCalendarException.h"
#import "ASPTaskItemsResponse.h"
#import "ASPDocumentPropertiesResponse.h"
#import "ASPDocumentPropertyResponse.h"
#import "ASPDocumentProperty.h"
#import "ASPExtendedAttributeItemsResponse.h"
#import "ASPExtendedAttributeResponse.h"
#import "ASPOutlineCodeItemsResponse.h"
#import "ASPOutlineCodeResponse.h"
#import "ASPResourceItemsResponse.h"
#import "ASPResourceItemResponse.h"
#import "ASPResourceResponse.h"
#import "ASPAssignmentsResponse.h"
#import "ASPTaskLinksResponse.h"
#import "ASPTaskLink.h"
#import "ASPTaskLinkResponse.h"
#import "ASPTaskItemResponse.h"
#import "ASPTaskResponse.h"
#import "ASPRecurringInfoResponse.h"
#import "ASPWBSDefinitionResponse.h"


@interface ASPTasksApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation ASPTasksApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        ASPConfiguration *config = [ASPConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[ASPApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(ASPApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(ASPTasksApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static ASPTasksApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[ASPTasksApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ASPApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Get a project document in specified format.
///
///  @param name The name of the file.
///
///  @param format
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getTaskDocumentWithFormatWithCompletionBlock: (NSString*) name
                                                   format: (NSString*) format
                                                  storage: (NSString*) storage
                                                   folder: (NSString*) folder

                                        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTaskDocumentWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getTaskDocumentWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}

///
/// Represents a project document.
///
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskDocumentResponse*
///
-(NSNumber*) getTaskDocumentWithCompletionBlock: (NSString*) name
                                        storage: (NSString*) storage
                                         folder: (NSString*) folder

                              completionHandler: (void (^)(ASPTaskDocumentResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTaskDocument`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskDocumentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPTaskDocumentResponse*)data, error);
                                      }
            ];
}

///
/// Read project assignment items.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAssignmentItemsResponse*
///
-(NSNumber*) getProjectAssignmentsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAssignmentItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectAssignments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/assignments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAssignmentItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAssignmentItemsResponse*)data, error);
              }
          ];
}

///
/// Adds a new assignment to a project and returns assignment item in a response.
/// 
///  @param name The name of the file.
///
///  @param taskUid The unique id of the task to be assigned.
///
///  @param resourceUid The unique id of the resource to be assigned.
///
///  @param units The units for the new assignment. Default value is 1.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAssignmentItemResponse*
///
-(NSNumber*) postProjectAssignmentWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         resourceUid: (NSNumber*) resourceUid
         units: (NSNumber*) units
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAssignmentItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postProjectAssignment`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `postProjectAssignment`"];
    }
    
    // verify the required parameter 'resourceUid' is set
    if (resourceUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resourceUid` when calling `postProjectAssignment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/assignments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(taskUid != nil) {
        
        queryParams[@"taskUid"] = taskUid;
    }
    if(resourceUid != nil) {
        
        queryParams[@"resourceUid"] = resourceUid;
    }
    if(units != nil) {
        
        queryParams[@"units"] = units;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAssignmentItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAssignmentItemResponse*)data, error);
              }
          ];
}

///
/// Read project assignment.
/// 
///  @param name The name of the file.
///
///  @param assignmentUid Assignment Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAssignmentResponse*
///
-(NSNumber*) getProjectAssignmentWithCompletionBlock: (NSString*) name
         assignmentUid: (NSNumber*) assignmentUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAssignmentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectAssignment`"];
    }
    
    // verify the required parameter 'assignmentUid' is set
    if (assignmentUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `assignmentUid` when calling `getProjectAssignment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/assignments/{assignmentUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (assignmentUid != nil) {
        pathParams[@"assignmentUid"] = assignmentUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAssignmentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAssignmentResponse*)data, error);
              }
          ];
}

///
/// Deletes a project assignment with all references to it.
/// 
///  @param name The name of the file.
///
///  @param assignmentUid assignment Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteProjectAssignmentWithCompletionBlock: (NSString*) name
         assignmentUid: (NSNumber*) assignmentUid
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProjectAssignment`"];
    }
    
    // verify the required parameter 'assignmentUid' is set
    if (assignmentUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `assignmentUid` when calling `deleteProjectAssignment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/assignments/{assignmentUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (assignmentUid != nil) {
        pathParams[@"assignmentUid"] = assignmentUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read project calendar items.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCalendarItemsResponse*
///
-(NSNumber*) getProjectCalendarsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCalendarItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectCalendars`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCalendarItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCalendarItemsResponse*)data, error);
              }
          ];
}

///
/// Adds a new calendar to project file.
/// 
///  @param name The name of the file.
///
///  @param calendar Calendar DTO
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCalendarItemResponse*
///
-(NSNumber*) postProjectCalendarWithCompletionBlock: (NSString*) name
         calendar: (ASPCalendar*) calendar
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCalendarItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postProjectCalendar`"];
    }
    
    // verify the required parameter 'calendar' is set
    if (calendar == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendar` when calling `postProjectCalendar`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = calendar;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCalendarItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCalendarItemResponse*)data, error);
              }
          ];
}

///
/// Represents a project calendar.
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCalendarResponse*
///
-(NSNumber*) getProjectCalendarWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCalendarResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectCalendar`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `getProjectCalendar`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCalendarResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCalendarResponse*)data, error);
              }
          ];
}

///
/// Deletes a project calendar
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteProjectCalendarWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProjectCalendar`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `deleteProjectCalendar`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get list of calendar exceptions.
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCalendarExceptionsResponse*
///
-(NSNumber*) getCalendarExceptionsWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCalendarExceptionsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getCalendarExceptions`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `getCalendarExceptions`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}/calendarExceptions"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCalendarExceptionsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCalendarExceptionsResponse*)data, error);
              }
          ];
}

///
/// Adds a new calendar exception to a calendar.
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param calendarException CalendarException DTO
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCalendarExceptionsWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         calendarException: (ASPCalendarException*) calendarException
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCalendarExceptions`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `postCalendarExceptions`"];
    }
    
    // verify the required parameter 'calendarException' is set
    if (calendarException == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarException` when calling `postCalendarExceptions`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}/calendarExceptions"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = calendarException;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Updates calendar exception.
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param index Calendar exception index
///
///  @param calendarException CalendarException DTO
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putCalendarExceptionWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         index: (NSNumber*) index
         calendarException: (ASPCalendarException*) calendarException
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putCalendarException`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `putCalendarException`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `putCalendarException`"];
    }
    
    // verify the required parameter 'calendarException' is set
    if (calendarException == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarException` when calling `putCalendarException`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = calendarException;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Deletes calendar exception from calendar exceptions collection.
/// 
///  @param name The name of the file.
///
///  @param calendarUid Calendar Uid
///
///  @param index Calendar exception index
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteCalendarExceptionWithCompletionBlock: (NSString*) name
         calendarUid: (NSNumber*) calendarUid
         index: (NSNumber*) index
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteCalendarException`"];
    }
    
    // verify the required parameter 'calendarUid' is set
    if (calendarUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `calendarUid` when calling `deleteCalendarException`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `deleteCalendarException`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (calendarUid != nil) {
        pathParams[@"calendarUid"] = calendarUid;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Returns created report in PDF format.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskItemsResponse*
///
-(NSNumber*) getCriticalPathWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTaskItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getCriticalPath`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/criticalPath"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskItemsResponse*)data, error);
              }
          ];
}

///
/// Read document properties.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPDocumentPropertiesResponse*
///
-(NSNumber*) getDocumentPropertiesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPropertiesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/documentproperties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertiesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertiesResponse*)data, error);
              }
          ];
}

///
/// Read document property by name.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPDocumentPropertyResponse*
///
-(NSNumber*) getDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `getDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Set/create document property.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param _property {DocumentProperty} with new property value.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param filename Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPDocumentPropertyResponse*
///
-(NSNumber*) putDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         _property: (ASPDocumentProperty*) _property
         storage: (NSString*) storage
         folder: (NSString*) folder
         filename: (NSString*) filename
        
        completionHandler: (void (^)(ASPDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `putDocumentProperty`"];
    }
    
    // verify the required parameter '_property' is set
    if (_property == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_property` when calling `putDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(filename != nil) {
        
        queryParams[@"filename"] = filename;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = _property;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Set/create document property.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param _property {DocumentProperty} with new property value.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param filename Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPDocumentPropertyResponse*
///
-(NSNumber*) postDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         _property: (ASPDocumentProperty*) _property
         storage: (NSString*) storage
         folder: (NSString*) folder
         filename: (NSString*) filename
        
        completionHandler: (void (^)(ASPDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `postDocumentProperty`"];
    }
    
    // verify the required parameter '_property' is set
    if (_property == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_property` when calling `postDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(filename != nil) {
        
        queryParams[@"filename"] = filename;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = _property;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Represents a project document.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPExtendedAttributeItemsResponse*
///
-(NSNumber*) getExtendedAttributesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPExtendedAttributeItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getExtendedAttributes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/extendedAttributes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPExtendedAttributeItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPExtendedAttributeItemsResponse*)data, error);
              }
          ];
}

///
/// Represents a project extended attribute definition.
/// 
///  @param name The name of the file.
///
///  @param index Index of extended attribute
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPExtendedAttributeResponse*
///
-(NSNumber*) getExtendedAttributeByIndexWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPExtendedAttributeResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getExtendedAttributeByIndex`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `getExtendedAttributeByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/extendedAttributes/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPExtendedAttributeResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPExtendedAttributeResponse*)data, error);
              }
          ];
}

///
/// Delete a project extended attribute.
/// 
///  @param name The name of the file.
///
///  @param index Index of extended attribute
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteExtendedAttributeByIndexWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteExtendedAttributeByIndex`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `deleteExtendedAttributeByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/extendedAttributes/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read outline codes.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPOutlineCodeItemsResponse*
///
-(NSNumber*) getOutlineCodesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPOutlineCodeItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getOutlineCodes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/outlineCodes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOutlineCodeItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOutlineCodeItemsResponse*)data, error);
              }
          ];
}

///
/// Get outline code by index.
/// 
///  @param name The name of the file.
///
///  @param index Outline code index
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPOutlineCodeResponse*
///
-(NSNumber*) getOutlineCodeByIndexWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPOutlineCodeResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getOutlineCodeByIndex`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `getOutlineCodeByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/outlineCodes/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOutlineCodeResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOutlineCodeResponse*)data, error);
              }
          ];
}

///
/// Deletes a project outline code
/// 
///  @param name The name of the file.
///
///  @param index Outline code index
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteOutlineCodeByIndexWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteOutlineCodeByIndex`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `deleteOutlineCodeByIndex`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/outlineCodes/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Returns created report in PDF format.
/// 
///  @param name The name of the file.
///
///  @param type A type of the project's graphical report.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getReportPdfWithCompletionBlock: (NSString*) name
         type: (NSString*) type
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getReportPdf`"];
    }
    
    // verify the required parameter 'type' is set
    if (type == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `type` when calling `getReportPdf`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/report"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(type != nil) {
        
        queryParams[@"type"] = type;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Read project resources.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPResourceItemsResponse*
///
-(NSNumber*) getProjectResourcesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPResourceItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectResources`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/resources"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPResourceItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPResourceItemsResponse*)data, error);
              }
          ];
}

///
/// Add a new resource to a project.
/// 
///  @param name The name of the file.
///
///  @param resourceName The name of the new resource. The default value is an empty string
///
///  @param beforeResourceId The id of the resource to insert the new resource before. The default value is the id of the last resource in a project file.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPResourceItemResponse*
///
-(NSNumber*) postProjectResourceWithCompletionBlock: (NSString*) name
         resourceName: (NSString*) resourceName
         beforeResourceId: (NSNumber*) beforeResourceId
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPResourceItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postProjectResource`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/resources"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(resourceName != nil) {
        
        queryParams[@"resourceName"] = resourceName;
    }
    if(beforeResourceId != nil) {
        
        queryParams[@"beforeResourceId"] = beforeResourceId;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPResourceItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPResourceItemResponse*)data, error);
              }
          ];
}

///
/// Get project resource.
/// 
///  @param name The name of the file.
///
///  @param resourceUid Resource Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPResourceResponse*
///
-(NSNumber*) getProjectResourceWithCompletionBlock: (NSString*) name
         resourceUid: (NSNumber*) resourceUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPResourceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectResource`"];
    }
    
    // verify the required parameter 'resourceUid' is set
    if (resourceUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resourceUid` when calling `getProjectResource`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/resources/{resourceUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (resourceUid != nil) {
        pathParams[@"resourceUid"] = resourceUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPResourceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPResourceResponse*)data, error);
              }
          ];
}

///
/// Deletes a project resource with all references to it
/// 
///  @param name The name of the file.
///
///  @param resourceUid Resource Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteProjectResourceWithCompletionBlock: (NSString*) name
         resourceUid: (NSNumber*) resourceUid
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProjectResource`"];
    }
    
    // verify the required parameter 'resourceUid' is set
    if (resourceUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resourceUid` when calling `deleteProjectResource`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/resources/{resourceUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (resourceUid != nil) {
        pathParams[@"resourceUid"] = resourceUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get resource assignments.
/// 
///  @param name The name of the file.
///
///  @param resourceUid Resource Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAssignmentsResponse*
///
-(NSNumber*) getResourceAssignmentsWithCompletionBlock: (NSString*) name
         resourceUid: (NSNumber*) resourceUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAssignmentsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getResourceAssignments`"];
    }
    
    // verify the required parameter 'resourceUid' is set
    if (resourceUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resourceUid` when calling `getResourceAssignments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/resources/{resourceUid}/assignments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (resourceUid != nil) {
        pathParams[@"resourceUid"] = resourceUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAssignmentsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAssignmentsResponse*)data, error);
              }
          ];
}

///
/// Read task links.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskLinksResponse*
///
-(NSNumber*) getTaskLinksWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTaskLinksResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTaskLinks`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/taskLinks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskLinksResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskLinksResponse*)data, error);
              }
          ];
}

///
/// Adds a new task link to a project.
/// 
///  @param name The name of the file.
///
///  @param dto TaskLink dto
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postTaskLinkWithCompletionBlock: (NSString*) name
         dto: (ASPTaskLink*) dto
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postTaskLink`"];
    }
    
    // verify the required parameter 'dto' is set
    if (dto == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dto` when calling `postTaskLink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/taskLinks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = dto;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Updates task link.
/// 
///  @param name The name of the file.
///
///  @param index Task link index
///
///  @param dto TaskLink dto
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPTaskLinkResponse*
///
-(NSNumber*) putTaskLinkWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         dto: (ASPTaskLink*) dto
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPTaskLinkResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putTaskLink`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `putTaskLink`"];
    }
    
    // verify the required parameter 'dto' is set
    if (dto == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dto` when calling `putTaskLink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/taskLinks/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = dto;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskLinkResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskLinkResponse*)data, error);
              }
          ];
}

///
/// Updates task link.
/// 
///  @param name The name of the file.
///
///  @param index Task link index
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteTaskLinkWithCompletionBlock: (NSString*) name
         index: (NSNumber*) index
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteTaskLink`"];
    }
    
    // verify the required parameter 'index' is set
    if (index == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `index` when calling `deleteTaskLink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/taskLinks/{index}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (index != nil) {
        pathParams[@"index"] = index;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read project task items.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskItemsResponse*
///
-(NSNumber*) getProjectTasksWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTaskItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectTasks`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskItemsResponse*)data, error);
              }
          ];
}

///
/// Add a new task to a project.
/// 
///  @param name The name of the file.
///
///  @param taskName The name of the new task. The default value is an empty string
///
///  @param beforeTaskId The id of the task to insert the new task before. The default value is the id of the last task in a project file.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskItemResponse*
///
-(NSNumber*) postProjectTaskWithCompletionBlock: (NSString*) name
         taskName: (NSString*) taskName
         beforeTaskId: (NSNumber*) beforeTaskId
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTaskItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postProjectTask`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(taskName != nil) {
        
        queryParams[@"taskName"] = taskName;
    }
    if(beforeTaskId != nil) {
        
        queryParams[@"beforeTaskId"] = beforeTaskId;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskItemResponse*)data, error);
              }
          ];
}

///
/// Read project task.
/// 
///  @param name The name of the file.
///
///  @param taskUid Task Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPTaskResponse*
///
-(NSNumber*) getProjectTaskWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTaskResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectTask`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `getProjectTask`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks/{taskUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (taskUid != nil) {
        pathParams[@"taskUid"] = taskUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTaskResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTaskResponse*)data, error);
              }
          ];
}

///
/// Deletes a project task with all references to it and rebuilds tasks tree.
/// 
///  @param name The name of the file.
///
///  @param taskUid Task Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteProjectTaskWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         storage: (NSString*) storage
         folder: (NSString*) folder
         fileName: (NSString*) fileName
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteProjectTask`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `deleteProjectTask`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks/{taskUid}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (taskUid != nil) {
        pathParams[@"taskUid"] = taskUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get task assignments.
/// 
///  @param name The name of the file.
///
///  @param taskUid Task Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPAssignmentsResponse*
///
-(NSNumber*) getTaskAssignmentsWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAssignmentsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTaskAssignments`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `getTaskAssignments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks/{taskUid}/assignments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (taskUid != nil) {
        pathParams[@"taskUid"] = taskUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAssignmentsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAssignmentsResponse*)data, error);
              }
          ];
}

///
/// Move one task to another parent task
/// 
///  @param name The name of the file.
///
///  @param taskUid Task Uid
///
///  @param parentTaskUid Uniquer id of the task.This task represent parent task for another task.
///
///  @param fileName The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putMoveTaskWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         parentTaskUid: (NSNumber*) parentTaskUid
         fileName: (NSString*) fileName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putMoveTask`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `putMoveTask`"];
    }
    
    // verify the required parameter 'parentTaskUid' is set
    if (parentTaskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `parentTaskUid` when calling `putMoveTask`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks/{taskUid}/move"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (taskUid != nil) {
        pathParams[@"taskUid"] = taskUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(parentTaskUid != nil) {
        
        queryParams[@"parentTaskUid"] = parentTaskUid;
    }
    if(fileName != nil) {
        
        queryParams[@"fileName"] = fileName;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get recurring info for the task
/// 
///  @param name The name of the file.
///
///  @param taskUid Task Uid
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPRecurringInfoResponse*
///
-(NSNumber*) getTaskRecurringInfoWithCompletionBlock: (NSString*) name
         taskUid: (NSNumber*) taskUid
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPRecurringInfoResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getTaskRecurringInfo`"];
    }
    
    // verify the required parameter 'taskUid' is set
    if (taskUid == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taskUid` when calling `getTaskRecurringInfo`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/tasks/{taskUid}/recurringInfo"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (taskUid != nil) {
        pathParams[@"taskUid"] = taskUid;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPRecurringInfoResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPRecurringInfoResponse*)data, error);
              }
          ];
}

///
/// Get project WBS Definition.
/// 
///  @param name The name of the file.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWBSDefinitionResponse*
///
-(NSNumber*) getProjectWbsDefinitionWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWBSDefinitionResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getProjectWbsDefinition`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tasks/{name}/wbsDefinition"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWBSDefinitionResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWBSDefinitionResponse*)data, error);
              }
          ];
}



@end
