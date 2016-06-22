# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_tasks_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_tasks_cloud"
  s.version     = AsposeTasksCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/project-management-api.aspx"
  s.summary     = %q{Aspose.Tasks for Cloud}
  s.description = %q{Aspose.Tasks for Cloud is a REST API for manipulating Microsoft Project documents in the cloud. It allows you to work with all aspects of a Project document including conversion. The API offers a wide range of Microsoft Project export options. The Aspose.Tasks for Cloud API allows developers to convert Project documents to various formats including XML, HTML, BMP, PNG, PDF, and XSLX. The API can be used to list document properties such as a project’s default start and finish time, minutes per week and days per month, work format, default task type, and so on. The API also provides the capability to retrieve information about each task from a Project data file hosted in the cloud. Task information such as name, ID, duration, and start and end dates, can be retrieved. In addition, the API can add new tasks to projects and retrieve information about task links and task assignments. The Aspose.Tasks API can manage project resources for documents hosted in the cloud. It supports adding a new resource, retrieve a list of project resources, and delet existing resources from the Project data. The API also facilitates retrieval of resource assignments information for resources assigned to project tasks. The API provides full access to a project’s calendar collection. Details about project calendars such as ID, name, and working days and time, can be read. New calendars can be added or deleted from hosted project data files. The API can be used to create new calendar exceptions to the Project’s calendars and retrieving a list of existing exceptions.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'
  s.add_runtime_dependency 'aspose_storage_cloud', '~> 1.0', '>= 1.0.0'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end