module AsposeTasksCloud
  # 
  class ExtendedAttributeDefinition < BaseObject
    attr_accessor :field_id, :field_name, :cf_type, :guid, :element_type, :max_multi_values, :user_def, :_alias, :secondary_pid, :auto_roll_down, :default_guid, :lookup_uid, :phonetics_alias, :rollup_type, :calculation_type, :formula, :restrict_values, :valuelist_sort_order, :append_new_values, :default, :value_list, :secondary_guid
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'field_id' => :'FieldId',
        
        # 
        :'field_name' => :'FieldName',
        
        # 
        :'cf_type' => :'CfType',
        
        # 
        :'guid' => :'Guid',
        
        # 
        :'element_type' => :'ElementType',
        
        # 
        :'max_multi_values' => :'MaxMultiValues',
        
        # 
        :'user_def' => :'UserDef',
        
        # 
        :'_alias' => :'Alias',
        
        # 
        :'secondary_pid' => :'SecondaryPid',
        
        # 
        :'auto_roll_down' => :'AutoRollDown',
        
        # 
        :'default_guid' => :'DefaultGuid',
        
        # 
        :'lookup_uid' => :'LookupUid',
        
        # 
        :'phonetics_alias' => :'PhoneticsAlias',
        
        # 
        :'rollup_type' => :'RollupType',
        
        # 
        :'calculation_type' => :'CalculationType',
        
        # 
        :'formula' => :'Formula',
        
        # 
        :'restrict_values' => :'RestrictValues',
        
        # 
        :'valuelist_sort_order' => :'ValuelistSortOrder',
        
        # 
        :'append_new_values' => :'AppendNewValues',
        
        # 
        :'default' => :'Default',
        
        # 
        :'value_list' => :'ValueList',
        
        # 
        :'secondary_guid' => :'SecondaryGuid'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'field_id' => :'String',
        :'field_name' => :'String',
        :'cf_type' => :'String',
        :'guid' => :'String',
        :'element_type' => :'String',
        :'max_multi_values' => :'Integer',
        :'user_def' => :'BOOLEAN',
        :'_alias' => :'String',
        :'secondary_pid' => :'String',
        :'auto_roll_down' => :'BOOLEAN',
        :'default_guid' => :'String',
        :'lookup_uid' => :'String',
        :'phonetics_alias' => :'String',
        :'rollup_type' => :'String',
        :'calculation_type' => :'String',
        :'formula' => :'String',
        :'restrict_values' => :'BOOLEAN',
        :'valuelist_sort_order' => :'Integer',
        :'append_new_values' => :'BOOLEAN',
        :'default' => :'String',
        :'value_list' => :'Array<Value>',
        :'secondary_guid' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'FieldId']
        self.field_id = attributes[:'FieldId']
      end
      
      if attributes[:'FieldName']
        self.field_name = attributes[:'FieldName']
      end
      
      if attributes[:'CfType']
        self.cf_type = attributes[:'CfType']
      end
      
      if attributes[:'Guid']
        self.guid = attributes[:'Guid']
      end
      
      if attributes[:'ElementType']
        self.element_type = attributes[:'ElementType']
      end
      
      if attributes[:'MaxMultiValues']
        self.max_multi_values = attributes[:'MaxMultiValues']
      end
      
      if attributes[:'UserDef']
        self.user_def = attributes[:'UserDef']
      end
      
      if attributes[:'Alias']
        self._alias = attributes[:'Alias']
      end
      
      if attributes[:'SecondaryPid']
        self.secondary_pid = attributes[:'SecondaryPid']
      end
      
      if attributes[:'AutoRollDown']
        self.auto_roll_down = attributes[:'AutoRollDown']
      end
      
      if attributes[:'DefaultGuid']
        self.default_guid = attributes[:'DefaultGuid']
      end
      
      if attributes[:'LookupUid']
        self.lookup_uid = attributes[:'LookupUid']
      end
      
      if attributes[:'PhoneticsAlias']
        self.phonetics_alias = attributes[:'PhoneticsAlias']
      end
      
      if attributes[:'RollupType']
        self.rollup_type = attributes[:'RollupType']
      end
      
      if attributes[:'CalculationType']
        self.calculation_type = attributes[:'CalculationType']
      end
      
      if attributes[:'Formula']
        self.formula = attributes[:'Formula']
      end
      
      if attributes[:'RestrictValues']
        self.restrict_values = attributes[:'RestrictValues']
      end
      
      if attributes[:'ValuelistSortOrder']
        self.valuelist_sort_order = attributes[:'ValuelistSortOrder']
      end
      
      if attributes[:'AppendNewValues']
        self.append_new_values = attributes[:'AppendNewValues']
      end
      
      if attributes[:'Default']
        self.default = attributes[:'Default']
      end
      
      if attributes[:'ValueList']
        if (value = attributes[:'ValueList']).is_a?(Array)
          self.value_list = value
        end
      end
      
      if attributes[:'SecondaryGuid']
        self.secondary_guid = attributes[:'SecondaryGuid']
      end
      
    end

  end
end
