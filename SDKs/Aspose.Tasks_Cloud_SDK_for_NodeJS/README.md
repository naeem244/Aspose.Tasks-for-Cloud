# Aspose.Tasks Cloud SDK for Node.js

This repository contains Aspose.Tasks Cloud SDK for Node.js source code. This SDK allows you to work with Aspose.Tasks Cloud REST APIs in your Node.js applications quickly and easily. 

## How to use the SDK?

The complete source code is available in this repository folder. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/taskscloud/How+to+Setup+Aspose.Tasks+Cloud+SDK+for+Node.js).

## Quick SDK Tutorial
```javascript
var fs = require('fs');
var assert = require('assert');
var StorageApi =require("asposestoragecloud")
var TasksApi = require("asposetaskscloud");

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey};
var data_path = '../data/';

try {
//Instantiate Aspose.Storage API SDK
var storageApi = new StorageApi(config);

//Instantiate Aspose.Tasks API SDK
var tasksApi = new TasksApi(config);

//set input file name
var fileName = "sample-project";
var name = fileName + ".mpp";
var format = "pdf";
var versionId = null;
var storage = null;
var folder = null;

//upload file to aspose cloud storage
storageApi.PutCreate(name, versionId, storage, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	//invoke Aspose.Tasks Cloud SDK API to convert project document to other formats
	tasksApi.GetTaskDocumentWithFormat(name, format, storage, folder, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');		
			//download converted proj doc from api response
			var outfilename = filename + '.' + format;
			var writeStream = fs.createWriteStream('c:/temp/' + outfilename);
			writeStream.write(responseMessage.body);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
```