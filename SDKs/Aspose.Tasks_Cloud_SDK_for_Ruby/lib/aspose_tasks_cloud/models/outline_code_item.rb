module AsposeTasksCloud
  # 
  class OutlineCodeItem < BaseObject
    attr_accessor :link, :index
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'index' => :'Index'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'index' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Link']
        self.link = attributes[:'Link']
      end
      
      if attributes[:'Index']
        self.index = attributes[:'Index']
      end
      
    end

  end
end
