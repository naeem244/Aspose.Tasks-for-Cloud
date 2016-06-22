var path = require('path');
var fs = require('fs');
var apiClient = require('./api-client');


function TasksApi(config) {
	var self = this;
	
	apiClient = new apiClient(config);
	this.config = apiClient.config;
}


/**
* GetTaskDocument
* Represents a project document.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResponseMessage (Map)
*/
TasksApi.prototype.GetTaskDocument = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTaskDocumentWithFormat
* Represents a project document with format
*
* @param  (String) name  -   (required) 
* @param  (String) format  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResponseMessage (Map)
*/
TasksApi.prototype.GetTaskDocumentWithFormat = function(name, format, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectAssignments
* Read project assignment items.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns AssignmentItemsResponse (Map)
*/
TasksApi.prototype.GetProjectAssignments = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProjectAssignment
* Adds a new assignment to a project and returns assignment item in a response.
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) resourceUid  -   (required) 
* @param  (String) units  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns AssignmentItemResponse (Map)
*/
TasksApi.prototype.PostProjectAssignment = function(name, taskUid, resourceUid, units, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof resourceUid === 'undefined' || resourceUid === null && resourceUid === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/tasks/{name}/assignments/?appSid={appSid}&amp;taskUid={taskUid}&amp;resourceUid={resourceUid}&amp;units={units}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceUid !== 'undefined' &&  resourceUid !== null && resourceUid!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceUid" + "}" , resourceUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof units !== 'undefined' &&  units !== null && units!== ''){            
			resourcePath = resourcePath.replace("{" + "units" + "}" , units);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]units.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutProjectAssignment
* Updates ResourcesAssignments with spectial Uid
*
* @param  (String) name  -   (required) 
* @param  (String) assignmentUid  -   (required) 
* @param  (String) mode  -   (optional) 
* @param  (Boolean) recalculate  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (ResourceAssignment) body  -   (required) 
* @returns AssignmentResponse (Map)
*/
TasksApi.prototype.PutProjectAssignment = function(name, assignmentUid, mode, recalculate, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof assignmentUid === 'undefined' || assignmentUid === null && assignmentUid === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof assignmentUid !== 'undefined' &&  assignmentUid !== null && assignmentUid!== ''){            
			resourcePath = resourcePath.replace("{" + "assignmentUid" + "}" , assignmentUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]assignmentUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mode !== 'undefined' &&  mode !== null && mode!== ''){            
			resourcePath = resourcePath.replace("{" + "mode" + "}" , mode);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mode.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof recalculate !== 'undefined' &&  recalculate !== null && recalculate!== ''){            
			resourcePath = resourcePath.replace("{" + "recalculate" + "}" , recalculate);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]recalculate.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectAssignment
* Read project assignment.
*
* @param  (String) name  -   (required) 
* @param  (String) assignmentUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns AssignmentResponse (Map)
*/
TasksApi.prototype.GetProjectAssignment = function(name, assignmentUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof assignmentUid === 'undefined' || assignmentUid === null && assignmentUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof assignmentUid !== 'undefined' &&  assignmentUid !== null && assignmentUid!== ''){            
			resourcePath = resourcePath.replace("{" + "assignmentUid" + "}" , assignmentUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]assignmentUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProjectAssignment
* Deletes a project assignment with all references to it.
*
* @param  (String) name  -   (required) 
* @param  (String) assignmentUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteProjectAssignment = function(name, assignmentUid, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof assignmentUid === 'undefined' || assignmentUid === null && assignmentUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/assignments/{assignmentUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof assignmentUid !== 'undefined' &&  assignmentUid !== null && assignmentUid!== ''){            
			resourcePath = resourcePath.replace("{" + "assignmentUid" + "}" , assignmentUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]assignmentUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProjectCalendar
* Adds a new calendar to project file.
*
* @param  (String) name  -   (required) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (Calendar) body  -   (required) 
* @returns CalendarItemResponse (Map)
*/
TasksApi.prototype.PostProjectCalendar = function(name, fileName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/calendars/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectCalendars
* Read project calendar items.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns CalendarItemsResponse (Map)
*/
TasksApi.prototype.GetProjectCalendars = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/calendars/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectCalendar
* Represents a project calendar.
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns CalendarResponse (Map)
*/
TasksApi.prototype.GetProjectCalendar = function(name, calendarUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProjectCalendar
* Deletes a project calendar
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteProjectCalendar = function(name, calendarUid, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCalendarExceptions
* Adds a new calendar exception to a calendar.
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (CalendarException) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PostCalendarExceptions = function(name, calendarUid, fileName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetCalendarExceptions
* Get list of calendar exceptions.
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns CalendarExceptionsResponse (Map)
*/
TasksApi.prototype.GetCalendarExceptions = function(name, calendarUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/calendarExceptions/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutCalendarException
* Updates calendar exception.
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (CalendarException) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutCalendarException = function(name, calendarUid, index, fileName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteCalendarException
* Deletes calendar exception from calendar exceptions collection.
*
* @param  (String) name  -   (required) 
* @param  (String) calendarUid  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteCalendarException = function(name, calendarUid, index, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof calendarUid === 'undefined' || calendarUid === null && calendarUid === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}/?appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof calendarUid !== 'undefined' &&  calendarUid !== null && calendarUid!== ''){            
			resourcePath = resourcePath.replace("{" + "calendarUid" + "}" , calendarUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]calendarUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetCriticalPath
* Returns created report in PDF format.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TaskItemsResponse (Map)
*/
TasksApi.prototype.GetCriticalPath = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/criticalPath/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperties
* Read document properties.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns DocumentPropertiesResponse (Map)
*/
TasksApi.prototype.GetDocumentProperties = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperty
* Read document property by name.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns DocumentPropertyResponse (Map)
*/
TasksApi.prototype.GetDocumentProperty = function(name, propertyName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutDocumentProperty
* Set/create document property.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) filename  -   (optional) 
* @param  (DocumentProperty) body  -   (required) 
* @returns DocumentPropertyResponse (Map)
*/
TasksApi.prototype.PutDocumentProperty = function(name, propertyName, storage, folder, filename, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof filename !== 'undefined' &&  filename !== null && filename!== ''){            
			resourcePath = resourcePath.replace("{" + "filename" + "}" , filename);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]filename.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostDocumentProperty
* Set/create document property.
*
* @param  (String) name  -   (required) 
* @param  (String) propertyName  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) filename  -   (optional) 
* @param  (DocumentProperty) body  -   (required) 
* @returns DocumentPropertyResponse (Map)
*/
TasksApi.prototype.PostDocumentProperty = function(name, propertyName, storage, folder, filename, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;filename={filename}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof filename !== 'undefined' &&  filename !== null && filename!== ''){            
			resourcePath = resourcePath.replace("{" + "filename" + "}" , filename);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]filename.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetExtendedAttributes
* Represents a project document.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ExtendedAttributeItemsResponse (Map)
*/
TasksApi.prototype.GetExtendedAttributes = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/extendedAttributes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetExtendedAttributeByIndex
* Represents a project extended attribute definition.
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ExtendedAttributeResponse (Map)
*/
TasksApi.prototype.GetExtendedAttributeByIndex = function(name, index, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteExtendedAttributeByIndex
* Delete a project extended attribute.
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteExtendedAttributeByIndex = function(name, index, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/extendedAttributes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetOutlineCodes
* Read outline codes.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns OutlineCodeItemsResponse (Map)
*/
TasksApi.prototype.GetOutlineCodes = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/outlineCodes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetOutlineCodeByIndex
* Get outline code by index.
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns OutlineCodeResponse (Map)
*/
TasksApi.prototype.GetOutlineCodeByIndex = function(name, index, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteOutlineCodeByIndex
* Deletes a project outline code
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteOutlineCodeByIndex = function(name, index, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/outlineCodes/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutRecalculateProject
* GET
*
* @param  (String) name  -   (required) 
* @param  (String) mode  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutRecalculateProject = function(name, mode, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/tasks/{name}/recalculate/project/?appSid={appSid}&amp;mode={mode}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mode !== 'undefined' &&  mode !== null && mode!== ''){            
			resourcePath = resourcePath.replace("{" + "mode" + "}" , mode);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mode.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutRecalculateProjectWorkAsComplete
* Recalculate project work as complete
*
* @param  (String) name  -   (required) 
* @param  (Boolean) setZeroOrHundredPercentCompleteOnly  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (Date) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutRecalculateProjectWorkAsComplete = function(name, setZeroOrHundredPercentCompleteOnly, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/tasks/{name}/recalculate/projectWorkAsComplete/?appSid={appSid}&amp;setZeroOrHundredPercentCompleteOnly={setZeroOrHundredPercentCompleteOnly}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof setZeroOrHundredPercentCompleteOnly !== 'undefined' &&  setZeroOrHundredPercentCompleteOnly !== null && setZeroOrHundredPercentCompleteOnly!== ''){            
			resourcePath = resourcePath.replace("{" + "setZeroOrHundredPercentCompleteOnly" + "}" , setZeroOrHundredPercentCompleteOnly);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]setZeroOrHundredPercentCompleteOnly.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutRecalculateProjectResourceFields
* Recalculate project resource fields
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutRecalculateProjectResourceFields = function(name, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/recalculate/resourceFields/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutRecalculateProjectUncompleteWorkToStartAfter
* Recalculate project uncoplete work
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (Date) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutRecalculateProjectUncompleteWorkToStartAfter = function(name, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/recalculate/uncompleteWorkToStartAfter/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetReportPdf
* Returns created report in PDF format.
*
* @param  (String) name  -   (required) 
* @param  (String) type  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResponseMessage (Map)
*/
TasksApi.prototype.GetReportPdf = function(name, type, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof type === 'undefined' || type === null && type === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/report/?appSid={appSid}&amp;type={type}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof type !== 'undefined' &&  type !== null && type!== ''){            
			resourcePath = resourcePath.replace("{" + "type" + "}" , type);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]type.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProjectResource
* Add a new resource to a project.
*
* @param  (String) name  -   (required) 
* @param  (String) resourceName  -   (optional) 
* @param  (String) beforeResourceId  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResourceItemResponse (Map)
*/
TasksApi.prototype.PostProjectResource = function(name, resourceName, beforeResourceId, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/tasks/{name}/resources/?appSid={appSid}&amp;resourceName={resourceName}&amp;beforeResourceId={beforeResourceId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceName !== 'undefined' &&  resourceName !== null && resourceName!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceName" + "}" , resourceName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof beforeResourceId !== 'undefined' &&  beforeResourceId !== null && beforeResourceId!== ''){            
			resourcePath = resourcePath.replace("{" + "beforeResourceId" + "}" , beforeResourceId);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]beforeResourceId.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectResources
* Read project resources.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResourceItemsResponse (Map)
*/
TasksApi.prototype.GetProjectResources = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/resources/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutProjectResource
* Updates Resource with spectial Uid
*
* @param  (String) name  -   (required) 
* @param  (String) resourceUid  -   (required) 
* @param  (String) mode  -   (optional) 
* @param  (Boolean) recalculate  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (Resource) body  -   (required) 
* @returns ResourceResponse (Map)
*/
TasksApi.prototype.PutProjectResource = function(name, resourceUid, mode, recalculate, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof resourceUid === 'undefined' || resourceUid === null && resourceUid === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceUid !== 'undefined' &&  resourceUid !== null && resourceUid!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceUid" + "}" , resourceUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mode !== 'undefined' &&  mode !== null && mode!== ''){            
			resourcePath = resourcePath.replace("{" + "mode" + "}" , mode);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mode.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof recalculate !== 'undefined' &&  recalculate !== null && recalculate!== ''){            
			resourcePath = resourcePath.replace("{" + "recalculate" + "}" , recalculate);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]recalculate.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectResource
* Get project resource.
*
* @param  (String) name  -   (required) 
* @param  (String) resourceUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns ResourceResponse (Map)
*/
TasksApi.prototype.GetProjectResource = function(name, resourceUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof resourceUid === 'undefined' || resourceUid === null && resourceUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceUid !== 'undefined' &&  resourceUid !== null && resourceUid!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceUid" + "}" , resourceUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProjectResource
* Deletes a project resource with all references to it
*
* @param  (String) name  -   (required) 
* @param  (String) resourceUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteProjectResource = function(name, resourceUid, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof resourceUid === 'undefined' || resourceUid === null && resourceUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/resources/{resourceUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceUid !== 'undefined' &&  resourceUid !== null && resourceUid!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceUid" + "}" , resourceUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetResourceAssignments
* Get resource assignments.
*
* @param  (String) name  -   (required) 
* @param  (String) resourceUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns AssignmentsResponse (Map)
*/
TasksApi.prototype.GetResourceAssignments = function(name, resourceUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof resourceUid === 'undefined' || resourceUid === null && resourceUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/resources/{resourceUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof resourceUid !== 'undefined' &&  resourceUid !== null && resourceUid!== ''){            
			resourcePath = resourcePath.replace("{" + "resourceUid" + "}" , resourceUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]resourceUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetRiskAnalysisReport
* Create a RiskAnalysis Report
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) type  -   (optional) 
* @param  (String) optimistic  -   (optional) 
* @param  (String) pessimistic  -   (optional) 
* @param  (String) level  -   (optional) 
* @param  (String) iterations  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns ResponseMessage (Map)
*/
TasksApi.prototype.GetRiskAnalysisReport = function(name, taskUid, type, optimistic, pessimistic, level, iterations, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }         	
		
	var resourcePath = '/tasks/{name}/riskAnalysisReport/?taskUid={taskUid}&amp;appSid={appSid}&amp;type={type}&amp;optimistic={optimistic}&amp;pessimistic={pessimistic}&amp;level={level}&amp;iterations={iterations}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof type !== 'undefined' &&  type !== null && type!== ''){            
			resourcePath = resourcePath.replace("{" + "type" + "}" , type);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]type.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof optimistic !== 'undefined' &&  optimistic !== null && optimistic!== ''){            
			resourcePath = resourcePath.replace("{" + "optimistic" + "}" , optimistic);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]optimistic.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pessimistic !== 'undefined' &&  pessimistic !== null && pessimistic!== ''){            
			resourcePath = resourcePath.replace("{" + "pessimistic" + "}" , pessimistic);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pessimistic.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof level !== 'undefined' &&  level !== null && level!== ''){            
			resourcePath = resourcePath.replace("{" + "level" + "}" , level);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]level.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof iterations !== 'undefined' &&  iterations !== null && iterations!== ''){            
			resourcePath = resourcePath.replace("{" + "iterations" + "}" , iterations);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]iterations.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTaskLinks
* Read task links.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TaskLinksResponse (Map)
*/
TasksApi.prototype.GetTaskLinks = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostTaskLink
* Adds a new task link to a project.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (TaskLink) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PostTaskLink = function(name, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/taskLinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutTaskLink
* Updates task link.
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (TaskLink) body  -   (required) 
* @returns TaskLinkResponse (Map)
*/
TasksApi.prototype.PutTaskLink = function(name, index, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteTaskLink
* Updates task link.
*
* @param  (String) name  -   (required) 
* @param  (String) index  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteTaskLink = function(name, index, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof index === 'undefined' || index === null && index === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/taskLinks/{index}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof index !== 'undefined' &&  index !== null && index!== ''){            
			resourcePath = resourcePath.replace("{" + "index" + "}" , index);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]index.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectTasks
* Read project task items.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TaskItemsResponse (Map)
*/
TasksApi.prototype.GetProjectTasks = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/tasks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProjectTask
* Add a new task to a project.
*
* @param  (String) name  -   (required) 
* @param  (String) taskName  -   (optional) 
* @param  (String) beforeTaskId  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TaskItemResponse (Map)
*/
TasksApi.prototype.PostProjectTask = function(name, taskName, beforeTaskId, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/tasks/{name}/tasks/?appSid={appSid}&amp;taskName={taskName}&amp;beforeTaskId={beforeTaskId}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskName !== 'undefined' &&  taskName !== null && taskName!== ''){            
			resourcePath = resourcePath.replace("{" + "taskName" + "}" , taskName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof beforeTaskId !== 'undefined' &&  beforeTaskId !== null && beforeTaskId!== ''){            
			resourcePath = resourcePath.replace("{" + "beforeTaskId" + "}" , beforeTaskId);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]beforeTaskId.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutProjectTask
* Updates special task getting by task UID
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) mode  -   (optional) 
* @param  (Boolean) recalculate  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @param  (Task) body  -   (required) 
* @returns TaskResponse (Map)
*/
TasksApi.prototype.PutProjectTask = function(name, taskUid, mode, recalculate, storage, folder, fileName, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;mode={mode}&amp;recalculate={recalculate}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mode !== 'undefined' &&  mode !== null && mode!== ''){            
			resourcePath = resourcePath.replace("{" + "mode" + "}" , mode);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mode.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof recalculate !== 'undefined' &&  recalculate !== null && recalculate!== ''){            
			resourcePath = resourcePath.replace("{" + "recalculate" + "}" , recalculate);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]recalculate.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectTask
* Read project task.
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns TaskResponse (Map)
*/
TasksApi.prototype.GetProjectTask = function(name, taskUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteProjectTask
* Deletes a project task with all references to it and rebuilds tasks tree.
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (String) fileName  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.DeleteProjectTask = function(name, taskUid, storage, folder, fileName, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;fileName={fileName}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTaskAssignments
* Get task assignments.
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns AssignmentsResponse (Map)
*/
TasksApi.prototype.GetTaskAssignments = function(name, taskUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/assignments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutMoveTask
* Move one task to another parent task
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) parentTaskUid  -   (required) 
* @param  (String) fileName  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
TasksApi.prototype.PutMoveTask = function(name, taskUid, parentTaskUid, fileName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof parentTaskUid === 'undefined' || parentTaskUid === null && parentTaskUid === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/move/?parentTaskUid={parentTaskUid}&amp;appSid={appSid}&amp;fileName={fileName}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof parentTaskUid !== 'undefined' &&  parentTaskUid !== null && parentTaskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "parentTaskUid" + "}" , parentTaskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]parentTaskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof fileName !== 'undefined' &&  fileName !== null && fileName!== ''){            
			resourcePath = resourcePath.replace("{" + "fileName" + "}" , fileName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]fileName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetTaskRecurringInfo
* Get recurring info for the task
*
* @param  (String) name  -   (required) 
* @param  (String) taskUid  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns RecurringInfoResponse (Map)
*/
TasksApi.prototype.GetTaskRecurringInfo = function(name, taskUid, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof taskUid === 'undefined' || taskUid === null && taskUid === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/tasks/{taskUid}/recurringInfo/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof taskUid !== 'undefined' &&  taskUid !== null && taskUid!== ''){            
			resourcePath = resourcePath.replace("{" + "taskUid" + "}" , taskUid);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]taskUid.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetProjectWbsDefinition
* Get project WBS Definition.
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns WBSDefinitionResponse (Map)
*/
TasksApi.prototype.GetProjectWbsDefinition = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/tasks/{name}/wbsDefinition/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    

module.exports = TasksApi


