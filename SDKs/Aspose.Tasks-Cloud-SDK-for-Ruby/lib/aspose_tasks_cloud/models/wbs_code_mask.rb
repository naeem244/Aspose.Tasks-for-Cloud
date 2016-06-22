module AsposeTasksCloud
  # 
  class WBSCodeMask < BaseObject
    attr_accessor :level, :length, :sequence, :separator
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'level' => :'Level',
        
        # 
        :'length' => :'Length',
        
        # 
        :'sequence' => :'Sequence',
        
        # 
        :'separator' => :'Separator'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'level' => :'Integer',
        :'length' => :'String',
        :'sequence' => :'String',
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
      
      if attributes[:'Length']
        self.length = attributes[:'Length']
      end
      
      if attributes[:'Sequence']
        self.sequence = attributes[:'Sequence']
      end
      
      if attributes[:'Separator']
        self.separator = attributes[:'Separator']
      end
      
    end

  end
end
