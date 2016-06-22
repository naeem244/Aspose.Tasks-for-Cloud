module AsposeTasksCloud
  # 
  class TaskLink < BaseObject
    attr_accessor :link, :index, :predecessor_uid, :successor_uid, :link_type, :lag, :lag_format
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'link' => :'Link',
        
        # 
        :'index' => :'Index',
        
        # 
        :'predecessor_uid' => :'PredecessorUid',
        
        # 
        :'successor_uid' => :'SuccessorUid',
        
        # 
        :'link_type' => :'LinkType',
        
        # 
        :'lag' => :'Lag',
        
        # 
        :'lag_format' => :'LagFormat'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'link' => :'Link',
        :'index' => :'Integer',
        :'predecessor_uid' => :'Integer',
        :'successor_uid' => :'Integer',
        :'link_type' => :'String',
        :'lag' => :'Integer',
        :'lag_format' => :'String'
        
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
      
      if attributes[:'PredecessorUid']
        self.predecessor_uid = attributes[:'PredecessorUid']
      end
      
      if attributes[:'SuccessorUid']
        self.successor_uid = attributes[:'SuccessorUid']
      end
      
      if attributes[:'LinkType']
        self.link_type = attributes[:'LinkType']
      end
      
      if attributes[:'Lag']
        self.lag = attributes[:'Lag']
      end
      
      if attributes[:'LagFormat']
        self.lag_format = attributes[:'LagFormat']
      end
      
    end

  end
end
