//
//  ASPTasksApiTestCase.m
//  Aspose.Tasks_Cloud_SDK_For_Objective_C
//
//  Created by Muhammad Sohail Ismail on 29/11/2015.
//  Copyright © 2015 Aspose. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASPTasksApi.h"
#import "ASPStorageApi.h"
#import "AppDelegate.h"

@interface ASPTasksApiTestCase : XCTestCase
@property(nonatomic, strong) ASPTasksApi *tasksApi;
@end

@implementation ASPTasksApiTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.tasksApi = [[ASPTasksApi alloc] init];
    //Get App key and App SID from https://cloud.aspose.com
    [ASPApiClient setAppKey:ASPAppKey andAppSID:ASPAppSID];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)uploadFile:(NSString *) fileName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStorageApi *storageApi = [[ASPStorageApi alloc] init];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:[fileName stringByDeletingPathExtension] withExtension:[fileName pathExtension]];
    [storageApi putCreateWithCompletionBlock:fileName
                                        file:pathToFile
                                   versionId:nil
                                     storage:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to upload a specific file.");
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTaskDocumentWithFormat {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getTaskDocumentWithFormatWithCompletionBlock:fileName
                                                         format:@"pdf"
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(NSURL *output, NSError *error) {
                                                  XCTAssertNotNil(output, @"Failed to get a project document in specified format.");
                                                  [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTaskDocument {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getTaskDocumentWithCompletionBlock:fileName
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPTaskDocumentResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to represents a project document.");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectAssignments {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectAssignmentsWithCompletionBlock:fileName
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPAssignmentItemsResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to read project assignment items.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProjectAssignment {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi postProjectAssignmentWithCompletionBlock:fileName
                                                    taskUid:[NSNumber numberWithInt:1]
                                                resourceUid:[NSNumber numberWithInt:1]
                                                      units:nil
                                                   fileName:nil
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPAssignmentItemResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to add a new assignment to a project");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectAssignment {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectAssignmentWithCompletionBlock:fileName
                                             assignmentUid:[NSNumber numberWithInt:1]
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPAssignmentResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to read project assignment.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProjectAssignment {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteProjectAssignmentWithCompletionBlock:fileName
                                                assignmentUid:[NSNumber numberWithInt:1]
                                                      storage:nil
                                                       folder:nil
                                                     fileName:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to deletes a project assignment with all references to it.");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectCalendars {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectCalendarsWithCompletionBlock:fileName
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCalendarItemsResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read project calendar items.");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProjectCalendar {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPCalendar *calendar = [[ASPCalendar alloc] init];
    calendar.name = @"TestCalender";
    calendar.uid = [NSNumber numberWithInt:0];
    
    [self.tasksApi postProjectCalendarWithCompletionBlock:fileName
                                                 calendar:calendar
                                                 fileName:nil
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCalendarItemResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to add a new calendar to project file.");
                                            XCTAssertEqualObjects(output.status, @"Created");
                                            [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectCalendar {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectCalendarWithCompletionBlock:fileName
                                             calendarUid:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPCalendarResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to represents a project calendar.");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProjectCalendar {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteProjectCalendarWithCompletionBlock:fileName
                                                calendarUid:[NSNumber numberWithInt:2]
                                                    storage:nil
                                                     folder:nil
                                                   fileName:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to deletes a project calendar");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetCalendarExceptions {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getCalendarExceptionsWithCompletionBlock:fileName
                                                calendarUid:[NSNumber numberWithInt:1]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPCalendarExceptionsResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to get list of calendar exceptions.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCalendarExceptions {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPCalendarException *calendarException = [[ASPCalendarException alloc] init];
    calendarException.name = @"Test";
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [formatter setLocale:posix];
    [formatter setDateFormat:@"y-MM-dd"];
    
    NSString *fromDate = @"2015-10-20";
    calendarException.fromDate = [formatter dateFromString:fromDate];
    
    NSString *toDate = @"2015-10-22";
    calendarException.toDate = [formatter dateFromString:toDate];
    
    [self.tasksApi postCalendarExceptionsWithCompletionBlock:fileName
                                                 calendarUid:[NSNumber numberWithInt:1]
                                           calendarException:calendarException
                                                    fileName:nil
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               XCTAssertNotNil(output, @"Failed to add a new calendar exception to a calendar.");
                                               XCTAssertEqualObjects(output.status, @"Created");
                                               [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutCalendarException {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPCalendarException *calendarException = [[ASPCalendarException alloc] init];
    calendarException.name = @"Test";
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [formatter setLocale:posix];
    [formatter setDateFormat:@"y-MM-dd"];
    
    NSString *fromDate = @"2015-10-20";
    calendarException.fromDate = [formatter dateFromString:fromDate];
    
    NSString *toDate = @"2015-10-22";
    calendarException.toDate = [formatter dateFromString:toDate];
    
    [self.tasksApi putCalendarExceptionWithCompletionBlock:fileName
                                               calendarUid:[NSNumber numberWithInt:1]
                                                     index:[NSNumber numberWithInt:1]
                                         calendarException:calendarException
                                                  fileName:nil
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to updates calendar exception.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteCalendarException {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteCalendarExceptionWithCompletionBlock:fileName
                                                  calendarUid:[NSNumber numberWithInt:1]
                                                        index:[NSNumber numberWithInt:1]
                                                     fileName:nil
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to deletes calendar exception from calendar exceptions collection.");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetCriticalPath {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getCriticalPathWithCompletionBlock:fileName
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPTaskItemsResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to returns created report in PDF format.");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentProperties {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getDocumentPropertiesWithCompletionBlock:fileName
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPDocumentPropertiesResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to read document properties.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentProperty {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getDocumentPropertyWithCompletionBlock:fileName
                                             propertyName:@"Title"
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read document property by name.");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutDocumentProperty {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDocumentProperty *documentProperty = [[ASPDocumentProperty alloc] init];
    documentProperty.name = @"Title";
    documentProperty.value = @"New Title";
    
    [self.tasksApi putDocumentPropertyWithCompletionBlock:fileName
                                             propertyName:@"Title"
                                                _property:documentProperty
                                                  storage:nil
                                                   folder:nil
                                                 filename:nil
                                        completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to set/create document property.");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostDocumentProperty {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDocumentProperty *documentProperty = [[ASPDocumentProperty alloc] init];
    documentProperty.name = @"Title";
    documentProperty.value = @"New Title";

    [self.tasksApi postDocumentPropertyWithCompletionBlock:fileName
                                              propertyName:@"Title"
                                                 _property:documentProperty
                                                   storage:nil
                                                    folder:nil
                                                  filename:nil
                                         completionHandler:^(ASPDocumentPropertyResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to set/create document property");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetExtendedAttributes {
    
    NSString *fileName = @"ExtendedAttribute.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getExtendedAttributesWithCompletionBlock:fileName
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPExtendedAttributeItemsResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to represents a project document.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetExtendedAttributeByIndex {
    
    NSString *fileName = @"ExtendedAttribute.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getExtendedAttributeByIndexWithCompletionBlock:fileName
                                                            index:[NSNumber numberWithInt:1]
                                                          storage:nil
                                                           folder:nil
                                                completionHandler:^(ASPExtendedAttributeResponse *output, NSError *error) {
                                                    XCTAssertNotNil(output, @"Failed to represent a project extended attribute definition.");
                                                    XCTAssertEqualObjects(output.status, @"OK");
                                                    [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteExtendedAttributeByIndex {
    
    NSString *fileName = @"ExtendedAttribute.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteExtendedAttributeByIndexWithCompletionBlock:fileName
                                                               index:[NSNumber numberWithInt:1]
                                                             storage:nil
                                                              folder:nil
                                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                       XCTAssertNotNil(output, @"Failed to delete a project extended attribute.");
                                                       XCTAssertEqualObjects(output.status, @"OK");
                                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetOutlineCodes {
    
    NSString *fileName = @"Outlinecode.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getOutlineCodesWithCompletionBlock:fileName
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPOutlineCodeItemsResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to read outline codes.");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetOutlineCodeByIndex {
    
    NSString *fileName = @"Outlinecode.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getOutlineCodeByIndexWithCompletionBlock:fileName
                                                      index:[NSNumber numberWithInt:1]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPOutlineCodeResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to get outline code by index.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteOutlineCodeByIndex {
    
    NSString *fileName = @"Outlinecode.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteOutlineCodeByIndexWithCompletionBlock:fileName
                                                         index:[NSNumber numberWithInt:1]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 XCTAssertNotNil(output, @"Failed to deletes a project outline code");
                                                 XCTAssertEqualObjects(output.status, @"OK");
                                                 [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetReportPdf {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getReportPdfWithCompletionBlock:fileName
                                              type:@"WorkOverview"
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(NSURL *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to return created report in PDF format.");
                                     [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectResources {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectResourcesWithCompletionBlock:fileName
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPResourceItemsResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read project resources.");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProjectResource {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi postProjectResourceWithCompletionBlock:fileName
                                             resourceName:@"Resource6"
                                         beforeResourceId:[NSNumber numberWithInt:1]
                                                 fileName:nil
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPResourceItemResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to add a new resource to a project.");
                                            XCTAssertEqualObjects(output.status, @"Created");
                                            [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectResource {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectResourceWithCompletionBlock:fileName
                                             resourceUid:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPResourceResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to get project resource.");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProjectResource {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteProjectResourceWithCompletionBlock:fileName
                                                resourceUid:[NSNumber numberWithInt:1]
                                                    storage:nil
                                                     folder:nil
                                                   fileName:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to deletes a project resource with all references to it.");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetResourceAssignments {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getResourceAssignmentsWithCompletionBlock:fileName
                                                 resourceUid:[NSNumber numberWithInt:1]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPAssignmentsResponse *output, NSError *error) {
                                               XCTAssertNotNil(output, @"Failed to get resource assignments.");
                                               XCTAssertEqualObjects(output.status, @"OK");
                                               [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTaskLinks {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getTaskLinksWithCompletionBlock:fileName
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPTaskLinksResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to read task links.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostTaskLink {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTaskLink *taskLink = [[ASPTaskLink alloc] init];
    taskLink.index = [NSNumber numberWithInt:2];
    taskLink.predecessorUid = [NSNumber numberWithInt:1];
    taskLink.successorUid = [NSNumber numberWithInt:2];
    
    [self.tasksApi postTaskLinkWithCompletionBlock:fileName
                                               dto:taskLink
                                           storage:nil
                                            folder:nil
                                          fileName:nil
                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                     XCTAssertNotNil(output, @"Failed to add a new task link to a project.");
                                     XCTAssertEqualObjects(output.status, @"OK");
                                     [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutTaskLink {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPTaskLink *taskLink = [[ASPTaskLink alloc] init];
    taskLink.index = [NSNumber numberWithInt:1];
    taskLink.predecessorUid = [NSNumber numberWithInt:0];
    taskLink.successorUid = [NSNumber numberWithInt:1];
    
    [self.tasksApi putTaskLinkWithCompletionBlock:fileName
                                            index:[NSNumber numberWithInt:1]
                                              dto:taskLink
                                          storage:nil
                                           folder:nil
                                         fileName:nil
                                completionHandler:^(ASPTaskLinkResponse *output, NSError *error) {
                                    XCTAssertNotNil(output, @"Failed to updates task link.");
                                    XCTAssertEqualObjects(output.status, @"OK");
                                    [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteTaskLink {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteTaskLinkWithCompletionBlock:fileName
                                               index:[NSNumber numberWithInt:1]
                                             storage:nil
                                              folder:nil
                                            fileName:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to updates task link.");
                                       XCTAssertEqualObjects(output.status, @"OK");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectTasks {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectTasksWithCompletionBlock:fileName
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPTaskItemsResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to read project task items.");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProjectTask {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi postProjectTaskWithCompletionBlock:fileName
                                             taskName:@"NewTask"
                                         beforeTaskId:[NSNumber numberWithInt:1]
                                             fileName:nil
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPTaskItemResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to add a new task to a project.");
                                        XCTAssertEqualObjects(output.status, @"Created");
                                        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectTask {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectTaskWithCompletionBlock:fileName
                                             taskUid:[NSNumber numberWithInt:1]
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPTaskResponse *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to read project task.");
                                       XCTAssertEqualObjects(output.status, @"OK");
                                       [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteProjectTask {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi deleteProjectTaskWithCompletionBlock:fileName
                                                taskUid:[NSNumber numberWithInt:1]
                                                storage:nil
                                                 folder:nil
                                               fileName:nil
                                      completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                          XCTAssertNotNil(output, @"Failed to delete a project task with all references to it and rebuilds tasks tree.");
                                          XCTAssertEqualObjects(output.status, @"OK");
                                          [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTaskAssignments {
    
    NSString *fileName = @"sample-project-2.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getTaskAssignmentsWithCompletionBlock:fileName
                                                 taskUid:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPAssignmentsResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to get task assignments.");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutMoveTask {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi putMoveTaskWithCompletionBlock:fileName
                                          taskUid:[NSNumber numberWithInt:1]
                                    parentTaskUid:[NSNumber numberWithInt:2]
                                         fileName:nil
                                          storage:nil
                                           folder:nil
                                completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                    XCTAssertNotNil(output, @"Failed to move one task to another parent task");
                                    XCTAssertEqualObjects(output.status, @"OK");
                                    [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetTaskRecurringInfo {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getTaskRecurringInfoWithCompletionBlock:fileName
                                                   taskUid:[NSNumber numberWithInt:1]
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPRecurringInfoResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to get recurring info for the task.");
                                             XCTAssertEqualObjects(output.status, @"OK");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetProjectWbsDefinition {
    
    NSString *fileName = @"sample-project.mpp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.tasksApi getProjectWbsDefinitionWithCompletionBlock:fileName
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPWBSDefinitionResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to get project WBS Definition.");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

@end
