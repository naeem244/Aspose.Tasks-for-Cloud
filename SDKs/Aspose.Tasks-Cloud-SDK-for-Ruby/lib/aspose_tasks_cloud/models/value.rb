module AsposeTasksCloud
  # 
  class Value < BaseObject
    attr_accessor :id, :val, :description, :phonetic
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'Id',
        
        # 
        :'val' => :'Val',
        
        # 
        :'description' => :'Description',
        
        # 
        :'phonetic' => :'Phonetic'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'val' => :'String',
        :'description' => :'String',
        :'phonetic' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Id']
        self.id = attributes[:'Id']
      end
      
      if attributes[:'Val']
        self.val = attributes[:'Val']
      end
      
      if attributes[:'Description']
        self.description = attributes[:'Description']
      end
      
      if attributes[:'Phonetic']
        self.phonetic = attributes[:'Phonetic']
      end
      
    end

  end
end
