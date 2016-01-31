require "uri"

module AsposeTasksCloud
  class TasksApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end
    
    # Represents a project document.
    #
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskDocumentResponse]
    def get_task_document(name, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: TasksApi#get_task_document ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_task_document" if name.nil?
        
        # resource path
        path = "/tasks/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['application/json']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'TaskDocumentResponse')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: TasksApi#get_task_document. Result: #{result.inspect}"
                                      end
                                      return result
    end
    
    # Get a project document in specified format.
    #
    # @param name The name of the file.
    # @param format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_task_document_with_format(name, format, opts = {})
        if Configuration.debugging
            Configuration.logger.debug "Calling API: TasksApi#get_task_document_with_format ..."
        end
        
        # verify the required parameter 'name' is set
        fail "Missing the required parameter 'name' when calling get_task_document_with_format" if name.nil?
        
        # verify the required parameter 'format' is set
        fail "Missing the required parameter 'format' when calling get_task_document_with_format" if format.nil?
        
        # resource path
        path = "/tasks/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)
        
        # query parameters
        query_params = {}
        query_params[:'format'] = format
        query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
        query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
        
        # header parameters
        header_params = {}
        
        # HTTP header 'Accept' (if needed)
        _header_accept = ['multipart/form-data']
        _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
        
        # HTTP header 'Content-Type'
        _header_content_type = []
        header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
        
        # form parameters
        form_params = {}
        
        # http body (model)
        post_body = nil
        
        
        auth_names = []
        result = @api_client.call_api(:GET, path,
                                      :header_params => header_params,
                                      :query_params => query_params,
                                      :form_params => form_params,
                                      :body => post_body,
                                      :auth_names => auth_names,
                                      :return_type => 'File')
                                      if Configuration.debugging
                                          Configuration.logger.debug "API called: TasksApi#get_task_document_with_format. Result: #{result.inspect}"
                                      end
                                      return result
    end

    # Read project assignment items.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AssignmentItemsResponse]
    def get_project_assignments(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_assignments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_assignments" if name.nil?
      
      # resource path
      path = "/tasks/{name}/assignments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssignmentItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_assignments. Result: #{result.inspect}"
      end
      return result
    end

    # Adds a new assignment to a project and returns assignment item in a response.
    # 
    # @param name The name of the file.
    # @param task_uid The unique id of the task to be assigned.
    # @param resource_uid The unique id of the resource to be assigned.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :units The units for the new assignment. Default value is 1.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AssignmentItemResponse]
    def post_project_assignment(name, task_uid, resource_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_project_assignment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_project_assignment" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling post_project_assignment" if task_uid.nil?
      
      # verify the required parameter 'resource_uid' is set
      fail "Missing the required parameter 'resource_uid' when calling post_project_assignment" if resource_uid.nil?
      
      # resource path
      path = "/tasks/{name}/assignments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'taskUid'] = task_uid
      query_params[:'resourceUid'] = resource_uid
      query_params[:'units'] = opts[:'units'] if opts[:'units']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssignmentItemResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_project_assignment. Result: #{result.inspect}"
      end
      return result
    end

    # Read project assignment.
    # 
    # @param name The name of the file.
    # @param assignment_uid Assignment Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AssignmentResponse]
    def get_project_assignment(name, assignment_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_assignment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_assignment" if name.nil?
      
      # verify the required parameter 'assignment_uid' is set
      fail "Missing the required parameter 'assignment_uid' when calling get_project_assignment" if assignment_uid.nil?
      
      # resource path
      path = "/tasks/{name}/assignments/{assignmentUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'assignmentUid' + '}', assignment_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssignmentResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_assignment. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes a project assignment with all references to it.
    # 
    # @param name The name of the file.
    # @param assignment_uid assignment Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def delete_project_assignment(name, assignment_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_project_assignment ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_project_assignment" if name.nil?
      
      # verify the required parameter 'assignment_uid' is set
      fail "Missing the required parameter 'assignment_uid' when calling delete_project_assignment" if assignment_uid.nil?
      
      # resource path
      path = "/tasks/{name}/assignments/{assignmentUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'assignmentUid' + '}', assignment_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_project_assignment. Result: #{result.inspect}"
      end
      return result
    end

    # Read project calendar items.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CalendarItemsResponse]
    def get_project_calendars(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_calendars ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_calendars" if name.nil?
      
      # resource path
      path = "/tasks/{name}/calendars".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CalendarItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_calendars. Result: #{result.inspect}"
      end
      return result
    end

    # Adds a new calendar to project file.
    # 
    # @param name The name of the file.
    # @param calendar Calendar DTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CalendarItemResponse]
    def post_project_calendar(name, calendar, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_project_calendar ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_project_calendar" if name.nil?
      
      # verify the required parameter 'calendar' is set
      fail "Missing the required parameter 'calendar' when calling post_project_calendar" if calendar.nil?
      
      # resource path
      path = "/tasks/{name}/calendars".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(calendar)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CalendarItemResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_project_calendar. Result: #{result.inspect}"
      end
      return result
    end

    # Represents a project calendar.
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CalendarResponse]
    def get_project_calendar(name, calendar_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_calendar ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_calendar" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling get_project_calendar" if calendar_uid.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CalendarResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_calendar. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes a project calendar
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def delete_project_calendar(name, calendar_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_project_calendar ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_project_calendar" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling delete_project_calendar" if calendar_uid.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_project_calendar. Result: #{result.inspect}"
      end
      return result
    end

    # Get list of calendar exceptions.
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [CalendarExceptionsResponse]
    def get_calendar_exceptions(name, calendar_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_calendar_exceptions ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_calendar_exceptions" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling get_calendar_exceptions" if calendar_uid.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CalendarExceptionsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_calendar_exceptions. Result: #{result.inspect}"
      end
      return result
    end

    # Adds a new calendar exception to a calendar.
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param calendar_exception CalendarException DTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def post_calendar_exceptions(name, calendar_uid, calendar_exception, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_calendar_exceptions ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_calendar_exceptions" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling post_calendar_exceptions" if calendar_uid.nil?
      
      # verify the required parameter 'calendar_exception' is set
      fail "Missing the required parameter 'calendar_exception' when calling post_calendar_exceptions" if calendar_exception.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(calendar_exception)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_calendar_exceptions. Result: #{result.inspect}"
      end
      return result
    end

    # Updates calendar exception.
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param index Calendar exception index
    # @param calendar_exception CalendarException DTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def put_calendar_exception(name, calendar_uid, index, calendar_exception, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#put_calendar_exception ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_calendar_exception" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling put_calendar_exception" if calendar_uid.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling put_calendar_exception" if index.nil?
      
      # verify the required parameter 'calendar_exception' is set
      fail "Missing the required parameter 'calendar_exception' when calling put_calendar_exception" if calendar_exception.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(calendar_exception)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#put_calendar_exception. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes calendar exception from calendar exceptions collection.
    # 
    # @param name The name of the file.
    # @param calendar_uid Calendar Uid
    # @param index Calendar exception index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_calendar_exception(name, calendar_uid, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_calendar_exception ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_calendar_exception" if name.nil?
      
      # verify the required parameter 'calendar_uid' is set
      fail "Missing the required parameter 'calendar_uid' when calling delete_calendar_exception" if calendar_uid.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling delete_calendar_exception" if index.nil?
      
      # resource path
      path = "/tasks/{name}/calendars/{calendarUid}/calendarExceptions/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'calendarUid' + '}', calendar_uid.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_calendar_exception. Result: #{result.inspect}"
      end
      return result
    end

    # Returns created report in PDF format.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskItemsResponse]
    def get_critical_path(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_critical_path ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_critical_path" if name.nil?
      
      # resource path
      path = "/tasks/{name}/criticalPath".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_critical_path. Result: #{result.inspect}"
      end
      return result
    end

    # Read document properties.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPropertiesResponse]
    def get_document_properties(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_document_properties ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_properties" if name.nil?
      
      # resource path
      path = "/tasks/{name}/documentproperties".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertiesResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_document_properties. Result: #{result.inspect}"
      end
      return result
    end

    # Read document property by name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPropertyResponse]
    def get_document_property(name, property_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling get_document_property" if property_name.nil?
      
      # resource path
      path = "/tasks/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Set/create document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param property {DocumentProperty} with new property value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :filename Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [DocumentPropertyResponse]
    def put_document_property(name, property_name, property, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#put_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling put_document_property" if property_name.nil?
      
      # verify the required parameter 'property' is set
      fail "Missing the required parameter 'property' when calling put_document_property" if property.nil?
      
      # resource path
      path = "/tasks/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'filename'] = opts[:'filename'] if opts[:'filename']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(property)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#put_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Set/create document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param property {DocumentProperty} with new property value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :filename Name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [DocumentPropertyResponse]
    def post_document_property(name, property_name, property, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_document_property ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_document_property" if name.nil?
      
      # verify the required parameter 'property_name' is set
      fail "Missing the required parameter 'property_name' when calling post_document_property" if property_name.nil?
      
      # verify the required parameter 'property' is set
      fail "Missing the required parameter 'property' when calling post_document_property" if property.nil?
      
      # resource path
      path = "/tasks/{name}/documentproperties/{propertyName}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'filename'] = opts[:'filename'] if opts[:'filename']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(property)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_document_property. Result: #{result.inspect}"
      end
      return result
    end

    # Represents a project document.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ExtendedAttributeItemsResponse]
    def get_extended_attributes(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_extended_attributes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_extended_attributes" if name.nil?
      
      # resource path
      path = "/tasks/{name}/extendedAttributes".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExtendedAttributeItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_extended_attributes. Result: #{result.inspect}"
      end
      return result
    end

    # Represents a project extended attribute definition.
    # 
    # @param name The name of the file.
    # @param index Index of extended attribute
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ExtendedAttributeResponse]
    def get_extended_attribute_by_index(name, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_extended_attribute_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_extended_attribute_by_index" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling get_extended_attribute_by_index" if index.nil?
      
      # resource path
      path = "/tasks/{name}/extendedAttributes/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExtendedAttributeResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_extended_attribute_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Delete a project extended attribute.
    # 
    # @param name The name of the file.
    # @param index Index of extended attribute
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_extended_attribute_by_index(name, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_extended_attribute_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_extended_attribute_by_index" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling delete_extended_attribute_by_index" if index.nil?
      
      # resource path
      path = "/tasks/{name}/extendedAttributes/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_extended_attribute_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Read outline codes.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [OutlineCodeItemsResponse]
    def get_outline_codes(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_outline_codes ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_outline_codes" if name.nil?
      
      # resource path
      path = "/tasks/{name}/outlineCodes".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OutlineCodeItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_outline_codes. Result: #{result.inspect}"
      end
      return result
    end

    # Get outline code by index.
    # 
    # @param name The name of the file.
    # @param index Outline code index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [OutlineCodeResponse]
    def get_outline_code_by_index(name, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_outline_code_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_outline_code_by_index" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling get_outline_code_by_index" if index.nil?
      
      # resource path
      path = "/tasks/{name}/outlineCodes/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OutlineCodeResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_outline_code_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes a project outline code
    # 
    # @param name The name of the file.
    # @param index Outline code index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def delete_outline_code_by_index(name, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_outline_code_by_index ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_outline_code_by_index" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling delete_outline_code_by_index" if index.nil?
      
      # resource path
      path = "/tasks/{name}/outlineCodes/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_outline_code_by_index. Result: #{result.inspect}"
      end
      return result
    end

    # Returns created report in PDF format.
    # 
    # @param name The name of the file.
    # @param type A type of the project&#39;s graphical report.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_report_pdf(name, type, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_report_pdf ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_report_pdf" if name.nil?
      
      # verify the required parameter 'type' is set
      fail "Missing the required parameter 'type' when calling get_report_pdf" if type.nil?
      
      # resource path
      path = "/tasks/{name}/report".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_report_pdf. Result: #{result.inspect}"
      end
      return result
    end

    # Read project resources.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ResourceItemsResponse]
    def get_project_resources(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_resources ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_resources" if name.nil?
      
      # resource path
      path = "/tasks/{name}/resources".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourceItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_resources. Result: #{result.inspect}"
      end
      return result
    end

    # Add a new resource to a project.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_name The name of the new resource. The default value is an empty string
    # @option opts [Integer] :before_resource_id The id of the resource to insert the new resource before. The default value is the id of the last resource in a project file.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ResourceItemResponse]
    def post_project_resource(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_project_resource ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_project_resource" if name.nil?
      
      # resource path
      path = "/tasks/{name}/resources".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'resourceName'] = opts[:'resource_name'] if opts[:'resource_name']
      query_params[:'beforeResourceId'] = opts[:'before_resource_id'] if opts[:'before_resource_id']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourceItemResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_project_resource. Result: #{result.inspect}"
      end
      return result
    end

    # Get project resource.
    # 
    # @param name The name of the file.
    # @param resource_uid Resource Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ResourceResponse]
    def get_project_resource(name, resource_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_resource ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_resource" if name.nil?
      
      # verify the required parameter 'resource_uid' is set
      fail "Missing the required parameter 'resource_uid' when calling get_project_resource" if resource_uid.nil?
      
      # resource path
      path = "/tasks/{name}/resources/{resourceUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'resourceUid' + '}', resource_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourceResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_resource. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes a project resource with all references to it
    # 
    # @param name The name of the file.
    # @param resource_uid Resource Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def delete_project_resource(name, resource_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_project_resource ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_project_resource" if name.nil?
      
      # verify the required parameter 'resource_uid' is set
      fail "Missing the required parameter 'resource_uid' when calling delete_project_resource" if resource_uid.nil?
      
      # resource path
      path = "/tasks/{name}/resources/{resourceUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'resourceUid' + '}', resource_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_project_resource. Result: #{result.inspect}"
      end
      return result
    end

    # Get resource assignments.
    # 
    # @param name The name of the file.
    # @param resource_uid Resource Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AssignmentsResponse]
    def get_resource_assignments(name, resource_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_resource_assignments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_resource_assignments" if name.nil?
      
      # verify the required parameter 'resource_uid' is set
      fail "Missing the required parameter 'resource_uid' when calling get_resource_assignments" if resource_uid.nil?
      
      # resource path
      path = "/tasks/{name}/resources/{resourceUid}/assignments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'resourceUid' + '}', resource_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssignmentsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_resource_assignments. Result: #{result.inspect}"
      end
      return result
    end

    # Read task links.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskLinksResponse]
    def get_task_links(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_task_links ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_task_links" if name.nil?
      
      # resource path
      path = "/tasks/{name}/taskLinks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskLinksResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_task_links. Result: #{result.inspect}"
      end
      return result
    end

    # Adds a new task link to a project.
    # 
    # @param name The name of the file.
    # @param dto TaskLink dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def post_task_link(name, dto, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_task_link ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_task_link" if name.nil?
      
      # verify the required parameter 'dto' is set
      fail "Missing the required parameter 'dto' when calling post_task_link" if dto.nil?
      
      # resource path
      path = "/tasks/{name}/taskLinks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_task_link. Result: #{result.inspect}"
      end
      return result
    end

    # Updates task link.
    # 
    # @param name The name of the file.
    # @param index Task link index
    # @param dto TaskLink dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [TaskLinkResponse]
    def put_task_link(name, index, dto, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#put_task_link ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_task_link" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling put_task_link" if index.nil?
      
      # verify the required parameter 'dto' is set
      fail "Missing the required parameter 'dto' when calling put_task_link" if dto.nil?
      
      # resource path
      path = "/tasks/{name}/taskLinks/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskLinkResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#put_task_link. Result: #{result.inspect}"
      end
      return result
    end

    # Updates task link.
    # 
    # @param name The name of the file.
    # @param index Task link index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def delete_task_link(name, index, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_task_link ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_task_link" if name.nil?
      
      # verify the required parameter 'index' is set
      fail "Missing the required parameter 'index' when calling delete_task_link" if index.nil?
      
      # resource path
      path = "/tasks/{name}/taskLinks/{index}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_task_link. Result: #{result.inspect}"
      end
      return result
    end

    # Read project task items.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskItemsResponse]
    def get_project_tasks(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_tasks ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_tasks" if name.nil?
      
      # resource path
      path = "/tasks/{name}/tasks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskItemsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_tasks. Result: #{result.inspect}"
      end
      return result
    end

    # Add a new task to a project.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :task_name The name of the new task. The default value is an empty string
    # @option opts [Integer] :before_task_id The id of the task to insert the new task before. The default value is the id of the last task in a project file.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskItemResponse]
    def post_project_task(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#post_project_task ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling post_project_task" if name.nil?
      
      # resource path
      path = "/tasks/{name}/tasks".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'taskName'] = opts[:'task_name'] if opts[:'task_name']
      query_params[:'beforeTaskId'] = opts[:'before_task_id'] if opts[:'before_task_id']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskItemResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#post_project_task. Result: #{result.inspect}"
      end
      return result
    end

    # Read project task.
    # 
    # @param name The name of the file.
    # @param task_uid Task Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [TaskResponse]
    def get_project_task(name, task_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_task ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_task" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling get_project_task" if task_uid.nil?
      
      # resource path
      path = "/tasks/{name}/tasks/{taskUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'taskUid' + '}', task_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaskResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_task. Result: #{result.inspect}"
      end
      return result
    end

    # Deletes a project task with all references to it and rebuilds tasks tree.
    # 
    # @param name The name of the file.
    # @param task_uid Task Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @return [BaseResponse]
    def delete_project_task(name, task_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#delete_project_task ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling delete_project_task" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling delete_project_task" if task_uid.nil?
      
      # resource path
      path = "/tasks/{name}/tasks/{taskUid}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'taskUid' + '}', task_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#delete_project_task. Result: #{result.inspect}"
      end
      return result
    end

    # Get task assignments.
    # 
    # @param name The name of the file.
    # @param task_uid Task Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AssignmentsResponse]
    def get_task_assignments(name, task_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_task_assignments ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_task_assignments" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling get_task_assignments" if task_uid.nil?
      
      # resource path
      path = "/tasks/{name}/tasks/{taskUid}/assignments".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'taskUid' + '}', task_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssignmentsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_task_assignments. Result: #{result.inspect}"
      end
      return result
    end

    # Move one task to another parent task
    # 
    # @param name The name of the file.
    # @param task_uid Task Uid
    # @param parent_task_uid Uniquer id of the task.This task represent parent task for another task.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name of the project document to save changes to. If this parameter is omitted then the changes will be saved to the source project document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BaseResponse]
    def put_move_task(name, task_uid, parent_task_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#put_move_task ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling put_move_task" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling put_move_task" if task_uid.nil?
      
      # verify the required parameter 'parent_task_uid' is set
      fail "Missing the required parameter 'parent_task_uid' when calling put_move_task" if parent_task_uid.nil?
      
      # resource path
      path = "/tasks/{name}/tasks/{taskUid}/move".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'taskUid' + '}', task_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'parentTaskUid'] = parent_task_uid
      query_params[:'fileName'] = opts[:'file_name'] if opts[:'file_name']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#put_move_task. Result: #{result.inspect}"
      end
      return result
    end

    # Get recurring info for the task
    # 
    # @param name The name of the file.
    # @param task_uid Task Uid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [RecurringInfoResponse]
    def get_task_recurring_info(name, task_uid, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_task_recurring_info ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_task_recurring_info" if name.nil?
      
      # verify the required parameter 'task_uid' is set
      fail "Missing the required parameter 'task_uid' when calling get_task_recurring_info" if task_uid.nil?
      
      # resource path
      path = "/tasks/{name}/tasks/{taskUid}/recurringInfo".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'taskUid' + '}', task_uid.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RecurringInfoResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_task_recurring_info. Result: #{result.inspect}"
      end
      return result
    end

    # Get project WBS Definition.
    # 
    # @param name The name of the file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WBSDefinitionResponse]
    def get_project_wbs_definition(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TasksApi#get_project_wbs_definition ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_project_wbs_definition" if name.nil?
      
      # resource path
      path = "/tasks/{name}/wbsDefinition".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WBSDefinitionResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TasksApi#get_project_wbs_definition. Result: #{result.inspect}"
      end
      return result
    end
  end
end




