module AsposeTasksCloud
  # 
  class ResourceItem < BaseObject
    attr_accessor :link, :uid, :id, :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'id' => :'Id',
        
        # 
        :'name' => :'Name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'uid' => :'Integer',
        :'id' => :'Integer',
        :'name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Link']
        self.link = attributes[:'Link']
      end
      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'Id']
        self.id = attributes[:'Id']
      end
      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
    end

  end
end
