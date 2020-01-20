(*let rec repr l =  function        
     [] -> ()
     | hd :: tl -> Printf.printf hd; Printf.printf "\n"; repr tl*)

type point2d = {x:float; y:float}

let rec sum l = 
        match l with 
        | [] -> ()
        | hd :: tl -> Printf.printf "%s" hd; Printf.printf "\n"; sum tl

class player =
    object (self)
      val mutable name = "monkey" 
      val mutable playerclass = "monkey" 
      val mutable equipment = ["knife"; "rope"]
      val mutable nums = [1; 1]
      val mutable position = {x = 0.0; y=0.0}
      method setname x =                    
              name <- x;
      method setplayerclass x =                        
              playerclass <- x;
      method getname =
        name 
      method getclass =
        playerclass
      method getEquipment =
        equipment
      method getgetname =
        self#getname 
      (*method rec pl l = 
        match l with 
        | [] -> ()
        | hd :: tl -> Printf.printf "%s" hd; Printf.printf "\n"; self#pl tl*)
      method printInventory =
              sum equipment 
      
      method printPos {x; y} =
      Printf.printf "x coordinate %f" x;
      Printf.printf "y coordinate %f" y

      method print =
        Printf.printf "player has name %s \n" self#getname;
        Printf.printf "player has class %s\n " self#getclass;
        Printf.printf "***************Inventory************\n";
        self#printInventory; 
        Printf.printf "************************************\n";
        Printf.printf "Location\n";
        self#printPos position 

    end;;
