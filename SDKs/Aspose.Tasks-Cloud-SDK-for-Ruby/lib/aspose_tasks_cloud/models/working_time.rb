module AsposeTasksCloud
  # 
  class WorkingTime < BaseObject
    attr_accessor :from_time, :to_time
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'from_time' => :'FromTime',
        
        # 
        :'to_time' => :'ToTime'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'from_time' => :'String',
        :'to_time' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FromTime']
        self.from_time = attributes[:'FromTime']
      end
      
      if attributes[:'ToTime']
        self.to_time = attributes[:'ToTime']
      end
      
    end

  end
end
