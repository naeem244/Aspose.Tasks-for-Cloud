module AsposeTasksCloud
  # 
  class RecurringInfo < BaseObject
    attr_accessor :recurrence_pattern, :start_date, :end_date, :duration, :occurrences, :use_end_date, :daily_repetitions, :daily_use_workdays, :weekly_repetitions, :weekly_days, :monthly_use_ordinal_day, :monthly_ordinal_number, :monthly_ordinal_day, :monthly_ordinal_repetitions, :monthly_day, :monthly_repetitions, :yearly_use_ordinal_day, :yearly_date, :yearly_ordinal_number, :yearly_ordinal_day, :yearly_ordinal_month
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'recurrence_pattern' => :'RecurrencePattern',
        
        # 
        :'start_date' => :'StartDate',
        
        # 
        :'end_date' => :'EndDate',
        
        # 
        :'duration' => :'Duration',
        
        # 
        :'occurrences' => :'Occurrences',
        
        # 
        :'use_end_date' => :'UseEndDate',
        
        # 
        :'daily_repetitions' => :'DailyRepetitions',
        
        # 
        :'daily_use_workdays' => :'DailyUseWorkdays',
        
        # 
        :'weekly_repetitions' => :'WeeklyRepetitions',
        
        # 
        :'weekly_days' => :'WeeklyDays',
        
        # 
        :'monthly_use_ordinal_day' => :'MonthlyUseOrdinalDay',
        
        # 
        :'monthly_ordinal_number' => :'MonthlyOrdinalNumber',
        
        # 
        :'monthly_ordinal_day' => :'MonthlyOrdinalDay',
        
        # 
        :'monthly_ordinal_repetitions' => :'MonthlyOrdinalRepetitions',
        
        # 
        :'monthly_day' => :'MonthlyDay',
        
        # 
        :'monthly_repetitions' => :'MonthlyRepetitions',
        
        # 
        :'yearly_use_ordinal_day' => :'YearlyUseOrdinalDay',
        
        # 
        :'yearly_date' => :'YearlyDate',
        
        # 
        :'yearly_ordinal_number' => :'YearlyOrdinalNumber',
        
        # 
        :'yearly_ordinal_day' => :'YearlyOrdinalDay',
        
        # 
        :'yearly_ordinal_month' => :'YearlyOrdinalMonth'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'recurrence_pattern' => :'String',
        :'start_date' => :'String',
        :'end_date' => :'String',
        :'duration' => :'String',
        :'occurrences' => :'Integer',
        :'use_end_date' => :'BOOLEAN',
        :'daily_repetitions' => :'Integer',
        :'daily_use_workdays' => :'BOOLEAN',
        :'weekly_repetitions' => :'Integer',
        :'weekly_days' => :'String',
        :'monthly_use_ordinal_day' => :'BOOLEAN',
        :'monthly_ordinal_number' => :'String',
        :'monthly_ordinal_day' => :'String',
        :'monthly_ordinal_repetitions' => :'Integer',
        :'monthly_day' => :'Integer',
        :'monthly_repetitions' => :'Integer',
        :'yearly_use_ordinal_day' => :'BOOLEAN',
        :'yearly_date' => :'String',
        :'yearly_ordinal_number' => :'String',
        :'yearly_ordinal_day' => :'String',
        :'yearly_ordinal_month' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'RecurrencePattern']
        self.recurrence_pattern = attributes[:'RecurrencePattern']
      end
      
      if attributes[:'StartDate']
        self.start_date = attributes[:'StartDate']
      end
      
      if attributes[:'EndDate']
        self.end_date = attributes[:'EndDate']
      end
      
      if attributes[:'Duration']
        self.duration = attributes[:'Duration']
      end
      
      if attributes[:'Occurrences']
        self.occurrences = attributes[:'Occurrences']
      end
      
      if attributes[:'UseEndDate']
        self.use_end_date = attributes[:'UseEndDate']
      end
      
      if attributes[:'DailyRepetitions']
        self.daily_repetitions = attributes[:'DailyRepetitions']
      end
      
      if attributes[:'DailyUseWorkdays']
        self.daily_use_workdays = attributes[:'DailyUseWorkdays']
      end
      
      if attributes[:'WeeklyRepetitions']
        self.weekly_repetitions = attributes[:'WeeklyRepetitions']
      end
      
      if attributes[:'WeeklyDays']
        self.weekly_days = attributes[:'WeeklyDays']
      end
      
      if attributes[:'MonthlyUseOrdinalDay']
        self.monthly_use_ordinal_day = attributes[:'MonthlyUseOrdinalDay']
      end
      
      if attributes[:'MonthlyOrdinalNumber']
        self.monthly_ordinal_number = attributes[:'MonthlyOrdinalNumber']
      end
      
      if attributes[:'MonthlyOrdinalDay']
        self.monthly_ordinal_day = attributes[:'MonthlyOrdinalDay']
      end
      
      if attributes[:'MonthlyOrdinalRepetitions']
        self.monthly_ordinal_repetitions = attributes[:'MonthlyOrdinalRepetitions']
      end
      
      if attributes[:'MonthlyDay']
        self.monthly_day = attributes[:'MonthlyDay']
      end
      
      if attributes[:'MonthlyRepetitions']
        self.monthly_repetitions = attributes[:'MonthlyRepetitions']
      end
      
      if attributes[:'YearlyUseOrdinalDay']
        self.yearly_use_ordinal_day = attributes[:'YearlyUseOrdinalDay']
      end
      
      if attributes[:'YearlyDate']
        self.yearly_date = attributes[:'YearlyDate']
      end
      
      if attributes[:'YearlyOrdinalNumber']
        self.yearly_ordinal_number = attributes[:'YearlyOrdinalNumber']
      end
      
      if attributes[:'YearlyOrdinalDay']
        self.yearly_ordinal_day = attributes[:'YearlyOrdinalDay']
      end
      
      if attributes[:'YearlyOrdinalMonth']
        self.yearly_ordinal_month = attributes[:'YearlyOrdinalMonth']
      end
      
    end

  end
end
