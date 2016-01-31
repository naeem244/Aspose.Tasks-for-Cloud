module AsposeTasksCloud
  # 
  class OutlineValue < BaseObject
    attr_accessor :value_id, :field_guid, :type, :parent_value_id, :value, :description, :is_collapsed
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'value_id' => :'ValueId',
        
        # 
        :'field_guid' => :'FieldGuid',
        
        # 
        :'type' => :'Type',
        
        # 
        :'parent_value_id' => :'ParentValueId',
        
        # 
        :'value' => :'Value',
        
        # 
        :'description' => :'Description',
        
        # 
        :'is_collapsed' => :'IsCollapsed'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'value_id' => :'Integer',
        :'field_guid' => :'String',
        :'type' => :'String',
        :'parent_value_id' => :'Integer',
        :'value' => :'String',
        :'description' => :'String',
        :'is_collapsed' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ValueId']
        self.value_id = attributes[:'ValueId']
      end
      
      if attributes[:'FieldGuid']
        self.field_guid = attributes[:'FieldGuid']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'ParentValueId']
        self.parent_value_id = attributes[:'ParentValueId']
      end
      
      if attributes[:'Value']
        self.value = attributes[:'Value']
      end
      
      if attributes[:'Description']
        self.description = attributes[:'Description']
      end
      
      if attributes[:'IsCollapsed']
        self.is_collapsed = attributes[:'IsCollapsed']
      end
      
    end

  end
end
