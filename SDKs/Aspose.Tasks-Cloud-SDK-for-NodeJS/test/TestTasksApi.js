var fs = require('fs');
var StorageApi = require('asposestoragecloud');
var TasksApi = require('../lib/TasksApi');
var assert = require('assert');

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};
var data_path = './data/';

var storageApi = new StorageApi(config); 
var tasksApi = new TasksApi(config);
var nodeunit = require('nodeunit');

exports.testDeleteProjectAssignment = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var assignmentUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteProjectAssignment(name, assignmentUid, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetTaskDocument = function(test){

	test.expect(3);
	
	var name =  "sample-project-2.mpp";	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetTaskDocument(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Document !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};


exports.testGetTaskDocumentWithFormat = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var format = "pdf";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetTaskDocumentWithFormat(name, format, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}			
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};
	
exports.testGetProjectAssignments = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectAssignments(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Assignments !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPostProjectAssignment = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var resourceUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostProjectAssignment(name, taskUid, resourceUid, null, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.AssignmentItem !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectAssignment = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var assignmentUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectAssignment(name, assignmentUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Assignment !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPostProjectCalendar = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	
	var storage = null;
	var folder= null;

	 var body = {
			 'Name' : 'TestCalender',
			 'Uid' : 0
			 
	 };

	 storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostProjectCalendar(name, null, storage, folder, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.CalendarItem !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectCalendars = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectCalendars(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Calendars !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectCalendar = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var calendarUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectCalendar(name, calendarUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Calendar !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteProjectCalendar = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var calendarUid = 2;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteProjectCalendar(name, calendarUid, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testPostCalendarExceptions = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var calendarUid = 1;
	var storage = null;
	var folder= null;

	var body = {
		'Name' : 'Test',
		'FromDate' : '2016-02-10',
		'ToDate' : '2016-02-22'
	};
    	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostCalendarExceptions(name, calendarUid, null, storage, folder, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetCalendarExceptions = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var calendarUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetCalendarExceptions(name, calendarUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.CalendarExceptions !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutCalendarException = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var calendarUid = 1;
	var index = 1;
    
	var body = {
			'Name' : 'Test',
			'FromDate' : '2016-02-10',
			'ToDate' : '2016-02-22'
		};
        
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutCalendarException(name, calendarUid, index, null, storage, folder, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testDeleteCalendarException = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var calendarUid = 1;
	var index = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteCalendarException(name, calendarUid, index, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetCriticalPath = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var assignmentUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetCriticalPath(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Tasks !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetDocumentProperties = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var assignmentUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetDocumentProperties(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');	
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Properties !== 'undefined', "response body assertion should pass");			
			test.done();
		});
	});
	
};

exports.testGetDocumentProperty = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var propertyName = "Title";
	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetDocumentProperty(name, propertyName, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Property !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutDocumentProperty = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var propertyName = "Title";
        
	var body = {
			'Name' : 'Title',
			'Value' :  'New Title'
			
	};

	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutDocumentProperty(name, propertyName, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Property !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPostDocumentProperty = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var propertyName = "Title";
        
	var body = {
			'Name' : 'Title',
			'Value' :  'New Title'
			
	};
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostDocumentProperty(name, propertyName, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');	
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Property !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetExtendedAttributes = function(test){
	
	test.expect(3);
	
	var name =  "ExtendedAttribute.mpp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetExtendedAttributes(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.ExtendedAttributes !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetExtendedAttributeByIndex = function(test){
	
	test.expect(3);
	
	var name =  "ExtendedAttribute.mpp";
	var index = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetExtendedAttributeByIndex(name, index, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.ExtendedAttribute !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteExtendedAttributeByIndex = function(test){
	
	test.expect(2);
	
	var name =  "ExtendedAttribute.mpp";
	var index = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteExtendedAttributeByIndex(name, index, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetOutlineCodes = function(test){
	
	test.expect(3);
	
	var name =  "Outlinecode.mpp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetOutlineCodes(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.OutlineCodes !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetOutlineCodeByIndex = function(test){
	
	test.expect(3);
	
	var name =  "Outlinecode.mpp";
	var index = 1;
	var storage = null;	
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetOutlineCodeByIndex(name, index, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.OutlineCode !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteOutlineCodeByIndex = function(test){
	
	test.expect(2);
	
	var name =  "Outlinecode.mpp";
	var index = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteOutlineCodeByIndex(name, index, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};


exports.testGetReportPdf = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var type = "WorkOverview";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetReportPdf(name, type, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testPostProjectResource = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var resourceName = "Resource6";
	var beforeResourceId = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostProjectResource(name, resourceName, beforeResourceId, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.ResourceItem !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectResources = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var assignmentUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectResources(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Resources !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectResource = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var resourceUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectResource(name, resourceUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Resource !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteProjectResource = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var resourceUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteProjectResource(name, resourceUid, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetResourceAssignments = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var resourceUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetResourceAssignments(name, resourceUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Assignments !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetRiskAnalysisReport = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetRiskAnalysisReport(name, taskUid, 'Normal', null, null, null, null, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}			
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetTaskLinks = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetTaskLinks(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.TaskLinks !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPostTaskLink = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var body = {
		'Index' : 2,
		'PredecessorUid' : 1,
		'SuccessorUid' : 2
	};
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostTaskLink(name, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});
	
};

exports.testPutTaskLink = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var index = 1;
	var body = {
		'Index' : 1,
		'PredecessorUid' : 0,
		'SuccessorUid' : 1
	};
	
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutTaskLink(name, index, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.TaskLink !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteTaskLink = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var index = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteTaskLink(name, index, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetProjectTasks = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectTasks(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Tasks !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetProjectTask = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectTask(name, taskUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Task !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testDeleteProjectTask = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.DeleteProjectTask(name, taskUid, storage, folder, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.done();
		});
	});
	
};

exports.testGetTaskAssignments = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetTaskAssignments(name, taskUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Assignments !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutMoveTask = function(test){
	
	test.expect(2);
	
	var name =  "sample-project.mpp";
	var taskUid = 1;
	var parentTaskUid = 2;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutMoveTask(name, taskUid, parentTaskUid, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};

exports.testGetTaskRecurringInfo = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetTaskRecurringInfo(name, taskUid, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.RecurringInfo !== 'undefined', "response body assertion should pass");			
			test.done();
		});
	});
	
};

exports.testGetProjectWbsDefinition = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.GetProjectWbsDefinition(name, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');		
			test.ok(responseMessage.body !== null && typeof responseMessage.body.WBSDefinition !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPostProjectTask = function(test){
	
	test.expect(3);
	
	var name =  "sample-project.mpp";
	var taskName = "NewTask";
	var beforeTaskId = 1;
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PostProjectTask(name, taskName, beforeTaskId, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.TaskItem !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutProjectTask = function(test){
	
	test.expect(3);
	
	var name =  "sample-project-2.mpp";
	var taskUid = 0;
	var body = {
			 'Uid': 0,
			 'Id': 0,
			 'Name': 'test'
	};
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutProjectTask(name, taskUid, null, null, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');	
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Task !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutProjectAssignment = function(test){
	
	test.expect(3);
	
	var name =  "Outlinecode.mpp";
	var assignmentUid = 1;
	var body = {
			 'TaskUid': 1,
			    'ResourceUid': -1,
			    'Uid': 1
			    };
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutProjectAssignment(name, assignmentUid, null, null, storage, folder, null, body, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Assignment !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testPutRecalculateProject = function(test){
	
	test.expect(2);
	
	var name =  "sample-project-2.mpp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		tasksApi.PutRecalculateProject(name, null, null, storage, folder, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
		});
	});
	
};