  using System;
  using System.Collections.Generic;
  using System.Text.RegularExpressions;
  using Com.Aspose.Tasks;
  using Com.Aspose.Tasks.Model;
  namespace Com.Aspose.Tasks.Api {
    public class TasksApi {
      string basePath;
      private readonly ApiInvoker apiInvoker = ApiInvoker.GetInstance();

      public TasksApi(String apiKey, String appSid, String basePath = "http://api.aspose.com/v1.1")
      {
	apiInvoker.apiKey = apiKey;
        apiInvoker.appSid = appSid;
        this.basePath = basePath;
      }

      public ApiInvoker getInvoker() {
        return apiInvoker;
      }

      // Sets the endpoint base url for the services being accessed
      public void setBasePath(string basePath) {
        this.basePath = basePath;
      }

      // Gets the endpoint base url for the services being accessed
      public String getBasePath() {
        return basePath;
      }

      /// <summary>
      /// Deletes a project assignment with all references to it. Deletes a project assignment with all references to it.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="assignmentUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteProjectAssignment (string name, int? assignmentUid, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || assignmentUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (assignmentUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])assignmentUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "assignmentUid" + "}", apiInvoker.ToPathValue(assignmentUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project assignment. Read project assignment.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="assignmentUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AssignmentResponse GetProjectAssignment (string name, int? assignmentUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || assignmentUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (assignmentUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])assignmentUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "assignmentUid" + "}", apiInvoker.ToPathValue(assignmentUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AssignmentResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AssignmentResponse) ApiInvoker.deserialize(response, typeof(AssignmentResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AssignmentResponse) ApiInvoker.deserialize(response, typeof(AssignmentResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project assignment items. Read project assignment items.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AssignmentItemsResponse GetProjectAssignments (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AssignmentItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AssignmentItemsResponse) ApiInvoker.deserialize(response, typeof(AssignmentItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AssignmentItemsResponse) ApiInvoker.deserialize(response, typeof(AssignmentItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Adds a new assignment to a project and returns assignment item in a response. Adds a new assignment to a project and returns assignment item in a response.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="resourceUid"></param>
      /// <param name="units"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AssignmentItemResponse PostProjectAssignment (string name, int? taskUid, int? resourceUid, double? units, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/assignments/?appSid={appSid}&amp;taskUid={taskUid}&amp;resourceUid={resourceUid}&amp;units={units}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null || resourceUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (resourceUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceUid" + "}", apiInvoker.ToPathValue(resourceUid)); 
		}
        if (units == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])units=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "units" + "}", apiInvoker.ToPathValue(units)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AssignmentItemResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (AssignmentItemResponse) ApiInvoker.deserialize(response, typeof(AssignmentItemResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AssignmentItemResponse) ApiInvoker.deserialize(response, typeof(AssignmentItemResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates ResourcesAssignments with spectial Uid Updates ResourcesAssignments with spectial Uid
      /// </summary>
      /// <param name="name"></param>
      /// <param name="assignmentUid"></param>
      /// <param name="mode"></param>
      /// <param name="recalculate"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public AssignmentResponse PutProjectAssignment (string name, int? assignmentUid, string mode, bool? recalculate, string storage, string folder, string fileName, ResourceAssignment body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || assignmentUid == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (assignmentUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])assignmentUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "assignmentUid" + "}", apiInvoker.ToPathValue(assignmentUid)); 
		}
        if (mode == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mode=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mode" + "}", apiInvoker.ToPathValue(mode)); 
		}
        if (recalculate == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])recalculate=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "recalculate" + "}", apiInvoker.ToPathValue(recalculate)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(AssignmentResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (AssignmentResponse) ApiInvoker.deserialize(response, typeof(AssignmentResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (AssignmentResponse) ApiInvoker.deserialize(response, typeof(AssignmentResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Deletes calendar exception from calendar exceptions collection. Deletes calendar exception from calendar exceptions collection.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="index"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteCalendarException (string name, int? calendarUid, int? index, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Deletes a project calendar Deletes a project calendar
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteProjectCalendar (string name, int? calendarUid, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get list of calendar exceptions. Get list of calendar exceptions.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CalendarExceptionsResponse GetCalendarExceptions (string name, int? calendarUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CalendarExceptionsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CalendarExceptionsResponse) ApiInvoker.deserialize(response, typeof(CalendarExceptionsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CalendarExceptionsResponse) ApiInvoker.deserialize(response, typeof(CalendarExceptionsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Represents a project calendar. Represents a project calendar.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CalendarResponse GetProjectCalendar (string name, int? calendarUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CalendarResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CalendarResponse) ApiInvoker.deserialize(response, typeof(CalendarResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CalendarResponse) ApiInvoker.deserialize(response, typeof(CalendarResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project calendar items. Read project calendar items.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CalendarItemsResponse GetProjectCalendars (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CalendarItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CalendarItemsResponse) ApiInvoker.deserialize(response, typeof(CalendarItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CalendarItemsResponse) ApiInvoker.deserialize(response, typeof(CalendarItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Adds a new calendar exception to a calendar. Adds a new calendar exception to a calendar.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostCalendarExceptions (string name, int? calendarUid, string fileName, string storage, string folder, CalendarException body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Adds a new calendar to project file. Adds a new calendar to project file.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public CalendarItemResponse PostProjectCalendar (string name, string fileName, string storage, string folder, Calendar body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CalendarItemResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (CalendarItemResponse) ApiInvoker.deserialize(response, typeof(CalendarItemResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (CalendarItemResponse) ApiInvoker.deserialize(response, typeof(CalendarItemResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates calendar exception. Updates calendar exception.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="calendarUid"></param>
      /// <param name="index"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PutCalendarException (string name, int? calendarUid, int? index, string fileName, string storage, string folder, CalendarException body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || calendarUid == null || index == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (calendarUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])calendarUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "calendarUid" + "}", apiInvoker.ToPathValue(calendarUid)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Returns created report in PDF format. Returns created report in PDF format.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TaskItemsResponse GetCriticalPath (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/criticalPath/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TaskItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TaskItemsResponse) ApiInvoker.deserialize(response, typeof(TaskItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TaskItemsResponse) ApiInvoker.deserialize(response, typeof(TaskItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get project WBS Definition. Get project WBS Definition.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WBSDefinitionResponse GetProjectWbsDefinition (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/wbsDefinition/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WBSDefinitionResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (WBSDefinitionResponse) ApiInvoker.deserialize(response, typeof(WBSDefinitionResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WBSDefinitionResponse) ApiInvoker.deserialize(response, typeof(WBSDefinitionResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Represents a project document. Represents a project document.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetTaskDocument (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Represents a project document with format Represents a project document with format
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetTaskDocumentWithFormat (string name, string format, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read document properties. Read document properties.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public DocumentPropertiesResponse GetDocumentProperties (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(DocumentPropertiesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (DocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertiesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (DocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertiesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read document property by name. Read document property by name.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public DocumentPropertyResponse GetDocumentProperty (string name, string propertyName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(DocumentPropertyResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Set/create document property. Set/create document property.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="filename"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public DocumentPropertyResponse PostDocumentProperty (string name, string propertyName, string storage, string folder, string filename, DocumentProperty body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (filename == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])filename=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "filename" + "}", apiInvoker.ToPathValue(filename)); 
		}
        try {
          if (typeof(DocumentPropertyResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Set/create document property. Set/create document property.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="filename"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public DocumentPropertyResponse PutDocumentProperty (string name, string propertyName, string storage, string folder, string filename, DocumentProperty body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (filename == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])filename=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "filename" + "}", apiInvoker.ToPathValue(filename)); 
		}
        try {
          if (typeof(DocumentPropertyResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (DocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(DocumentPropertyResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Delete a project extended attribute. Delete a project extended attribute.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteExtendedAttributeByIndex (string name, int? index, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Represents a project extended attribute definition. Represents a project extended attribute definition.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ExtendedAttributeResponse GetExtendedAttributeByIndex (string name, int? index, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ExtendedAttributeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ExtendedAttributeResponse) ApiInvoker.deserialize(response, typeof(ExtendedAttributeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ExtendedAttributeResponse) ApiInvoker.deserialize(response, typeof(ExtendedAttributeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Represents a project document. Represents a project document.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ExtendedAttributeItemsResponse GetExtendedAttributes (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/extendedAttributes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ExtendedAttributeItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ExtendedAttributeItemsResponse) ApiInvoker.deserialize(response, typeof(ExtendedAttributeItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ExtendedAttributeItemsResponse) ApiInvoker.deserialize(response, typeof(ExtendedAttributeItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Deletes a project outline code Deletes a project outline code
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteOutlineCodeByIndex (string name, int? index, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get outline code by index. Get outline code by index.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public OutlineCodeResponse GetOutlineCodeByIndex (string name, int? index, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(OutlineCodeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (OutlineCodeResponse) ApiInvoker.deserialize(response, typeof(OutlineCodeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (OutlineCodeResponse) ApiInvoker.deserialize(response, typeof(OutlineCodeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read outline codes. Read outline codes.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public OutlineCodeItemsResponse GetOutlineCodes (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/outlineCodes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(OutlineCodeItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (OutlineCodeItemsResponse) ApiInvoker.deserialize(response, typeof(OutlineCodeItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (OutlineCodeItemsResponse) ApiInvoker.deserialize(response, typeof(OutlineCodeItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// GET GET
      /// </summary>
      /// <param name="name"></param>
      /// <param name="mode"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PutRecalculateProject (string name, string mode, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/recalculate/project/?appSid={appSid}&amp;mode={mode}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (mode == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mode=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mode" + "}", apiInvoker.ToPathValue(mode)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Recalculate project resource fields Recalculate project resource fields
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse PutRecalculateProjectResourceFields (string name, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/recalculate/resourceFields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Recalculate project uncoplete work Recalculate project uncoplete work
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PutRecalculateProjectUncompleteWorkToStartAfter (string name, string storage, string folder, string fileName, DateTime body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/recalculate/uncompleteWorkToStartAfter/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Recalculate project work as complete Recalculate project work as complete
      /// </summary>
      /// <param name="name"></param>
      /// <param name="setZeroOrHundredPercentCompleteOnly"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PutRecalculateProjectWorkAsComplete(string name, bool? setZeroOrHundredPercentCompleteOnly, string storage, string folder, string fileName, DateTime body)
      {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/recalculate/projectWorkAsComplete/?appSid={appSid}&amp;setZeroOrHundredPercentCompleteOnly={setZeroOrHundredPercentCompleteOnly}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (setZeroOrHundredPercentCompleteOnly == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])setZeroOrHundredPercentCompleteOnly=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "setZeroOrHundredPercentCompleteOnly" + "}", apiInvoker.ToPathValue(setZeroOrHundredPercentCompleteOnly)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Returns created report in PDF format. Returns created report in PDF format.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="type"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetReportPdf (string name, string type, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/report/?appSid={appSid}&amp;type={type}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || type == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (type == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])type=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "type" + "}", apiInvoker.ToPathValue(type)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Deletes a project resource with all references to it Deletes a project resource with all references to it
      /// </summary>
      /// <param name="name"></param>
      /// <param name="resourceUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteProjectResource (string name, int? resourceUid, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || resourceUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (resourceUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceUid" + "}", apiInvoker.ToPathValue(resourceUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get project resource. Get project resource.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="resourceUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResourceResponse GetProjectResource (string name, int? resourceUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || resourceUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (resourceUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceUid" + "}", apiInvoker.ToPathValue(resourceUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResourceResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResourceResponse) ApiInvoker.deserialize(response, typeof(ResourceResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResourceResponse) ApiInvoker.deserialize(response, typeof(ResourceResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project resources. Read project resources.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResourceItemsResponse GetProjectResources (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResourceItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResourceItemsResponse) ApiInvoker.deserialize(response, typeof(ResourceItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResourceItemsResponse) ApiInvoker.deserialize(response, typeof(ResourceItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get resource assignments. Get resource assignments.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="resourceUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AssignmentsResponse GetResourceAssignments (string name, int? resourceUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/{resourceUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || resourceUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (resourceUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceUid" + "}", apiInvoker.ToPathValue(resourceUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AssignmentsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AssignmentsResponse) ApiInvoker.deserialize(response, typeof(AssignmentsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AssignmentsResponse) ApiInvoker.deserialize(response, typeof(AssignmentsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Add a new resource to a project. Add a new resource to a project.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="resourceName"></param>
      /// <param name="beforeResourceId"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResourceItemResponse PostProjectResource (string name, string resourceName, int? beforeResourceId, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/?appSid={appSid}&amp;resourceName={resourceName}&amp;beforeResourceId={beforeResourceId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (resourceName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceName" + "}", apiInvoker.ToPathValue(resourceName)); 
		}
        if (beforeResourceId == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])beforeResourceId=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "beforeResourceId" + "}", apiInvoker.ToPathValue(beforeResourceId)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResourceItemResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResourceItemResponse) ApiInvoker.deserialize(response, typeof(ResourceItemResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResourceItemResponse) ApiInvoker.deserialize(response, typeof(ResourceItemResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates Resource with spectial Uid Updates Resource with spectial Uid
      /// </summary>
      /// <param name="name"></param>
      /// <param name="resourceUid"></param>
      /// <param name="mode"></param>
      /// <param name="recalculate"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public ResourceResponse PutProjectResource (string name, int? resourceUid, string mode, bool? recalculate, string storage, string folder, string fileName, Resource body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || resourceUid == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (resourceUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])resourceUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "resourceUid" + "}", apiInvoker.ToPathValue(resourceUid)); 
		}
        if (mode == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mode=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mode" + "}", apiInvoker.ToPathValue(mode)); 
		}
        if (recalculate == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])recalculate=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "recalculate" + "}", apiInvoker.ToPathValue(recalculate)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(ResourceResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (ResourceResponse) ApiInvoker.deserialize(response, typeof(ResourceResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (ResourceResponse) ApiInvoker.deserialize(response, typeof(ResourceResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Create a RiskAnalysis Report Create a RiskAnalysis Report
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="type"></param>
      /// <param name="optimistic"></param>
      /// <param name="pessimistic"></param>
      /// <param name="level"></param>
      /// <param name="iterations"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public ResponseMessage GetRiskAnalysisReport (string name, int? taskUid, string type, int? optimistic, int? pessimistic, string level, int? iterations, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/riskAnalysisReport/?taskUid={taskUid}&amp;appSid={appSid}&amp;type={type}&amp;optimistic={optimistic}&amp;pessimistic={pessimistic}&amp;level={level}&amp;iterations={iterations}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (type == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])type=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "type" + "}", apiInvoker.ToPathValue(type)); 
		}
        if (optimistic == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])optimistic=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "optimistic" + "}", apiInvoker.ToPathValue(optimistic)); 
		}
        if (pessimistic == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pessimistic=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pessimistic" + "}", apiInvoker.ToPathValue(pessimistic)); 
		}
        if (level == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])level=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "level" + "}", apiInvoker.ToPathValue(level)); 
		}
        if (iterations == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])iterations=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "iterations" + "}", apiInvoker.ToPathValue(iterations)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Deletes a project task with all references to it and rebuilds tasks tree. Deletes a project task with all references to it and rebuilds tasks tree.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteProjectTask (string name, int? taskUid, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project task. Read project task.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TaskResponse GetProjectTask (string name, int? taskUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TaskResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TaskResponse) ApiInvoker.deserialize(response, typeof(TaskResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TaskResponse) ApiInvoker.deserialize(response, typeof(TaskResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read project task items. Read project task items.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TaskItemsResponse GetProjectTasks (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TaskItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TaskItemsResponse) ApiInvoker.deserialize(response, typeof(TaskItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TaskItemsResponse) ApiInvoker.deserialize(response, typeof(TaskItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get task assignments. Get task assignments.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AssignmentsResponse GetTaskAssignments (string name, int? taskUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AssignmentsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AssignmentsResponse) ApiInvoker.deserialize(response, typeof(AssignmentsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AssignmentsResponse) ApiInvoker.deserialize(response, typeof(AssignmentsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get recurring info for the task Get recurring info for the task
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public RecurringInfoResponse GetTaskRecurringInfo (string name, int? taskUid, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/recurringInfo/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(RecurringInfoResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (RecurringInfoResponse) ApiInvoker.deserialize(response, typeof(RecurringInfoResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (RecurringInfoResponse) ApiInvoker.deserialize(response, typeof(RecurringInfoResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Add a new task to a project. Add a new task to a project.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskName"></param>
      /// <param name="beforeTaskId"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TaskItemResponse PostProjectTask (string name, string taskName, int? beforeTaskId, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/?appSid={appSid}&amp;taskName={taskName}&amp;beforeTaskId={beforeTaskId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskName" + "}", apiInvoker.ToPathValue(taskName)); 
		}
        if (beforeTaskId == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])beforeTaskId=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "beforeTaskId" + "}", apiInvoker.ToPathValue(beforeTaskId)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TaskItemResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (TaskItemResponse) ApiInvoker.deserialize(response, typeof(TaskItemResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TaskItemResponse) ApiInvoker.deserialize(response, typeof(TaskItemResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Move one task to another parent task Move one task to another parent task
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="parentTaskUid"></param>
      /// <param name="fileName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PutMoveTask (string name, int? taskUid, int? parentTaskUid, string fileName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/move/?parentTaskUid={parentTaskUid}&amp;appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null || parentTaskUid == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (parentTaskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])parentTaskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "parentTaskUid" + "}", apiInvoker.ToPathValue(parentTaskUid)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates special task getting by task UID Updates special task getting by task UID
      /// </summary>
      /// <param name="name"></param>
      /// <param name="taskUid"></param>
      /// <param name="mode"></param>
      /// <param name="recalculate"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public TaskResponse PutProjectTask (string name, int? taskUid, string mode, bool? recalculate, string storage, string folder, string fileName, Task body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || taskUid == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (taskUid == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])taskUid=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "taskUid" + "}", apiInvoker.ToPathValue(taskUid)); 
		}
        if (mode == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mode=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mode" + "}", apiInvoker.ToPathValue(mode)); 
		}
        if (recalculate == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])recalculate=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "recalculate" + "}", apiInvoker.ToPathValue(recalculate)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(TaskResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (TaskResponse) ApiInvoker.deserialize(response, typeof(TaskResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (TaskResponse) ApiInvoker.deserialize(response, typeof(TaskResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates task link. Updates task link.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteTaskLink (string name, int? index, string storage, string folder, string fileName) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Read task links. Read task links.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TaskLinksResponse GetTaskLinks (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TaskLinksResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TaskLinksResponse) ApiInvoker.deserialize(response, typeof(TaskLinksResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TaskLinksResponse) ApiInvoker.deserialize(response, typeof(TaskLinksResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Adds a new task link to a project. Adds a new task link to a project.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostTaskLink (string name, string storage, string folder, string fileName, TaskLink body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Updates task link. Updates task link.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="index"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="fileName"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public TaskLinkResponse PutTaskLink (string name, int? index, string storage, string folder, string fileName, TaskLink body) {
        // create path and map variables
        var ResourcePath = "/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || index == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (index == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])index=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "index" + "}", apiInvoker.ToPathValue(index)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (fileName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])fileName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "fileName" + "}", apiInvoker.ToPathValue(fileName)); 
		}
        try {
          if (typeof(TaskLinkResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (TaskLinkResponse) ApiInvoker.deserialize(response, typeof(TaskLinkResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (TaskLinkResponse) ApiInvoker.deserialize(response, typeof(TaskLinkResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      }
    }
