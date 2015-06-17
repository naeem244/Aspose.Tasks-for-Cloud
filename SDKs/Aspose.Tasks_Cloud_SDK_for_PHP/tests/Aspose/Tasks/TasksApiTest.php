<?php

use Aspose\Tasks\TasksApi;

class TasksApiTest extends PHPUnit_Framework_TestCase {
    
    protected $tasks;

    protected function setUp()
    {        
        $this->tasks = new TasksApi();
    }
    
    public function testDeleteCalendarException()
    {
        $result = $this->tasks->DeleteCalendarException($name="sample.mpp", $calendarUid=1, $index=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteExtendedAttributeByIndex()
    {
        $result = $this->tasks->DeleteExtendedAttributeByIndex($name="sample.mpp", $index=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteOutlineCodeByIndex()
    {
        $result = $this->tasks->DeleteOutlineCodeByIndex($name="test_tasks.mpp", $index=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProjectAssignment()
    {
        $result = $this->tasks->DeleteProjectAssignment($name="sample.mpp", $assignmentUid=1, $storage = null, $folder = null, $fileName = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProjectCalendar()
    {
        $result = $this->tasks->DeleteProjectCalendar($name="sample.mpp", $calendarUid=2, $storage = null, $folder = null, $fileName = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProjectResource()
    {
        $result = $this->tasks->DeleteProjectResource($name="test_tasks.mpp", $resourceUid=1, $storage = null, $folder = null, $fileName = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteProjectTask()
    {
        $result = $this->tasks->DeleteProjectTask($name="test_tasks.mpp", $taskUid=1, $storage = null, $folder = null, $fileName = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteTaskLink()
    {
        $result = $this->tasks->DeleteTaskLink($name="test_tasks.mpp", $index=1, $storage = null, $folder = null, $fileName = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetCalendarExceptions()
    {
        $result = $this->tasks->GetCalendarExceptions($name="sample.mpp", $calendarUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetCriticalPath()
    {
        $result = $this->tasks->GetCriticalPath($name="test_tasks.mpp", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperties()
    {
        $result = $this->tasks->GetDocumentProperties($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperty()
    {
        $result = $this->tasks->GetDocumentProperty($name="test_tasks.mpp", $propertyName="Author", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetExtendedAttributeByIndex()
    {
        $result = $this->tasks->GetExtendedAttributeByIndex($name="test_tasks.mpp", $index=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }                        
    
    public function testGetExtendedAttributes()
    {
        $result = $this->tasks->GetExtendedAttributes($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetOutlineCodeByIndex()
    {
        $result = $this->tasks->GetOutlineCodeByIndex($name="test_tasks.mpp", $index=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetOutlineCodes()
    {
        $result = $this->tasks->GetOutlineCodes($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectAssignment()
    {
        $result = $this->tasks->GetProjectAssignment($name="test_tasks.mpp", $assignmentUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectAssignments()
    {
        $result = $this->tasks->GetProjectAssignments($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectCalendar()
    {
        $result = $this->tasks->GetProjectCalendar($name="test_tasks.mpp", $calendarUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectCalendars()
    {
        $result = $this->tasks->GetProjectCalendars($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectResource()
    {
        $result = $this->tasks->GetProjectResource($name="test_tasks.mpp", $resourceUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectResources()
    {
        $result = $this->tasks->GetProjectResources($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectTask()
    {
        $result = $this->tasks->GetProjectTask($name="test_tasks.mpp", $taskUid=1,  $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetProjectTasks()
    {
        $result = $this->tasks->GetProjectTasks($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    /*public function testGetReportPdf()
    {
        $result = $this->tasks->GetReportPdf($name="test_tasks.mpp", $type="ProjectOverview", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }*/
    
    public function testGetResourceAssignments()
    {
        $result = $this->tasks->GetResourceAssignments($name="test_tasks.mpp", $resourceUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetTaskAssignments()
    {
        $result = $this->tasks->GetTaskAssignments($name="test_tasks.mpp", $taskUid=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetTaskDocument()
    {
        $result = $this->tasks->GetTaskDocument($name="test_tasks.mpp", $storage = null, $folder = null);
        $xml = simplexml_load_string($result);
        $status = $xml->Status;
        $this->assertEquals('OK', $status);
    }
    
    public function testGetTaskDocumentWithFormat()
    {
        $result = $this->tasks->GetTaskDocumentWithFormat($name="test_tasks.mpp", $format="pdf", $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/test_tasks.pdf', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/test_tasks.pdf');
    }
    
    public function testGetTaskLinks()
    {
        $result = $this->tasks->GetTaskLinks($name="test_tasks.mpp", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostCalendarExceptions()
    {
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
        $result = $this->tasks->PostCalendarExceptions($name="sample.mpp", $calendarUid=1, $fileName = null, $storage = null, $folder = null, $body);
        $this->assertEquals(201, $result->Code);
    }
    
    public function testPostDocumentProperty()
    {
        $body = '{
                    "Name": "DefaultStandardRate",
                    "Value": 50,
                    "link": {
                        "Href": "www.aspose.com"
                    }
                  }';
        $result = $this->tasks->PostDocumentProperty($name="sample.mpp", $propertyName="DefaultStandardRate", $storage = null, $folder = null, $filename = null, $body);
        print_r($result);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostProjectAssignment()
    {
        $result = $this->tasks->PostProjectAssignment($name="test_tasks.mpp", $taskUid=1, $resourceUid=1, $units = null, $fileName = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostProjectCalendar()
    {
        $body = '{"Name":"ASPOSE CALENDAR","Uid":0,"Days":[{"DayType":1,"DayWorking":false,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[]},{"DayType":2,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":3,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":4,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":5,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":6,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T12:00:00"},{"FromTime":"2010-01-01T13:00:00","ToTime":"2010-01-01T18:00:00"}]},{"DayType":7,"DayWorking":true,"FromDate":"0001-01-01T00:00:00","ToDate":"0001-01-01T00:00:00","WorkingTimes":[{"FromTime":"2010-01-01T09:00:00","ToTime":"2010-01-01T13:00:00"}]}],"Exceptions":[],"IsBaseCalendar":true,"BaseCalendar":null,"IsBaselineCalendar":false}';
        $result = $this->tasks->PostProjectCalendar($name="test_tasks.mpp", $fileName = null, $storage = null, $folder = null, $body);
        $this->assertEquals(201, $result->Code);
    }
    
    public function testPostProjectResource()
    {
        $result = $this->tasks->PostProjectResource($name="test_tasks.mpp", $resourceName = null, $beforeResourceId = null, $fileName = null, $storage = null, $folder = null);
        $this->assertEquals(201, $result->Code);
    }
    
    public function testPostProjectTask()
    {
        $result = $this->tasks->PostProjectTask($name="test_tasks.mpp", $taskName="Fixissue", $beforeTaskId=2, $fileName = null, $storage = null, $folder = null);
        $this->assertEquals(201, $result->Code);
    }
    
    public function testPostTaskLink()
    {
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
        $result = $this->tasks->PostTaskLink($name="test_tasks.mpp", $storage = null, $folder = null, $fileName = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutCalendarException()
    {
        $body = '{
                    "EnteredByOccurrences": true,
                    "FromDate": "2015-06-02T07:43:27.220Z",
                    "ToDate": "2015-06-02T07:43:27.220Z",
                    "Occurrences": 0,
                    "Name": "string",
                    "Type": "string",
                    "Period": 0,
                    "DaysOfWeek": [
                      "string"
                    ],
                    "MonthItem": "string",
                    "MonthPosition": "string",
                    "Month": "string",
                    "MonthDay": 0,
                    "DayWorking": true,
                    "WorkingTimes": [
                      {
                        "FromTime": "2015-06-02T07:43:27.220Z",
                        "ToTime": "2015-06-02T07:43:27.220Z"
                      }
                    ]
                  }';
        $result = $this->tasks->PutCalendarException($name="sample.mpp", $calendarUid=1, $index=1, $fileName = null, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutDocumentProperty()
    {
        $body = array('Value'=>'Update Title Text Here');
        $result = $this->tasks->PutDocumentProperty($name="sample.mpp", $propertyName="Title", $storage = null, $folder = null, $filename = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutTaskLink()
    {
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
        $result = $this->tasks->PutTaskLink($name="sample.mpp", $index=1, $storage = null, $folder = null, $fileName = null, $body);
        $this->assertEquals(200, $result->Code);
    }

}    