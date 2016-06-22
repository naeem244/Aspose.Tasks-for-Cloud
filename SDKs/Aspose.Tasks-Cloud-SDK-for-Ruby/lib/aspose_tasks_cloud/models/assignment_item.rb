module AsposeTasksCloud
  # 
  class AssignmentItem < BaseObject
    attr_accessor :link, :uid, :task_uid, :resource_uid
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'task_uid' => :'TaskUid',
        
        # 
        :'resource_uid' => :'ResourceUid'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'uid' => :'Integer',
        :'task_uid' => :'Integer',
        :'resource_uid' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Link']
        self.link = attributes[:'Link']
      end
      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'TaskUid']
        self.task_uid = attributes[:'TaskUid']
      end
      
      if attributes[:'ResourceUid']
        self.resource_uid = attributes[:'ResourceUid']
      end
      
    end

  end
end
