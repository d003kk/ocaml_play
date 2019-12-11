(*let getclass3() = 
        let a_list = ["ocaml"; "c++"] in
        let lang_string =  String.concat ", " a_list in
        Printf.printf "Enter player class: [%s]" lang_string;
        let language = read_line() in
        if List.mem language a_list then 
                let () = Printf.printf "language %s " language in
        Printf.printf "Wrong language" *)

let getclass myplayer= 
        let a_list = ["Wizard"; "Warrior"; "Priest"; "Thief"] in
        let class_string =  String.concat ", " a_list in
        Printf.printf "Enter player class: [%s]\n" class_string;
        let player_class = read_line () in
        if List.mem player_class a_list then 
                let () = myplayer#setplayerclass player_class in
        Printf.printf "player has class %s\n " myplayer#getclass

(*let getclass2 myplayer= 
        myplayer#setplayerclass "warrior"|> ignore;
        Format.printf "player has class %s " myplayer#getclass*)

(*let doplayer myplayer newname=
        myplayer#setname newname|> ignore;
        let playername = myplayer#getname in 
        Format.printf "Hello, %s world\n%!" playername;*)

let makeplayer () = 
        let () = Printf.printf "Enter player name: \n" in
        let newname = read_line () in
        let myplayer = new Player.player in
        let () = myplayer#setname newname in
        Printf.printf "player has name %s \n" myplayer#getname;
        let () = getclass myplayer in 
        myplayer#print


let () = makeplayer() 
