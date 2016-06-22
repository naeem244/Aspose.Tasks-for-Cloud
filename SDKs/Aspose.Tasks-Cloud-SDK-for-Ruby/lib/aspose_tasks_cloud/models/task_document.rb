module AsposeTasksCloud
  # 
  class TaskDocument < BaseObject
    attr_accessor :links, :file_name, :file_format, :document_properties
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'links' => :'Links',
        
        # 
        :'file_name' => :'FileName',
        
        # 
        :'file_format' => :'FileFormat',
        
        # 
        :'document_properties' => :'DocumentProperties'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'file_name' => :'String',
        :'file_format' => :'Integer',
        :'document_properties' => :'DocumentProperties'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Links']
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end
      
      if attributes[:'FileName']
        self.file_name = attributes[:'FileName']
      end
      
      if attributes[:'FileFormat']
        self.file_format = attributes[:'FileFormat']
      end
      
      if attributes[:'DocumentProperties']
        self.document_properties = attributes[:'DocumentProperties']
      end
      
    end

  end
end
