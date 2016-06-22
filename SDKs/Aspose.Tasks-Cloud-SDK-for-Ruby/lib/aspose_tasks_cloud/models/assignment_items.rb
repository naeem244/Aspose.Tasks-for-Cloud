module AsposeTasksCloud
  # 
  class AssignmentItems < BaseObject
    attr_accessor :assignment_item, :link
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'assignment_item' => :'AssignmentItem',
        
        # 
        :'link' => :'link'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'assignment_item' => :'Array<AssignmentItem>',
        :'link' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'AssignmentItem']
        if (value = attributes[:'AssignmentItem']).is_a?(Array)
          self.assignment_item = value
        end
      end
      
      if attributes[:'link']
        self.link = attributes[:'link']
      end
      
    end

  end
end
