class player =
    object (self)
      val mutable name = "monkey" 
      val mutable playerclass = "monkey" 
      method setname x =                    
              name <- x;
      method setplayerclass x =                        
              playerclass <- x;
      method getname =
        name 
      method getclass =
        playerclass
      method getgetname =
        self#getname 
    end;;
