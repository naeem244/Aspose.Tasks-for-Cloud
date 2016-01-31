module AsposeTasksCloud
  # 
  class ExtendedAttributeItem < BaseObject
    attr_accessor :link, :index, :field_name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'index' => :'Index',
        
        # 
        :'field_name' => :'FieldName'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'index' => :'Integer',
        :'field_name' => :'String'
        
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
      
      if attributes[:'FieldName']
        self.field_name = attributes[:'FieldName']
      end
      
    end

  end
end
