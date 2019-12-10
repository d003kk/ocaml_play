let getclass3() = 
        let a_list = ["ocaml"; "c++"] in
        let lang_string =  String.concat ", " a_list in
        Printf.printf "Enter player class: [%s]" lang_string;
        let language = read_line() in
        if List.mem language a_list then 
                let () = Printf.printf "language %s " language in
        Printf.printf "Wrong language" 

(*let getclass2 myplayer= 
        let player_class = read_line () in
        let a_list = ["ocaml"; "weird"] in
        let class_string =  String.concat ", " a_list in
        Format.printf "Enter player class: [%s]" class_string;
        if List.mem player_class a_list then 
                let () = myplayer#setplayerclass player_class in
        Format.printf "player has class %s " myplayer#getclass*)

(*let getclass2 myplayer= 
        myplayer#setplayerclass "warrior"|> ignore;
        Format.printf "player has class %s " myplayer#getclass*)

(*let doplayer myplayer newname=
        myplayer#setname newname|> ignore;
        let playername = myplayer#getname in 
        Format.printf "Hello, %s world\n%!" playername;*)

(*let makeplayer () = 
        (*print_string "Enter player name: ";
        let newname = read_line () in*)
        let myplayer = new Player.player in
        (*myplayer#setname newname|> ignore;
        let playername = myplayer#getname in 
        foo myplayer playername*)
        (*doplayer myplayer newname;*)
        getclass3 myplayer*)

let () = getclass3() 
