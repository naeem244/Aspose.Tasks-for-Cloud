module AsposeTasksCloud
  # 
  class OutlineCode < BaseObject
    attr_accessor :field_id, :value_id, :value_guid
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'field_id' => :'FieldId',
        
        # 
        :'value_id' => :'ValueId',
        
        # 
        :'value_guid' => :'ValueGuid'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'field_id' => :'String',
        :'value_id' => :'Integer',
        :'value_guid' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FieldId']
        self.field_id = attributes[:'FieldId']
      end
      
      if attributes[:'ValueId']
        self.value_id = attributes[:'ValueId']
      end
      
      if attributes[:'ValueGuid']
        self.value_guid = attributes[:'ValueGuid']
      end
      
    end

  end
end
