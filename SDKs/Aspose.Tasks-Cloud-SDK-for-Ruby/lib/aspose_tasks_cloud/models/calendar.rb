module AsposeTasksCloud
  # 
  class Calendar < BaseObject
    attr_accessor :name, :uid, :days, :exceptions, :is_base_calendar, :base_calendar, :is_baseline_calendar
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'days' => :'Days',
        
        # 
        :'exceptions' => :'Exceptions',
        
        # 
        :'is_base_calendar' => :'IsBaseCalendar',
        
        # 
        :'base_calendar' => :'BaseCalendar',
        
        # 
        :'is_baseline_calendar' => :'IsBaselineCalendar'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'uid' => :'Integer',
        :'days' => :'Array<WeekDay>',
        :'exceptions' => :'Array<CalendarException>',
        :'is_base_calendar' => :'BOOLEAN',
        :'base_calendar' => :'Calendar',
        :'is_baseline_calendar' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'Days']
        if (value = attributes[:'Days']).is_a?(Array)
          self.days = value
        end
      end
      
      if attributes[:'Exceptions']
        if (value = attributes[:'Exceptions']).is_a?(Array)
          self.exceptions = value
        end
      end
      
      if attributes[:'IsBaseCalendar']
        self.is_base_calendar = attributes[:'IsBaseCalendar']
      end
      
      if attributes[:'BaseCalendar']
        self.base_calendar = attributes[:'BaseCalendar']
      end
      
      if attributes[:'IsBaselineCalendar']
        self.is_baseline_calendar = attributes[:'IsBaselineCalendar']
      end
      
    end

  end
end
