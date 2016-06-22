module AsposeTasksCloud
  # 
  class WBSDefinition < BaseObject
    attr_accessor :code_prefix, :generate_wbs_code, :verify_uniqueness, :code_mask_collection
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'code_prefix' => :'CodePrefix',
        
        # 
        :'generate_wbs_code' => :'GenerateWBSCode',
        
        # 
        :'verify_uniqueness' => :'VerifyUniqueness',
        
        # 
        :'code_mask_collection' => :'CodeMaskCollection'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'code_prefix' => :'String',
        :'generate_wbs_code' => :'BOOLEAN',
        :'verify_uniqueness' => :'BOOLEAN',
        :'code_mask_collection' => :'Array<WBSCodeMask>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CodePrefix']
        self.code_prefix = attributes[:'CodePrefix']
      end
      
      if attributes[:'GenerateWBSCode']
        self.generate_wbs_code = attributes[:'GenerateWBSCode']
      end
      
      if attributes[:'VerifyUniqueness']
        self.verify_uniqueness = attributes[:'VerifyUniqueness']
      end
      
      if attributes[:'CodeMaskCollection']
        if (value = attributes[:'CodeMaskCollection']).is_a?(Array)
          self.code_mask_collection = value
        end
      end
      
    end

  end
end
