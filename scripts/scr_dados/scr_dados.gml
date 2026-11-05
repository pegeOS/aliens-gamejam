
function cadastra_pessoas() {


// humanos normais
var p = new Pessoa("Lucio", 18, "482-61-7395", spr_masc1, spr_masc1, true, spr_conviteGrande, false, "nunca", "normal")
p.estilo_danca = "step"
p.comportamento = "He keeps a nice, easy rhythm."

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
p = new Pessoa("Marta", 25, "222-22-2222", spr_fem_1, spr_fem_1, false, spr_conviteGrande,  true, "cabine", "normal")
p.estilo_danca = "odd"
p.comportamento = "Those turns are a little too sharp for the music."

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
p = new Pessoa("Ze", 30, "617-38-4295", spr_masc2, spr_masc2, true, spr_conviteGrande,  true, "balada", "dança errado")
p.estilo_danca = "wrong_beat"
p.comportamento = "That fellow moves like the band is playing backward."

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

	
	p = new Pessoa("Joey", 28, "529-46-1873", spr_masc3, spr_masc3, true, spr_conviteGrande,  false, "nunca", "normal")
    p.estilo_danca = "step"
    p.comportamento = "He's got a light step and plenty of confidence."
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

p = new Pessoa("Betty", 21, "318-70-5624", spr_fem2, spr_fem2, true, spr_conviteGrande, false, "nunca", "normal");
p.estilo_danca = "sway"
p.comportamento = "She knows her way around a dance floor."
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


p = new Pessoa("Johnny", 24, "736-48-2915", spr_masc4, spr_masc4, true, spr_conviteGrande, false, "nunca","normal")
p.estilo_danca = "showoff"
p.comportamento = "He's showing off, but he hasn't missed the beat."
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

p = new Pessoa("Arthur", 22, "415-69-3827", spr_masc5, spr_masc5, false, spr_conviteGrande, true, "cabine", "normal")
p.estilo_danca = "odd"
p.comportamento = "Those little pauses don't match the band's rhythm."
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


p = new Pessoa("Peggy", 23, "284-51-9673", spr_fem3, spr_fem3, false, spr_conviteGrande, false, "nunca", "normal");
p.estilo_danca = "still"
p.comportamento = "She hasn't danced once; maybe she just likes the music."
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

p = new Pessoa("Duke", 26, "693-52-7481", spr_p2, spr_p2, false, spr_conviteGrande, true,"cabine", "normal")
p.estilo_danca = "strange_turn"
p.comportamento = "He keeps turning toward the wall between songs."
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

p = new Pessoa("Rose", 29, "581-24-9037", spr_fem_1, spr_fem_1, true, spr_conviteGrande, false, "nunca", "normal")
p.estilo_danca = "sway"
p.comportamento = "She follows the melody with an easy, relaxed step."
p.dia_fixo = 1
p.fala_chegada = [
    "Good evening. Rose Calder, here for the dance.",
    "My invitation should be in order.",
    "I heard the band has a new trumpet player."
]
p.fala_volta_liberado = [
    "Good to see you again. The band was lovely last time.",
    "I brought the same invitation."
]
p.fala_volta_expulso = [
    "I hope we can put last time behind us.",
    "I would still like to hear the band."
]
p.reacao_liberado = "Thank you. Have a pleasant evening."
p.reacao_expulso = "I understand. Good night."
p.fala_balada = [
    "The trumpet player has a wonderful tone.",
    "I could listen to this band all evening."
]

p = new Pessoa("Calvin", 32, "274-83-6105", spr_masc5, spr_masc5, true, spr_conviteGrande, false, "nunca", "normal")
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "step"
p.comportamento = "He keeps a steady pace and rarely looks away from the band."
p.dia_fixo = 2
p.fala_chegada = [
    "Calvin Brooks. I was told the dance starts at eight.",
    "Here's my invitation.",
    "Is the coat room still by the front door?"
]
p.fala_volta_liberado = [
    "Back for another set. Everything is just fine.",
    "I have the same invitation as before."
]
p.fala_volta_expulso = [
    "I was hoping we could start over.",
    "I brought my invitation again."
]
p.reacao_liberado = "Thanks. I'll be out on the floor."
p.reacao_expulso = "All right. I won't make a scene."
p.fala_balada = [
    "This band has a good sense of time.",
    "I might ask for the next dance."
]

p = new Pessoa("Nora", 27, "395-71-8264", spr_fem2, spr_fem2, false, spr_conviteGrande, true, "cabine", "normal")
p.estilo_danca = "sway"
p.comportamento = "She seems comfortable in the crowd and keeps to the beat."
p.dia_fixo = 3
p.fala_chegada = [
    "Good evening. Is there room for one more?",
    "I seem to have left my invitation at home.",
    "I moved here recently, so I am still learning my way around."
]
p.fala_volta_liberado = [
    "Good evening again. I have been looking forward to the music.",
    "I brought a paper with me this time."
]
p.fala_volta_expulso = [
    "I understand why you were cautious last time.",
    "I brought a paper with me this time."
]
p.reacao_liberado = "Thank you. I will try not to take up too much room."
p.reacao_expulso = "I see. Have a good evening."
p.fala_balada = [
    "The band sounds even better from this side of the room.",
    "I have not heard this song in a long while."
]

p = new Pessoa("Theo", 20, "648-25-3719", spr_masc2, spr_masc2, false, spr_conviteGrande, false, "nunca", "normal")
p.estilo_danca = "step"
p.comportamento = "He is a little shy, but he keeps the rhythm well."
p.dia_fixo = 4
p.fala_chegada = [
    "Hi. Theo Miller. I was invited by some friends.",
    "I forgot to bring my invitation, I'm afraid.",
    "They said the band plays a lot of swing."
]
p.fala_volta_liberado = [
    "Hello again. My friends said to try once more.",
    "I brought something for you to check this time."
]
p.fala_volta_expulso = [
    "I know I should have brought my invitation last time.",
    "I brought something for you to check this time."
]
p.reacao_liberado = "Thanks, I won't keep you."
p.reacao_expulso = "Fair enough. Take care."
p.fala_balada = [
    "I think I am getting the hang of this dance.",
    "My friends should be here soon."
]

p = new Pessoa("Iris", 25, "732-46-1809", spr_fem3, spr_fem3, true, spr_conviteGrande, false, "nunca", "normal")
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "still"
p.comportamento = "She listens to the whole song before making a move."
p.dia_fixo = 5
p.fala_chegada = [
    "Hello. Iris Bennett. I was told to show this at the door.",
    "I have not been here since the spring.",
    "The room looks just the way I remember it."
]
p.fala_volta_liberado = [
    "I had such a nice time that I came back.",
    "I kept the same invitation."
]
p.fala_volta_expulso = [
    "I am sorry things went poorly before.",
    "I brought my invitation again."
]
p.reacao_liberado = "Thank you. I hope the band plays a slow one."
p.reacao_expulso = "I understand. Have a good night."
p.fala_balada = [
    "The room is livelier than I expected.",
    "I like to hear a song through before I dance."
]

p = new Pessoa("Edwin", 34, "517-63-2048", spr_masc3, spr_masc3, true, spr_conviteGrande, true, "cabine", "normal")
p.estilo_danca = "showoff"
p.comportamento = "His steps are practiced, though he never loses the beat."
p.dia_fixo = 6
p.fala_chegada = [
    "Evening. Edwin Price, here to hear the orchestra.",
    "My invitation is right here.",
    "I have been looking forward to the clarinet solo."
]
p.fala_volta_liberado = [
    "Good to be back. The orchestra sounded fine last time.",
    "My invitation is still in my pocket."
]
p.fala_volta_expulso = [
    "I hope there is no hard feeling about last time.",
    "I brought my invitation again."
]
p.reacao_liberado = "Much obliged. Enjoy the music."
p.reacao_expulso = "All right. Have a good evening."
p.fala_balada = [
    "That clarinet player has remarkable control.",
    "The band is playing the song a little faster tonight."
]

p = new Pessoa("June", 23, "861-39-4720", spr_fem_1, spr_fem_1, true, spr_conviteGrande, false, "nunca", "normal")
p.estilo_danca = "sway"
p.comportamento = "She moves with the melody and gives other dancers plenty of room."
p.fala_chegada = [
    "Hi there. June Parker. Is the dance already underway?",
    "I have my invitation with me.",
    "My cousin said the band is better than the radio."
]
p.fala_volta_liberado = [
    "I am back for another song.",
    "Same invitation, if you need to see it."
]
p.fala_volta_expulso = [
    "I hope you will give me another chance.",
    "I brought my invitation along this time."
]
p.reacao_liberado = "Thanks! See you on the dance floor."
p.reacao_expulso = "No hard feelings. Good night."
p.fala_balada = [
    "My cousin was right about the band.",
    "This song is even better than the last one."
]

p = new Pessoa("Martin", 25, "463-15-7587", spr_masc4, spr_masc2, true, spr_conviteGrande, true, "cabine", "normal")
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "step"
p.comportamento = "He moves neatly through the crowd without bumping into anyone."
p.fala_chegada = [
    "Morning Martin. I would like to hear the band.",
    "Here is my invitation.",
    "Do you know if they take requests?"
]
p.fala_volta_liberado = [
    "Good evening again. I have been practicing that last dance.",
    "I have my invitation right here."
]
p.fala_volta_expulso = [
    "I thought I would try again tonight.",
    "I have my invitation right here."
]
p.reacao_liberado = "Thank you. I will be near the band."
p.reacao_expulso = "All right. Enjoy the rest of the night."
p.fala_balada = [
    "That was a fine arrangement.",
    "I would not mind hearing that one again."
]

p = new Pessoa("Felix", 28, "463-18-7592", spr_masc4, spr_masc4, true, spr_conviteGrande, true, "cabine", "normal")
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "step"
p.comportamento = "He moves neatly through the crowd without bumping into anyone."
p.fala_chegada = [
    "Evening. Felix Ward. I would like to hear the band.",
    "Here is my invitation.",
    "Do you know if they take requests?"
]
p.fala_volta_liberado = [
    "Good evening again. I have been practicing that last dance.",
    "I have my invitation right here."
]
p.fala_volta_expulso = [
    "I thought I would try again tonight.",
    "I have my invitation right here."
]
p.reacao_liberado = "Thank you. I will be near the band."
p.reacao_expulso = "All right. Enjoy the rest of the night."
p.fala_balada = [
    "That was a fine arrangement.",
    "I would not mind hearing that one again."
]


p = new Pessoa("Lydia", 25, "433-15-1891", spr_fem2, spr_fem3, true, spr_conviteGrande, true, "cabine", "normal")
p.dia_fixo = 4
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "step"
p.comportamento = "He moves neatly through the crowd without bumping into anyone."
p.fala_chegada = [
    "Evening. Lydia. I would like to hear the band.",
    "Here is my invitation.",
    "Do you know if they take requests?"
]
p.fala_volta_liberado = [
    "Good evening again. I have been practicing that last dance.",
    "I have my invitation right here."
]
p.fala_volta_expulso = [
    "I thought I would try again tonight.",
    "I have my invitation right here."
]
p.reacao_liberado = "Thank you. I will be near the band."
p.reacao_expulso = "All right. Enjoy the rest of the night."
p.fala_balada = [
    "That was a fine arrangement.",
    "I would not mind hearing that one again."
]

p = new Pessoa("Glenda", 25, "133-14-8754", spr_fem3, spr_fem_1, true, spr_conviteGrande, true, "cabine", "normal")
p.dia_fixo = 3
p.convite_falso = true
p.convite_falso_inicial = true
p.estilo_danca = "step"
p.comportamento = "He moves neatly through the crowd without bumping into anyone."
p.fala_chegada = [
    "Hello. Glenda. I was told to show this at the door.",
    "Here is my invitation.",
    "Do you know if they take requests?"
]
p.fala_volta_liberado = [
    "Good evening again. I have been practicing that last dance.",
    "I have my invitation right here."
]
p.fala_volta_expulso = [
    "I thought I would try again tonight.",
    "I have my invitation right here."
]
p.reacao_liberado = "Thank you. I will be near the band."
p.reacao_expulso = "All right. Enjoy the rest of the night."
p.fala_balada = [
    "That was a fine arrangement.",
    "I would not mind hearing that one again."
]


}


function monta_fila(_dia, _quantidade) {
	
	randomize()
	
    var fixos = []
    var sorteaveis = []

    for (var i = 0; i < 6; i++) {
        var p = global.pessoas[i]

        if (p.status == "disponivel") {
            //se nunca apareceu, respeita o dia fixo
            if (p.dia_fixo == _dia)      array_push(fixos, p)
            else if (p.dia_fixo == 0 || p.dia_fixo < _dia) array_push(sorteaveis, p)
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