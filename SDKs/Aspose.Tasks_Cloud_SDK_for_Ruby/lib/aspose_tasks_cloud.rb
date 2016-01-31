require 'aspose_storage_cloud'

# Common files
require_relative 'aspose_tasks_cloud/api_client'
require_relative 'aspose_tasks_cloud/api_error'
require_relative 'aspose_tasks_cloud/version'
require_relative 'aspose_tasks_cloud/configuration'

# Models
require_relative 'aspose_tasks_cloud/models/base_object'
require_relative 'aspose_tasks_cloud/models/base_response'
require_relative 'aspose_tasks_cloud/models/resource_items_response'
require_relative 'aspose_tasks_cloud/models/resource_items'
require_relative 'aspose_tasks_cloud/models/resource_item'
require_relative 'aspose_tasks_cloud/models/resource_item_response'
require_relative 'aspose_tasks_cloud/models/resource_response'
require_relative 'aspose_tasks_cloud/models/resource'
require_relative 'aspose_tasks_cloud/models/extended_attribute'
require_relative 'aspose_tasks_cloud/models/outline_code'
require_relative 'aspose_tasks_cloud/models/assignments_response'
require_relative 'aspose_tasks_cloud/models/resource_assignments'
require_relative 'aspose_tasks_cloud/models/resource_assignment'
require_relative 'aspose_tasks_cloud/models/task_items_response'
require_relative 'aspose_tasks_cloud/models/task_items'
require_relative 'aspose_tasks_cloud/models/task_item'
require_relative 'aspose_tasks_cloud/models/calendar_items_response'
require_relative 'aspose_tasks_cloud/models/calendar_items'
require_relative 'aspose_tasks_cloud/models/calendar_item'
require_relative 'aspose_tasks_cloud/models/calendar'
require_relative 'aspose_tasks_cloud/models/week_day'
require_relative 'aspose_tasks_cloud/models/calendar_exception'
require_relative 'aspose_tasks_cloud/models/working_time'
require_relative 'aspose_tasks_cloud/models/calendar_item_response'
require_relative 'aspose_tasks_cloud/models/calendar_response'
require_relative 'aspose_tasks_cloud/models/calendar_exceptions_response'
require_relative 'aspose_tasks_cloud/models/assignment_items_response'
require_relative 'aspose_tasks_cloud/models/assignment_items'
require_relative 'aspose_tasks_cloud/models/assignment_item'
require_relative 'aspose_tasks_cloud/models/assignment_item_response'
require_relative 'aspose_tasks_cloud/models/assignment_response'
require_relative 'aspose_tasks_cloud/models/task_item_response'
require_relative 'aspose_tasks_cloud/models/task_response'
require_relative 'aspose_tasks_cloud/models/task'
require_relative 'aspose_tasks_cloud/models/recurring_info_response'
require_relative 'aspose_tasks_cloud/models/recurring_info'
require_relative 'aspose_tasks_cloud/models/outline_code_items_response'
require_relative 'aspose_tasks_cloud/models/outline_code_items'
require_relative 'aspose_tasks_cloud/models/outline_code_item'
require_relative 'aspose_tasks_cloud/models/outline_code_response'
require_relative 'aspose_tasks_cloud/models/outline_code_definition'
require_relative 'aspose_tasks_cloud/models/outline_value'
require_relative 'aspose_tasks_cloud/models/outline_mask'
require_relative 'aspose_tasks_cloud/models/document_properties_response'
require_relative 'aspose_tasks_cloud/models/document_properties'
require_relative 'aspose_tasks_cloud/models/document_property'
require_relative 'aspose_tasks_cloud/models/document_property_response'
require_relative 'aspose_tasks_cloud/models/task_links_response'
require_relative 'aspose_tasks_cloud/models/task_link'
require_relative 'aspose_tasks_cloud/models/task_link_response'
require_relative 'aspose_tasks_cloud/models/wbs_definition_response'
require_relative 'aspose_tasks_cloud/models/wbs_definition'
require_relative 'aspose_tasks_cloud/models/wbs_code_mask'
require_relative 'aspose_tasks_cloud/models/extended_attribute_items_response'
require_relative 'aspose_tasks_cloud/models/extended_attribute_items'
require_relative 'aspose_tasks_cloud/models/extended_attribute_item'
require_relative 'aspose_tasks_cloud/models/extended_attribute_response'
require_relative 'aspose_tasks_cloud/models/extended_attribute_definition'
require_relative 'aspose_tasks_cloud/models/value'
require_relative 'aspose_tasks_cloud/models/link'
require_relative 'aspose_tasks_cloud/models/task_document_response'
require_relative 'aspose_tasks_cloud/models/task_document'

# APIs
require_relative 'aspose_tasks_cloud/api/tasks_api'

module AsposeTasksCloud
  class << self
    # Configure sdk using block.
    # AsposeTasksCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
