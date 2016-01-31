require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_tasks_cloud'

class TasksTests < Minitest::Test
	include MiniTest::Assertions
	include AsposeTasksCloud
	include AsposeStorageCloud
	
	def setup
        #Get App key and App SID from https://cloud.aspose.com
        AsposeApp.app_key_and_sid("", "")
		@tasks_api = TasksApi.new
	end

	def teardown
	end

	def upload_file(file_name)
        @storage_api = StorageApi.new
		response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )

		assert(response, message="Failed to upload {file_name} file.")
	end

	def test_get_task_document
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_task_document(file_name)
	 	assert(response, message="Failed to represents a project document.")
	end

	def test_get_task_document_with_format
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	format = "pdf"

        response = @tasks_api.get_task_document_with_format(file_name, format)
	 	assert(response, message="Failed to get a project document in specified format.")
	end

	def test_get_project_assignments
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_project_assignments(file_name)
	 	assert(response, message="Failed to read project assignment items.")
	end

	def test_post_project_assignment
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	task_uid = 1
    	resource_uid = 1

        response = @tasks_api.post_project_assignment(file_name, task_uid, resource_uid)
	 	assert(response, message="Failed to add a new assignment to a project")
	end

	def test_get_project_assignment
        file_name = "sample-project-2.mpp"
     	upload_file(file_name)
    	assignment_uid = 1

        response = @tasks_api.get_project_assignment(file_name, assignment_uid)
	 	assert(response, message="Failed to read project assignment.")
	end

	def test_delete_project_assignment
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	assignment_uid = 1

        response = @tasks_api.delete_project_assignment(file_name, assignment_uid)
	 	assert(response, message="Failed to deletes a project assignment with all references to it.")
	end

	def test_get_project_calendars
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_project_calendars(file_name)
	 	assert(response, message="Failed to read project calendar items.")
	end

	def test_post_project_calendar
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar = Calendar.new
    	calendar.name = "TestCalender"
    	calendar.uid = 0

        response = @tasks_api.post_project_calendar(file_name, calendar)
	 	assert(response, message="Failed to add a new calendar to project file.")
	end

	def test_get_project_calendar
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar_uid =  1

        response = @tasks_api.get_project_calendar(file_name, calendar_uid)
	 	assert(response, message="Failed to represents a project calendar.")
	end

	def test_delete_project_calendar
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar_uid = 2

        response = @tasks_api.delete_project_calendar(file_name, calendar_uid)
	 	assert(response, message="Failed to deletes a project calendar")
	end

	def test_get_calendar_exceptions
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar_uid = 1

        response = @tasks_api.get_calendar_exceptions(file_name, calendar_uid)
	 	assert(response, message="Failed to get list of calendar exceptions.")
	end

	def test_post_calendar_exceptions
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	calendar_uid = 1
	    calendar_exception = CalendarException.new
	    calendar_exception.name = "Test" 
	    calendar_exception.from_date = Time.utc(2016, 01, 28).to_s
	    calendar_exception.to_date = Time.utc(2016, 01, 30).to_s

        response = @tasks_api.post_calendar_exceptions(file_name, calendar_uid, calendar_exception)
	 	assert(response, message="Failed to add a new calendar exception to a calendar.")
	end

	def test_put_calendar_exception
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar_uid = 1
    	index = 1
	    calendar_exception = CalendarException.new
	    calendar_exception.name = "Test" 
	    calendar_exception.from_date = Time.utc(2016, 01, 28).to_s
	    calendar_exception.to_date = Time.utc(2016, 01, 30).to_s

        response = @tasks_api.put_calendar_exception(file_name, calendar_uid, index, calendar_exception)
	 	assert(response, message="Failed to updates calendar exception.")
	end

	def test_delete_calendar_exception
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	calendar_uid = 1 
    	index = 1

        response = @tasks_api.delete_calendar_exception(file_name, calendar_uid, index)
	 	assert(response, message="Failed to deletes calendar exception from calendar exceptions collection.")
	end

	def test_get_critical_path
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_critical_path(file_name)
	 	assert(response, message="Failed to returns created report in PDF format.")
	end

	def test_get_document_properties
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_document_properties(file_name)
	 	assert(response, message="Failed to read document properties.")
	end

	def test_get_document_property
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	property_name = "Title"

        response = @tasks_api.get_document_property(file_name, property_name)
	 	assert(response, message="Failed to read document property by name.")
	end

	def test_put_document_property
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	property_name = "Title"
    	document_property = DocumentProperty.new
    	document_property.name = property_name
    	document_property.value = "New Title"

        response = @tasks_api.put_document_property(file_name, property_name, document_property)
	 	assert(response, message="Failed to set/create document property.")
	end

	def test_post_document_property
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	property_name = "Title"
    	document_property = DocumentProperty.new
    	document_property.name = property_name
    	document_property.value = "New Title"

        response = @tasks_api.post_document_property(file_name, property_name, document_property)
	 	assert(response, message="Failed to set/create document property")
	end

	def test_get_extended_attributes
        file_name = "ExtendedAttribute.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_extended_attributes(file_name)
	 	assert(response, message="Failed to represents a project document.")
	end

	def test_get_extended_attribute_by_index
        file_name = "ExtendedAttribute.mpp"
    	upload_file(file_name)
    	index = 1

        response = @tasks_api.get_extended_attribute_by_index(file_name, index)
	 	assert(response, message="Failed to represent a project extended attribute definition.")
	end

	def test_delete_extended_attribute_by_index
        file_name = "ExtendedAttribute.mpp"
    	upload_file(file_name)
    	index = 1

        response = @tasks_api.delete_extended_attribute_by_index(file_name, index)
	 	assert(response, message="Failed to delete a project extended attribute.")
	end

	def test_get_outline_codes
        file_name = "Outlinecode.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_outline_codes(file_name)
	 	assert(response, message="Failed to read outline codes.")
	end

	def test_get_outline_code_by_index
        file_name = "Outlinecode.mpp"
    	upload_file(file_name)
    	index = 1

        response = @tasks_api.get_outline_code_by_index(file_name, index)
	 	assert(response, message="Failed to get outline code by index.")
	end

	def test_delete_outline_code_by_index
        file_name = "Outlinecode.mpp"
    	upload_file(file_name)
    	index = 1

        response = @tasks_api.delete_outline_code_by_index(file_name, index)
	 	assert(response, message="Failed to deletes a project outline code")
	end

	def test_get_report_pdf
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	type = "WorkOverview"

        response = @tasks_api.get_report_pdf(file_name, type)
	 	assert(response, message="Failed to return created report in PDF format.")
	end

	def test_get_project_resources
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_project_resources(file_name)
	 	assert(response, message="Failed to read project resources.")
	end

	def test_post_project_resource
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	opts = {resource_name: "Resource6", before_resource_id: 1}

        response = @tasks_api.post_project_resource(file_name, opts)
	 	assert(response, message="Failed to add a new resource to a project.")
	end

	def test_get_project_resource
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	resource_uid = 1

        response = @tasks_api.get_project_resource(file_name, resource_uid)
	 	assert(response, message="Failed to get project resource.")
	end

	def test_delete_project_resource
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	resource_uid = 1

        response = @tasks_api.delete_project_resource(file_name, resource_uid)
	 	assert(response, message="Failed to deletes a project resource with all references to it.")
	end

	def test_get_resource_assignments
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	resource_uid = 1

        response = @tasks_api.get_resource_assignments(file_name, resource_uid)
	 	assert(response, message="Failed to get resource assignments.")
	end

	def test_get_task_links
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_task_links(file_name)
	 	assert(response, message="Failed to read task links.")
	end

	def test_post_task_link
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	task_link = TaskLink.new
    	task_link.index = 2
    	task_link.predecessor_uid = 1
    	task_link.successor_uid = 2

        response = @tasks_api.post_task_link(file_name, task_link)
	 	assert(response, message="Failed to add a new task link to a project.")
	end

	def test_put_task_link
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	index = 1
    	task_link = TaskLink.new
    	task_link.index = index
    	task_link.predecessor_uid = 0
    	task_link.successor_uid = 1

        response = @tasks_api.put_task_link(file_name, index, task_link)
	 	assert(response, message="Failed to updates task link.")
	end

	def test_delete_task_link
        file_name = "sample-project.mpp"
    	upload_file(file_name)
		index = 1

        response = @tasks_api.delete_task_link(file_name, index)
	 	assert(response, message="Failed to updates task link.")
	end

	def test_get_project_tasks
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_project_tasks(file_name)
	 	assert(response, message="Failed to read project task items.")
	end

	def test_post_project_task
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	opts = {task_name: "NewTask", before_task_id: 1}

        response = @tasks_api.post_project_task(file_name, opts)
	 	assert(response, message="Failed to add a new task to a project.")
	end

	def test_get_project_task
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	task_uid = 1

        response = @tasks_api.get_project_task(file_name, task_uid)
	 	assert(response, message="Failed to read project task.")
	end

	def test_delete_project_task
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	task_uid = 1

        response = @tasks_api.delete_project_task(file_name, task_uid)
	 	assert(response, message="Failed to delete a project task with all references to it and rebuilds tasks tree.")
	end

	def test_get_task_assignments
        file_name = "sample-project-2.mpp"
    	upload_file(file_name)
    	task_uid = 1

        response = @tasks_api.get_task_assignments(file_name, task_uid)
	 	assert(response, message="Failed to get task assignments.")
	end

	def test_put_move_task
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	task_uid = 1
    	parent_task_uid = 1

        response = @tasks_api.put_move_task(file_name, task_uid, parent_task_uid)
	 	assert(response, message="Failed to move one task to another parent task")
	end

	def test_get_task_recurring_info
        file_name = "sample-project.mpp"
    	upload_file(file_name)
    	task_uid = 1

        response = @tasks_api.get_task_recurring_info(file_name, task_uid)
	 	assert(response, message="Failed to get recurring info for the task.")
	end

	def test_get_project_wbs_definition
        file_name = "sample-project.mpp"
    	upload_file(file_name)

        response = @tasks_api.get_project_wbs_definition(file_name)
	 	assert(response, message="Failed to get project WBS Definition.")
	end
    
end