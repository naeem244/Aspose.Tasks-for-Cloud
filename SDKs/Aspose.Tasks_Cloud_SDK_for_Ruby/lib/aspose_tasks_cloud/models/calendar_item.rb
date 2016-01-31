module AsposeTasksCloud
  # 
  class CalendarItem < BaseObject
    attr_accessor :link, :uid, :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'name' => :'Name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'uid' => :'Integer',
        :'name' => :'String'
        
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
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
    end

  end
end
