# Aspose.Tasks Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud Tasks APIs](http://www.aspose.com/cloud/project-management-api.aspx) in your Ruby web apps.

## Installing
You can simply install Aspose Tasks Cloud SDK with gem:

`gem install aspose_tasks_cloud`

## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_tasks_cloud'

class TasksUsage
  
  include AsposeTasksCloud
  include AsposeStorageCloud
	
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @tasks_api = TasksApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new
    response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
  end
  
  def get_task_document_with_format
    #Get a project document in specified format.
    file_name = "sample-project.mpp"
    upload_file(file_name)
    format = "pdf"

    response = @tasks_api.get_task_document_with_format(file_name, format)
  end
  
end
```
## Unit Tests
Aspose Tasks SDK includes a suite of unit tests within the [test]() subdirectory. These Unit Tests also serves as examples of how to use the Aspose Tasks SDK.

## Contact
Your feedback is very important to us. Please email us all your queries and feedback at marketplace@aspose.com.

## License
Aspose Tasks SDK is available under the MIT license. See the [LICENSE]() file for more info.