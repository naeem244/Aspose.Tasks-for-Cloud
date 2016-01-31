module AsposeTasksCloud
  # 
  class CalendarException < BaseObject
    attr_accessor :entered_by_occurrences, :from_date, :to_date, :occurrences, :name, :type, :period, :month_item, :month_position, :month, :month_day, :day_working, :working_times, :days_of_week
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'entered_by_occurrences' => :'EnteredByOccurrences',
        
        # 
        :'from_date' => :'FromDate',
        
        # 
        :'to_date' => :'ToDate',
        
        # 
        :'occurrences' => :'Occurrences',
        
        # 
        :'name' => :'Name',
        
        # 
        :'type' => :'Type',
        
        # 
        :'period' => :'Period',
        
        # 
        :'month_item' => :'MonthItem',
        
        # 
        :'month_position' => :'MonthPosition',
        
        # 
        :'month' => :'Month',
        
        # 
        :'month_day' => :'MonthDay',
        
        # 
        :'day_working' => :'DayWorking',
        
        # 
        :'working_times' => :'WorkingTimes',
        
        # 
        :'days_of_week' => :'DaysOfWeek'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'entered_by_occurrences' => :'BOOLEAN',
        :'from_date' => :'String',
        :'to_date' => :'String',
        :'occurrences' => :'Integer',
        :'name' => :'String',
        :'type' => :'String',
        :'period' => :'Integer',
        :'month_item' => :'String',
        :'month_position' => :'String',
        :'month' => :'String',
        :'month_day' => :'Integer',
        :'day_working' => :'BOOLEAN',
        :'working_times' => :'Array<WorkingTime>',
        :'days_of_week' => :'Array<String>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'EnteredByOccurrences']
        self.entered_by_occurrences = attributes[:'EnteredByOccurrences']
      end
      
      if attributes[:'FromDate']
        self.from_date = attributes[:'FromDate']
      end
      
      if attributes[:'ToDate']
        self.to_date = attributes[:'ToDate']
      end
      
      if attributes[:'Occurrences']
        self.occurrences = attributes[:'Occurrences']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Period']
        self.period = attributes[:'Period']
      end
      
      if attributes[:'MonthItem']
        self.month_item = attributes[:'MonthItem']
      end
      
      if attributes[:'MonthPosition']
        self.month_position = attributes[:'MonthPosition']
      end
      
      if attributes[:'Month']
        self.month = attributes[:'Month']
      end
      
      if attributes[:'MonthDay']
        self.month_day = attributes[:'MonthDay']
      end
      
      if attributes[:'DayWorking']
        self.day_working = attributes[:'DayWorking']
      end
      
      if attributes[:'WorkingTimes']
        if (value = attributes[:'WorkingTimes']).is_a?(Array)
          self.working_times = value
        end
      end
      
      if attributes[:'DaysOfWeek']
        if (value = attributes[:'DaysOfWeek']).is_a?(Array)
          self.days_of_week = value
        end
      end
      
    end

  end
end
