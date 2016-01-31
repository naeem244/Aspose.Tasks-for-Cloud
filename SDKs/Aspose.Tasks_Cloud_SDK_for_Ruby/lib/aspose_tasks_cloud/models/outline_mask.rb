module AsposeTasksCloud
  # 
  class OutlineMask < BaseObject
    attr_accessor :level, :type, :length, :separator
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'level' => :'Level',
        
        # 
        :'type' => :'Type',
        
        # 
        :'length' => :'Length',
        
        # 
        :'separator' => :'Separator'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'level' => :'Integer',
        :'type' => :'String',
        :'length' => :'Integer',
        :'separator' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Level']
        self.level = attributes[:'Level']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'Length']
        self.length = attributes[:'Length']
      end
      
      if attributes[:'Separator']
        self.separator = attributes[:'Separator']
      end
      
    end

  end
end
