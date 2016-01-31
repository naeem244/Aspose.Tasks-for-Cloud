module AsposeTasksCloud
  # 
  class WeekDay < BaseObject
    attr_accessor :day_type, :day_working, :from_date, :to_date, :working_times
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'day_type' => :'DayType',
        
        # 
        :'day_working' => :'DayWorking',
        
        # 
        :'from_date' => :'FromDate',
        
        # 
        :'to_date' => :'ToDate',
        
        # 
        :'working_times' => :'WorkingTimes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'day_type' => :'String',
        :'day_working' => :'BOOLEAN',
        :'from_date' => :'String',
        :'to_date' => :'String',
        :'working_times' => :'Array<WorkingTime>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'DayType']
        self.day_type = attributes[:'DayType']
      end
      
      if attributes[:'DayWorking']
        self.day_working = attributes[:'DayWorking']
      end
      
      if attributes[:'FromDate']
        self.from_date = attributes[:'FromDate']
      end
      
      if attributes[:'ToDate']
        self.to_date = attributes[:'ToDate']
      end
      
      if attributes[:'WorkingTimes']
        if (value = attributes[:'WorkingTimes']).is_a?(Array)
          self.working_times = value
        end
      end
      
    end

  end
end
