Pod::Spec.new do |s|
  s.name         = "AsposeTasksCloud"
  s.version      = "1.0.0"
  s.summary      = "Aspose.Tasks for Cloud"
  s.description  = <<-DESC
                   Aspose.Tasks for Cloud is a REST API for manipulating Microsoft Project documents in the cloud. It allows you to work with all aspects of a Project document including conversion. The API offers a wide range of Microsoft Project export options. The Aspose.Tasks for Cloud API allows developers to convert Project documents to various formats including XML, HTML, BMP, PNG, PDF, and XSLX. The API can be used to list document properties such as a project’s default start and finish time, minutes per week and days per month, work format, default task type, and so on. The API also provides the capability to retrieve information about each task from a Project data file hosted in the cloud. Task information such as name, ID, duration, and start and end dates, can be retrieved. In addition, the API can add new tasks to projects and retrieve information about task links and task assignments. The Aspose.Tasks API can manage project resources for documents hosted in the cloud. It supports adding a new resource, retrieve a list of project resources, and delet existing resources from the Project data. The API also facilitates retrieval of resource assignments information for resources assigned to project tasks. The API provides full access to a project’s calendar collection. Details about project calendars such as ID, name, and working days and time, can be read. New calendars can be added or deleted from hosted project data files. The API can be used to create new calendar exceptions to the Project’s calendars and retrieving a list of existing exceptions. 
                   DESC

  s.homepage     = "http://www.aspose.com/cloud/project-management-api.aspx"
  s.license = { :type => 'MIT', :file => 'LICENSE'}
  s.author = { "M. Sohail Ismail" => "muhammad.sohail@aspose.com" }
  s.social_media_url = "https://www.facebook.com/asposeplugins/"
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/asposetasks/Aspose_Tasks_Cloud.git", :tag => "1.0.0" }
  
  s.subspec 'model' do |ss|
      ss.source_files = 'SDKs/Aspose.Tasks_Cloud_SDK_For_Objective_C/Aspose.Tasks_Cloud_SDK_For_Objective_C/tasks/model/*.{h,m}'
  end
  s.subspec 'api' do |ss|
      ss.dependency 'AsposeTasksCloud/model'
      ss.source_files = 'SDKs/Aspose.Tasks_Cloud_SDK_For_Objective_C/Aspose.Tasks_Cloud_SDK_For_Objective_C/tasks/api/*.{h,m}'
  end
  
  s.dependency "AFNetworking", "~> 2.0"
  s.dependency "JSONModel", "~> 1.1"
  s.dependency "ISO8601", "~> 0.3"
  s.dependency "AsposeStorageCloud"

  s.requires_arc = true

end