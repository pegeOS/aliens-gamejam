
function cadastra_pessoas() {


// humanos normais
var p = new Pessoa("Lucio", 18, "090.788.356-50", spr_p1, spr_cabeca_p1, true, false, "nunca", "normal")

p.fala_chegada = [
    "Hey, daddy-o! I'm here for the big dance!",
    "Got my ticket right here, see?",
    "Go ahead, check it out, chief."
]

p.fala_volta_liberado = [
    "Well, look who's back! Last night's joint was swell!",
    "I'm cool to come in again, right?"
]

p.fala_volta_expulso = [
    "Aw, c'mon! It was just a misunderstanding, I swear!",
    "I'm no alien, daddy-o! Check my ID!"
]

p.reacao_liberado = "Thanks a million, chief!"
p.reacao_expulso  = "Aw, that's a real bummer!"

p.fala_balada = [
    "This rock 'n' roll is the bee's knees!",
    "Anybody up for a malted milk?"
]


    
 
    

// alien
p = new Pessoa("Marta", 25, "111.111.111-11", spr_p2, spr_p2, false, true, "cabine", "normal")

p.fala_chegada = [
    "Greetings, earthling... I mean, good evening!",
    "I seem to have misplaced my invitation.",
    "But I'm a regular gal, see? Nothing funny about me."
]

p.fala_volta_liberado = [
    "Greetings once again, fellow human."
]

p.fala_volta_expulso = [
    "This time, I have everything in order. Probably."
]

p.reacao_liberado = "Splendid. Simply splendid."
p.reacao_expulso  = "You haven't heard the last of me."

p.fala_balada = [
    "I'm having a swell time, just like humans do."
]



// alien que só entrega na balada
p = new Pessoa("Ze", 30, "222.222.222-22", spr_p1, spr_p1, true, true, "balada", "dança errado")

p.dia_fixo = 2;   // aparece a partir do dia 2

p.fala_chegada = [
    "Evenin', pal! How's it going?",
    "Here's my ticket, nice and easy.",
    "I'm thirty years old and work down at the factory, see?"
]

p.fala_volta_liberado = [
    "Well, howdy again! Everything's just peachy!",
    "Same ticket, same old me, daddy-o."
]

p.reacao_liberado = "Thanks, buddy! You're a real doll."
p.reacao_expulso  = "Aw, gee... I understand, pal."

p.fala_balada = [
    "I... sure do... dig this dancing.",
    "This beat is... pretty swell.",
    "My knees are perfectly normal, see?"
]

	
	p = new Pessoa("Joey", 28, "000.000.000-00", spr_p2, spr_p2, true, false, "nunca", "normal")
    p.dia_fixo = 1;  
    p.fala_chegada = [
        "Hey dude, how are you doing?",
        "Here is my invite.",
        "Im gonna shake up this party."
    ]
    p.fala_volta_liberado = [
        "Hey dude its me again",
        "The  same invite, the same me"
    ]
    
    p.reacao_liberado = "Thank you, have a good night."
    p.reacao_expulso  = "You made a big mistake dude."
    
    p.fala_balada = [
        "I cant believe i just got clutched.",
        "Hey ladies, the cool cat here is single.",
        "Come on, snake! Let's rattle!."
    ]

p = new Pessoa("Betty", 21, "111.222.333-44", spr_p2, spr_p2, true, false, "nunca", "normal");
p.dia_fixo = 1;  
p.fala_chegada = [
    "What a gas! I heard this place is real gone!",
    "Here is my ticket, daddy-o.",
    "Get ready, I came here to cut a rug tonight!"
];
p.fala_volta_liberado = [
    "Back again! Is the dance floor starting to heat up?",
    "Same ticket, just stepped out to powder my nose."
]
p.reacao_liberado = "Catch you on the flip side, alligator!";
p.reacao_expulso  = "What a drag... you're total square!";
p.fala_balada = [
    "This sock hop is pure heat!",
    "Come on, snake! Let's rattle!",
    "I'm not sitting out, I'm a real rug cutter!"
];


p = new Pessoa("Johnny", 24, "555.666.777-88", spr_p2, spr_p2, true, false, "nunca","normal")
p.dia_fixo = 2;  
p.fala_chegada = [
    "Hey daddy-o, check out the most cool cat in town.",
    "Here's my invite. Keep it smooth.",
    "Time to make the scene and show them how it's done."
];
p.fala_volta_liberado = [
    "Back on the scene. Letting me in fast this time?",
    "Still me, the one and only Johnny."
];
p.reacao_liberado = "Stay cool, cat.";
p.reacao_expulso  = "Are you buggin' me? You'll regret this!";
p.fala_balada = [
    "Hey ladies, no need to be shy, the coolest cat is here.",
    "Don't give me the absent treatment, doll!",
    "Just spreading a little apple butter, you dig?"
];

p = new Pessoa("Arthur", 22, "999.888.777-66", spr_p2, spr_p2, false, true, "cabine", "normal")
p.dia_fixo = 3;  
p.fala_chegada = [
    "Is this the shindig? It looks like Antsville in there...",
    "Uhm, here is my invite. Everything is correct, right?",
    "I hope I don't get clutched tonight..."
];
p.fala_volta_liberado = [
    "Hi... forgot my coat there.",
    "I promisse not doing confusions again."
];
p.reacao_liberado = "Oh, swell! Thank you very much.";
p.reacao_expulso  = "I knew it! I shouldn't have left home...";
p.fala_balada = [
    "It's way too crowded in here, feel like a canceled stamp.",
    "I hope nobody asks me to boogie, I have two left feet.",
    "Is that the fire extinguisher over there watching us?"
];


p = new Pessoa("Peggy", 23, "333.444.555-22", spr_p2, spr_p2, false, false, "nunca", "normal");
p.dia_fixo = 4;  
p.fala_chegada = [
    "Hope this bash is better than the last one.",
    "Here's the paper. Dig it?",
    "Let's see if this crowd is hep or just plain squares."
];
p.fala_volta_liberado = [
    "Im back. outside the air was still",
    "Still my face in the invite"
];
p.reacao_liberado = "Later, gator.";
p.reacao_expulso  = "Fine, time to split the scene anyway.";
p.fala_balada = [
    "Look at that roundheels over there, she's gonna fall!",
    "This party is far-out, but the music could be wilder.",
    "Too many neckers on the floor tonight, get a room!"
];

p = new Pessoa("Duke", 26, "777.111.222-33", spr_p2, spr_p2, false,true,"cabine", "normal")
p.dia_fixo = 5;  
p.fala_chegada = [
    "Step aside, square. Duke has arrived.",
    "Here's my pass. Make it quick.",
    "This hootenanny better be loud tonight."
];
p.fala_volta_liberado = [
    "Back again. Did you miss me already?",
    "Same guy, same leather jacket."
];
p.reacao_liberado = "Catch ya later, crocodile.";
p.reacao_expulso  = "You're playing with fire, dude.";
p.fala_balada = [
    "Now this place is starting to bop!",
    "I'm gonna shake down this whole dance floor.",
    "Get out of the way unless you know how to jitterbug!"
];
}


function monta_fila(_dia, _quantidade) {
	
	randomize()
	
    var fixos = []
    var sorteaveis = []

    for (var i = 0; i < array_length(global.pessoas); i++) {
        var p = global.pessoas[i]

        if (p.status == "disponivel") {
            //se nunca apareceu, respeita o dia fixo
            if (p.dia_fixo == _dia)      array_push(fixos, p)
            else if (p.dia_fixo == 0)    array_push(sorteaveis, p)
        }
        else {
            //se já apareceu ( status diferente de "disponivel") volta pro sorteio
            array_push(sorteaveis, p)
        }
    }
    
    //shufflada na array
    array_shuffle_ext(sorteaveis)

    global.fila = fixos
    var faltam = _quantidade - array_length(fixos)
    for (var i = 0; i < faltam && i < array_length(sorteaveis); i++) {
        array_push(global.fila, sorteaveis[i])
    }

    array_shuffle_ext(global.fila)
    global.indice_fila = 0
}