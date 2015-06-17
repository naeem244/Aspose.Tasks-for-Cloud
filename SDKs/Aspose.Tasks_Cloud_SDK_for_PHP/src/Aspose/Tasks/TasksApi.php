<?php

namespace Aspose\Tasks;

use Aspose\Tasks\ApiException as Exception;
use Aspose\Tasks\ApiClient;

class TasksApi {

    function __construct() {
        $this->apiClient = new ApiClient();
    }

    /**
     * DeleteProjectAssignment
     * Deletes a project assignment with all references to it.
     * name, string: The name of the file. (required)

     * assignmentUid, int: assignment Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProjectAssignment($name, $assignmentUid, $storage = null, $folder = null, $fileName = null) {
        // verify required params are set
        if ($name == '' || $assignmentUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($assignmentUid != null) {
            $resourcePath = str_replace("{" . "assignmentUid" . "}", $this->apiClient->toQueryValue($assignmentUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&assignmentUid={" . "assignmentUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetProjectAssignment
     * Read project assignment.
     * name, string: The name of the file. (required)

     * assignmentUid, int: Assignment Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AssignmentResponse
     */
    public function GetProjectAssignment($name, $assignmentUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $assignmentUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($assignmentUid != null) {
            $resourcePath = str_replace("{" . "assignmentUid" . "}", $this->apiClient->toQueryValue($assignmentUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&assignmentUid={" . "assignmentUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AssignmentResponse');
        return $responseObject;
    }

    /**
     * GetProjectAssignments
     * Read project assignment items.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AssignmentItemsResponse
     */
    public function GetProjectAssignments($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AssignmentItemsResponse');
        return $responseObject;
    }

    /**
     * PostProjectAssignment
     * Adds a new assignment to a project and returns assignment item in a response.
     * name, string: The name of the file. (required)

     * taskUid, int: The unique id of the task to be assigned. (required)

     * resourceUid, int: The unique id of the resource to be assigned. (required)

     * units, float: The units for the new assignment. Default value is 1. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AssignmentItemResponse
     */
    public function PostProjectAssignment($name, $taskUid, $resourceUid, $units = null, $fileName = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $taskUid == '' || $resourceUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/assignments/?appSid={appSid}&amp;taskUid={taskUid}&amp;resourceUid={resourceUid}&amp;units={units}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($taskUid != null) {
            $resourcePath = str_replace("{" . "taskUid" . "}", $this->apiClient->toQueryValue($taskUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&taskUid={" . "taskUid" . "}", "", $resourcePath);
        }
        if ($resourceUid != null) {
            $resourcePath = str_replace("{" . "resourceUid" . "}", $this->apiClient->toQueryValue($resourceUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&resourceUid={" . "resourceUid" . "}", "", $resourcePath);
        }
        if ($units != null) {
            $resourcePath = str_replace("{" . "units" . "}", $this->apiClient->toQueryValue($units), $resourcePath);
        } else {
            $resourcePath = str_replace("&units={" . "units" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AssignmentItemResponse');
        return $responseObject;
    }

    /**
     * DeleteCalendarException
     * Deletes calendar exception from calendar exceptions collection.
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * index, int: Calendar exception index (required)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteCalendarException($name, $calendarUid, $index, $fileName = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $calendarUid == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * DeleteProjectCalendar
     * Deletes a project calendar
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProjectCalendar($name, $calendarUid, $storage = null, $folder = null, $fileName = null) {
        // verify required params are set
        if ($name == '' || $calendarUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetCalendarExceptions
     * Get list of calendar exceptions.
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CalendarExceptionsResponse
     */
    public function GetCalendarExceptions($name, $calendarUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $calendarUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CalendarExceptionsResponse');
        return $responseObject;
    }

    /**
     * GetProjectCalendar
     * Represents a project calendar.
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CalendarResponse
     */
    public function GetProjectCalendar($name, $calendarUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $calendarUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CalendarResponse');
        return $responseObject;
    }

    /**
     * GetProjectCalendars
     * Read project calendar items.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return CalendarItemsResponse
     */
    public function GetProjectCalendars($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CalendarItemsResponse');
        return $responseObject;
    }

    /**
     * PostCalendarExceptions
     * Adds a new calendar exception to a calendar.
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, CalendarException: CalendarException DTO (required)

     * @return SaaSposeResponse
     */
    public function PostCalendarExceptions($name, $calendarUid, $fileName = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $calendarUid == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PostProjectCalendar
     * Adds a new calendar to project file.
     * name, string: The name of the file. (required)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, Calendar: Calendar DTO (required)

     * @return CalendarItemResponse
     */
    public function PostProjectCalendar($name, $fileName = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'CalendarItemResponse');
        return $responseObject;
    }

    /**
     * PutCalendarException
     * Updates calendar exception.
     * name, string: The name of the file. (required)

     * calendarUid, int: Calendar Uid (required)

     * index, int: Calendar exception index (required)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * body, CalendarException: CalendarException DTO (required)

     * @return SaaSposeResponse
     */
    public function PutCalendarException($name, $calendarUid, $index, $fileName = null, $storage = null, $folder = null, $body) {
        // verify required params are set
        if ($name == '' || $calendarUid == '' || $index == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($calendarUid != null) {
            $resourcePath = str_replace("{" . "calendarUid" . "}", $this->apiClient->toQueryValue($calendarUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&calendarUid={" . "calendarUid" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetCriticalPath
     * Returns created report in PDF format.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return TaskItemsResponse
     */
    public function GetCriticalPath($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/criticalPath/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskItemsResponse');
        return $responseObject;
    }

    /**
     * GetTaskDocument
     * Represents a project document.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetTaskDocument($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetTaskDocumentWithFormat
     * Represents a project document with format
     * name, string: The name of the file. (required)

     * format, string: The original format of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetTaskDocumentWithFormat($name, $format, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $format == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($format != null) {
            $resourcePath = str_replace("{" . "format" . "}", $this->apiClient->toQueryValue($format), $resourcePath);
        } else {
            $resourcePath = str_replace("&format={" . "format" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * GetDocumentProperties
     * Read document properties.
     * name, string: The document name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return DocumentPropertiesResponse
     */
    public function GetDocumentProperties($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertiesResponse');
        return $responseObject;
    }

    /**
     * GetDocumentProperty
     * Read document property by name.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return DocumentPropertyResponse
     */
    public function GetDocumentProperty($name, $propertyName, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $propertyName == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * PostDocumentProperty
     * Set/create document property.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * filename, string: Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * body, DocumentProperty: with new property value. (required)

     * @return DocumentPropertyResponse
     */
    public function PostDocumentProperty($name, $propertyName, $storage = null, $folder = null, $filename = null, $body) {
        // verify required params are set
        if ($name == '' || $propertyName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($filename != null) {
            $resourcePath = str_replace("{" . "filename" . "}", $this->apiClient->toQueryValue($filename), $resourcePath);
        } else {
            $resourcePath = str_replace("&filename={" . "filename" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * PutDocumentProperty
     * Set/create document property.
     * name, string: The document name. (required)

     * propertyName, string: The property name. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * filename, string: Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * body, DocumentProperty: with new property value. (required)

     * @return DocumentPropertyResponse
     */
    public function PutDocumentProperty($name, $propertyName, $storage = null, $folder = null, $filename = null, $body) {
        // verify required params are set
        if ($name == '' || $propertyName == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($propertyName != null) {
            $resourcePath = str_replace("{" . "propertyName" . "}", $this->apiClient->toQueryValue($propertyName), $resourcePath);
        } else {
            $resourcePath = str_replace("&propertyName={" . "propertyName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($filename != null) {
            $resourcePath = str_replace("{" . "filename" . "}", $this->apiClient->toQueryValue($filename), $resourcePath);
        } else {
            $resourcePath = str_replace("&filename={" . "filename" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'DocumentPropertyResponse');
        return $responseObject;
    }

    /**
     * DeleteExtendedAttributeByIndex
     * Delete a project extended attribute.
     * name, string: The name of the file. (required)

     * index, int: Index of extended attribute (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteExtendedAttributeByIndex($name, $index, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetExtendedAttributeByIndex
     * Represents a project extended attribute definition.
     * name, string: The name of the file. (required)

     * index, int: Index of extended attribute (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ExtendedAttributeResponse
     */
    public function GetExtendedAttributeByIndex($name, $index, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ExtendedAttributeResponse');
        return $responseObject;
    }

    /**
     * GetExtendedAttributes
     * Represents a project document.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ExtendedAttributeItemsResponse
     */
    public function GetExtendedAttributes($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/extendedAttributes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ExtendedAttributeItemsResponse');
        return $responseObject;
    }

    /**
     * DeleteOutlineCodeByIndex
     * Deletes a project outline code
     * name, string: The name of the file. (required)

     * index, int: Outline code index (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteOutlineCodeByIndex($name, $index, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetOutlineCodeByIndex
     * Get outline code by index.
     * name, string: The name of the file. (required)

     * index, int: Outline code index (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return OutlineCodeResponse
     */
    public function GetOutlineCodeByIndex($name, $index, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OutlineCodeResponse');
        return $responseObject;
    }

    /**
     * GetOutlineCodes
     * Read outline codes.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return OutlineCodeItemsResponse
     */
    public function GetOutlineCodes($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/outlineCodes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OutlineCodeItemsResponse');
        return $responseObject;
    }

    /**
     * GetReportPdf
     * Returns created report in PDF format.
     * name, string: The name of the file. (required)

     * type, ReportType: A type of the project's graphical report. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResponseMessage
     */
    public function GetReportPdf($name, $type, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $type == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/report/?appSid={appSid}&amp;type={type}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/octet-stream';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($type != null) {
            $resourcePath = str_replace("{" . "type" . "}", $this->apiClient->toQueryValue($type), $resourcePath);
        } else {
            $resourcePath = str_replace("&type={" . "type" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResponseMessage');
        return $responseObject;
    }

    /**
     * DeleteProjectResource
     * Deletes a project resource with all references to it
     * name, string: The name of the file. (required)

     * resourceUid, int: Resource Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProjectResource($name, $resourceUid, $storage = null, $folder = null, $fileName = null) {
        // verify required params are set
        if ($name == '' || $resourceUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($resourceUid != null) {
            $resourcePath = str_replace("{" . "resourceUid" . "}", $this->apiClient->toQueryValue($resourceUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&resourceUid={" . "resourceUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetProjectResource
     * Get project resource.
     * name, string: The name of the file. (required)

     * resourceUid, int: Resource Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResourceResponse
     */
    public function GetProjectResource($name, $resourceUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $resourceUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($resourceUid != null) {
            $resourcePath = str_replace("{" . "resourceUid" . "}", $this->apiClient->toQueryValue($resourceUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&resourceUid={" . "resourceUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResourceResponse');
        return $responseObject;
    }

    /**
     * GetProjectResources
     * Read project resources.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResourceItemsResponse
     */
    public function GetProjectResources($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/resources/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResourceItemsResponse');
        return $responseObject;
    }

    /**
     * GetResourceAssignments
     * Get resource assignments.
     * name, string: The name of the file. (required)

     * resourceUid, int: Resource Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AssignmentsResponse
     */
    public function GetResourceAssignments($name, $resourceUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $resourceUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/resources/{resourceUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($resourceUid != null) {
            $resourcePath = str_replace("{" . "resourceUid" . "}", $this->apiClient->toQueryValue($resourceUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&resourceUid={" . "resourceUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AssignmentsResponse');
        return $responseObject;
    }

    /**
     * PostProjectResource
     * Add a new resource to a project.
     * name, string: The name of the file. (required)

     * resourceName, string: The name of the new resource. The default value is an empty string (optional)

     * beforeResourceId, int: The id of the resource to insert the new resource before. The default value is the id of the last resource in a project file. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return ResourceItemResponse
     */
    public function PostProjectResource($name, $resourceName = null, $beforeResourceId = null, $fileName = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/resources/?appSid={appSid}&amp;resourceName={resourceName}&amp;beforeResourceId={beforeResourceId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($resourceName != null) {
            $resourcePath = str_replace("{" . "resourceName" . "}", $this->apiClient->toQueryValue($resourceName), $resourcePath);
        } else {
            $resourcePath = str_replace("&resourceName={" . "resourceName" . "}", "", $resourcePath);
        }
        if ($beforeResourceId != null) {
            $resourcePath = str_replace("{" . "beforeResourceId" . "}", $this->apiClient->toQueryValue($beforeResourceId), $resourcePath);
        } else {
            $resourcePath = str_replace("&beforeResourceId={" . "beforeResourceId" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'ResourceItemResponse');
        return $responseObject;
    }

    /**
     * DeleteProjectTask
     * Deletes a project task with all references to it and rebuilds tasks tree.
     * name, string: The name of the file. (required)

     * taskUid, int: Task Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteProjectTask($name, $taskUid, $storage = null, $folder = null, $fileName = null) {
        // verify required params are set
        if ($name == '' || $taskUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($taskUid != null) {
            $resourcePath = str_replace("{" . "taskUid" . "}", $this->apiClient->toQueryValue($taskUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&taskUid={" . "taskUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetProjectTask
     * Read project task.
     * name, string: The name of the file. (required)

     * taskUid, int: Task Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return TaskResponse
     */
    public function GetProjectTask($name, $taskUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $taskUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($taskUid != null) {
            $resourcePath = str_replace("{" . "taskUid" . "}", $this->apiClient->toQueryValue($taskUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&taskUid={" . "taskUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskResponse');
        return $responseObject;
    }

    /**
     * GetProjectTasks
     * Read project task items.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return TaskItemsResponse
     */
    public function GetProjectTasks($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/tasks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskItemsResponse');
        return $responseObject;
    }

    /**
     * GetTaskAssignments
     * Get task assignments.
     * name, string: The name of the file. (required)

     * taskUid, int: Task Uid (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return AssignmentsResponse
     */
    public function GetTaskAssignments($name, $taskUid, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '' || $taskUid == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/tasks/{taskUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($taskUid != null) {
            $resourcePath = str_replace("{" . "taskUid" . "}", $this->apiClient->toQueryValue($taskUid), $resourcePath);
        } else {
            $resourcePath = str_replace("&taskUid={" . "taskUid" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'AssignmentsResponse');
        return $responseObject;
    }

    /**
     * PostProjectTask
     * Add a new task to a project.
     * name, string: The name of the file. (required)

     * taskName, string: The name of the new task. The default value is an empty string (optional)

     * beforeTaskId, int: The id of the task to insert the new task before. The default value is the id of the last task in a project file. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return TaskItemResponse
     */
    public function PostProjectTask($name, $taskName = null, $beforeTaskId = null, $fileName = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/tasks/?appSid={appSid}&amp;taskName={taskName}&amp;beforeTaskId={beforeTaskId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($taskName != null) {
            $resourcePath = str_replace("{" . "taskName" . "}", $this->apiClient->toQueryValue($taskName), $resourcePath);
        } else {
            $resourcePath = str_replace("&taskName={" . "taskName" . "}", "", $resourcePath);
        }
        if ($beforeTaskId != null) {
            $resourcePath = str_replace("{" . "beforeTaskId" . "}", $this->apiClient->toQueryValue($beforeTaskId), $resourcePath);
        } else {
            $resourcePath = str_replace("&beforeTaskId={" . "beforeTaskId" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskItemResponse');
        return $responseObject;
    }

    /**
     * DeleteTaskLink
     * Updates task link.
     * name, string: The name of the file. (required)

     * index, int: Task link index (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * @return SaaSposeResponse
     */
    public function DeleteTaskLink($name, $index, $storage = null, $folder = null, $fileName = null) {
        // verify required params are set
        if ($name == '' || $index == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "DELETE";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * GetTaskLinks
     * Read task links.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * @return TaskLinksResponse
     */
    public function GetTaskLinks($name, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskLinksResponse');
        return $responseObject;
    }

    /**
     * PostTaskLink
     * Adds a new task link to a project.
     * name, string: The name of the file. (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * body, TaskLink: TaskLink dto (required)

     * @return SaaSposeResponse
     */
    public function PostTaskLink($name, $storage = null, $folder = null, $fileName = null, $body) {
        // verify required params are set
        if ($name == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'SaaSposeResponse');
        return $responseObject;
    }

    /**
     * PutTaskLink
     * Updates task link.
     * name, string: The name of the file. (required)

     * index, int: Task link index (required)

     * storage, string: The document storage. (optional)

     * folder, string: The document folder. (optional)

     * fileName, string: The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document. (optional)

     * body, TaskLink: TaskLink dto (required)

     * @return TaskLinkResponse
     */
    public function PutTaskLink($name, $index, $storage = null, $folder = null, $fileName = null, $body) {
        // verify required params are set
        if ($name == '' || $index == '' || $body == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "PUT";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($index != null) {
            $resourcePath = str_replace("{" . "index" . "}", $this->apiClient->toQueryValue($index), $resourcePath);
        } else {
            $resourcePath = str_replace("&index={" . "index" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        if ($fileName != null) {
            $resourcePath = str_replace("{" . "fileName" . "}", $this->apiClient->toQueryValue($fileName), $resourcePath);
        } else {
            $resourcePath = str_replace("&fileName={" . "fileName" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'TaskLinkResponse');
        return $responseObject;
    }

}
