<?php

use Aspose\Tasks\TasksApi;
use Aspose\Storage\StorageApi;

class TasksApiTest extends PHPUnit_Framework_TestCase {

    protected $tasks;
    protected $storageApi;

    protected function setUp() {
	$this->tasks = new TasksApi();
	$this->storageApi = new StorageApi();
    }

   public function testDeleteCalendarException() {
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteCalendarException($name, $calendarUid = 1, $index = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteExtendedAttributeByIndex() {
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteExtendedAttributeByIndex($name, $index = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteOutlineCodeByIndex() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteOutlineCodeByIndex($name, $index = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteProjectAssignment() {
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteProjectAssignment($name, $assignmentUid = 1, $storage = null, $folder = null, $fileName = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteProjectCalendar() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteProjectCalendar($name, $calendarUid = 2, $storage = null, $folder = null, $fileName = 'tasks.mpp');
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteProjectResource() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteProjectResource($name, $resourceUid = 1, $storage = null, $folder = null, $fileName = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteProjectTask() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteProjectTask($name, $taskUid = 1, $storage = null, $folder = null, $fileName = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testDeleteTaskLink() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->DeleteTaskLink($name, $index = 1, $storage = null, $folder = null, $fileName = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testGetCalendarExceptions() {
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetCalendarExceptions($name, $calendarUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\CalendarExceptionsResponse', $result);
   }

   public function testGetCriticalPath() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetCriticalPath($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskItemsResponse', $result);
   }

   public function testGetDocumentProperties() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetDocumentProperties($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\DocumentPropertiesResponse', $result);
   }

   public function testGetDocumentProperty() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetDocumentProperty($name, $propertyName = "Author", $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\DocumentPropertyResponse', $result);
   }

   public function testGetExtendedAttributeByIndex() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetExtendedAttributeByIndex($name, $index = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\ExtendedAttributeResponse', $result);
   }

   public function testGetExtendedAttributes() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetExtendedAttributes($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\ExtendedAttributeItemsResponse', $result);
   }

   public function testGetOutlineCodeByIndex() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetOutlineCodeByIndex($name, $index = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\OutlineCodeResponse', $result);
   }

   public function testGetOutlineCodes() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetOutlineCodes($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\OutlineCodeItemsResponse', $result);
   }

   public function testGetProjectAssignment() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectAssignment($name, $assignmentUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\AssignmentResponse', $result);
   }

   public function testGetProjectAssignments() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectAssignments($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\AssignmentItemsResponse', $result);
   }

   public function testGetProjectCalendar() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectCalendar($name, $calendarUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\CalendarResponse', $result);
   }

   public function testGetProjectCalendars() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectCalendars($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\CalendarItemsResponse', $result);
   }

   public function testGetProjectResource() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectResource($name, $resourceUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\ResourceResponse', $result);
   }

   public function testGetProjectResources() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectResources($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\ResourceItemsResponse', $result);
   }

   public function testGetProjectTask() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectTask($name, $taskUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskResponse', $result);
   }

   public function testGetProjectTasks() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectTasks($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskItemsResponse', $result);
   }

     public function testGetReportPdf() {
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetReportPdf($name, $type = "WorkOverview", $storage = null, $folder = null);
	$this->assertSame(null,$result );

    }


   public function testGetResourceAssignments() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetResourceAssignments($name, $resourceUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\AssignmentsResponse', $result);
   }

   public function testGetTaskAssignments() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetTaskAssignments($name, $taskUid = 1, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\AssignmentsResponse', $result);
   }

   public function testGetTaskDocument() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetTaskDocument($name, $storage = null, $folder = null);
	$xml = simplexml_load_string($result);
	$status = $xml->Status;
	$this->assertEquals('OK', $status);
   }

   public function testGetTaskDocumentWithFormat() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetTaskDocumentWithFormat($name, $format = "pdf", $storage = null, $folder = null);
	$fh = fopen(getcwd() . '/Data/Output/test_tasks.pdf', 'w');
	fwrite($fh, $result);
	fclose($fh);
	$this->assertFileExists(getcwd() . '/Data/Output/test_tasks.pdf');
   }

   public function testGetTaskLinks() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetTaskLinks($name, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskLinksResponse', $result);
   }

   public function testPostCalendarExceptions() {
	$body = '{
                   "EnteredByOccurrences": true,
                   "FromDate": "2015-06-02",
                   "ToDate": "2015-06-02",
                   "Occurrences": 10,
                   "Name": "Non-working day exception",
                   "Type": "3",
                   "Period": 0,
                   "DaysOfWeek": [
                     "Monday"
                   ],
                   "MonthItem": "",
                   "MonthPosition": "",
                   "Month": "",
                   "MonthDay": 0,
                   "DayWorking": true,
                   "WorkingTimes": [
                     {
                       "FromTime": "2015-06-02T07:43:27.220Z",
                       "ToTime": "2015-06-02T07:43:27.220Z"
                     }
                   ]
                 }';
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostCalendarExceptions($name, $calendarUid = 1, $fileName = null, $storage = null, $folder = null, $body);
	$this->assertEquals(201, $result->Code);
   }

   public function testPostDocumentProperty() {
	$body = '{
                   "Name": "DefaultStandardRate",
                   "Value": 50,
                   "link": {
                       "Href": "www.aspose.com"
                   }
                 }';
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostDocumentProperty($name, $propertyName = "DefaultStandardRate", $storage = null, $folder = null, $filename = null, $body);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\DocumentPropertyResponse', $result);
   }

   public function testPostProjectAssignment() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostProjectAssignment($name, $taskUid = 1, $resourceUid = 1, $units = null, $fileName = null, $storage = null, $folder = null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\AssignmentItemResponse', $result);
   }

   public function testPostProjectCalendar() {
	$body = '{"Name":"ASPOSE CALENDAR","Uid":0,"Days":[{"DayType":1,"DayWorking":false,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[]},{"DayType":2,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":3,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":4,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":5,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":6,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":7,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T13:00:00"}]}],"Exceptions":[],"IsBaseCalendar":true,"BaseCalendar":null,"IsBaselineCalendar":false}';
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostProjectCalendar($name, $fileName = null, $storage = null, $folder = null, $body);
	$this->assertEquals(201, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\CalendarItemResponse', $result);
   }

   public function testPostProjectResource() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostProjectResource($name, $resourceName = null, $beforeResourceId = null, $fileName = null, $storage = null, $folder = null);
	$this->assertEquals(201, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\ResourceItemResponse', $result);
   }

   public function testPostProjectTask() {
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostProjectTask($name, $taskName = "Fixissue", $beforeTaskId = 2, $fileName = null, $storage = null, $folder = null);
	$this->assertEquals(201, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskItemResponse', $result);
   }

   public function testPostTaskLink() {
	$body = '{
                   "Link": {
                     "Href": "www.aspose.com",
                     "Rel": "",
                     "Type": "",
                     "Title": "Aspose"
                   },
                   "Index": 0,
                   "PredecessorUid": 1,
                   "SuccessorUid": 2,
                   "LinkType": "StartToStart",
                   "Lag": 0,
                   "LagFormat": "Day"
                 }';
	$name = 'test_tasks.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PostTaskLink($name, $storage = null, $folder = null, $fileName = null, $body);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testPutCalendarException() {

	$body = array("Name"=>"Test Exception", "FromDate"=>"2015-10-20", "ToDate"=>"2015-10-22");
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PutCalendarException($name, $calendarUid = 1, $index = 1, $fileName = "tasks.mpp", $storage = null, $folder = null, $body);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testPutDocumentProperty() {
	$body = array('Value' => 'Update Title Text Here');
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PutDocumentProperty($name, $propertyName = "Title", $storage = null, $folder = null, $filename = null, $body);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\DocumentPropertyResponse', $result);
   }

   public function testPutTaskLink() {
	$body = '{
                   "Link": {
                     "Href": "www.aspose.com",
                     "Rel": "",
                     "Type": "",
                     "Title": "Aspose"
                   },
                   "Index": 1,
                   "PredecessorUid": 1,
                   "SuccessorUid": 2,
                   "LinkType": "StartToStart",
                   "Lag": 0,
                   "LagFormat": "Day"
                 }';
	$name = 'sample.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PutTaskLink($name, $index = 1, $storage = null, $folder = null, $fileName = null, $body);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\TaskLinkResponse', $result);
   }


   public function testPutMoveTask() {
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->PutMoveTask($name, $taskUid = "1", $parentTaskUid = 2, $fileName = null, $storage = null, $folder=null);
	$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\SaaSposeResponse', $result);
   }

   public function testGetProjectWbsDefinition() {
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetProjectWbsDefinition($name, $storage = null, $folder = null);
	//$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\WBSDefinitionResponse', $result);
   }
    //GetTaskRecurringInfo
    public function testGetTaskRecurringInfo() {
	$name = 'sample-project.mpp';
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
	$result = $this->tasks->GetTaskRecurringInfo($name,$taskUid=1, $storage = null, $folder = null);
	//$this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\Tasks\Models\RecurringInfoResponse', $result);
    }
    
}
