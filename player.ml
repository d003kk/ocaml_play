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
      method print =
        Printf.printf "player has class %s\n " self#getclass;
        Printf.printf "player has name %s \n" self#getname
    end;;
