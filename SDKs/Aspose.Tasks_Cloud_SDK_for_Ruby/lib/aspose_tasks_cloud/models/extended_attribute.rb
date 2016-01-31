module AsposeTasksCloud
  # 
  class ExtendedAttribute < BaseObject
    attr_accessor :field_id, :value, :value_guid, :duration_format
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'field_id' => :'FieldId',
        
        # 
        :'value' => :'Value',
        
        # 
        :'value_guid' => :'ValueGuid',
        
        # 
        :'duration_format' => :'DurationFormat'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'field_id' => :'String',
        :'value' => :'String',
        :'value_guid' => :'String',
        :'duration_format' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FieldId']
        self.field_id = attributes[:'FieldId']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
      if attributes[:'ValueGuid']
        self.value_guid = attributes[:'ValueGuid']
      end
      
      if attributes[:'DurationFormat']
        self.duration_format = attributes[:'DurationFormat']
      end
      
    end

  end
end
