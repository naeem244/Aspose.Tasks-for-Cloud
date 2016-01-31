module AsposeTasksCloud
  # 
  class OutlineCodeDefinition < BaseObject
    attr_accessor :guid, :field_id, :field_name, :_alias, :phonetic_alias, :values, :enterprise, :enterprise_outline_code_alias, :resource_substitution_enabled, :leaf_only, :all_levels_required, :only_table_values_allowed, :masks, :show_indent
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'guid' => :'Guid',
        
        # 
        :'field_id' => :'FieldId',
        
        # 
        :'field_name' => :'FieldName',
        
        # 
        :'_alias' => :'Alias',
        
        # 
        :'phonetic_alias' => :'PhoneticAlias',
        
        # 
        :'values' => :'Values',
        
        # 
        :'enterprise' => :'Enterprise',
        
        # 
        :'enterprise_outline_code_alias' => :'EnterpriseOutlineCodeAlias',
        
        # 
        :'resource_substitution_enabled' => :'ResourceSubstitutionEnabled',
        
        # 
        :'leaf_only' => :'LeafOnly',
        
        # 
        :'all_levels_required' => :'AllLevelsRequired',
        
        # 
        :'only_table_values_allowed' => :'OnlyTableValuesAllowed',
        
        # 
        :'masks' => :'Masks',
        
        # 
        :'show_indent' => :'ShowIndent'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'guid' => :'String',
        :'field_id' => :'String',
        :'field_name' => :'String',
        :'_alias' => :'String',
        :'phonetic_alias' => :'String',
        :'values' => :'Array<OutlineValue>',
        :'enterprise' => :'BOOLEAN',
        :'enterprise_outline_code_alias' => :'Integer',
        :'resource_substitution_enabled' => :'BOOLEAN',
        :'leaf_only' => :'BOOLEAN',
        :'all_levels_required' => :'BOOLEAN',
        :'only_table_values_allowed' => :'BOOLEAN',
        :'masks' => :'Array<OutlineMask>',
        :'show_indent' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Guid']
        self.guid = attributes[:'Guid']
      end
      
      if attributes[:'FieldId']
        self.field_id = attributes[:'FieldId']
      end
      
      if attributes[:'FieldName']
        self.field_name = attributes[:'FieldName']
      end
      
      if attributes[:'Alias']
        self._alias = attributes[:'Alias']
      end
      
      if attributes[:'PhoneticAlias']
        self.phonetic_alias = attributes[:'PhoneticAlias']
      end
      
      if attributes[:'Values']
        if (value = attributes[:'Values']).is_a?(Array)
          self.values = value
        end
      end
      
      if attributes[:'Enterprise']
        self.enterprise = attributes[:'Enterprise']
      end
      
      if attributes[:'EnterpriseOutlineCodeAlias']
        self.enterprise_outline_code_alias = attributes[:'EnterpriseOutlineCodeAlias']
      end
      
      if attributes[:'ResourceSubstitutionEnabled']
        self.resource_substitution_enabled = attributes[:'ResourceSubstitutionEnabled']
      end
      
      if attributes[:'LeafOnly']
        self.leaf_only = attributes[:'LeafOnly']
      end
      
      if attributes[:'AllLevelsRequired']
        self.all_levels_required = attributes[:'AllLevelsRequired']
      end
      
      if attributes[:'OnlyTableValuesAllowed']
        self.only_table_values_allowed = attributes[:'OnlyTableValuesAllowed']
      end
      
      if attributes[:'Masks']
        if (value = attributes[:'Masks']).is_a?(Array)
          self.masks = value
        end
      end
      
      if attributes[:'ShowIndent']
        self.show_indent = attributes[:'ShowIndent']
      end
      
    end

  end
end
