var temporizador_segundos_max = 16;
var temporizador_segundos = null;
var temporizador_interval = null;

var numero_pergunta = 0;
var _pergunta = null;

var acertos = 0;
var pontos = 0;
var vida = 3;

var dica_chance = false;

$(document).ready(function () {
    const pagina_atual = window.location.pathname.split('/').slice(-1)[0].replace('.php', '');
    switch (pagina_atual) {
        case 'perguntas':
            iniciar_temporizador();
            proxima_pergunta();
            break;
        case 'scores':
            ranking();
            break;
    }
});


$.ajaxSetup({
    dataType: 'json',
    error: function () {
        pausar_temporizador();
        if (vida <= 0 || numero_pergunta >= 11) {
            window.localStorage.setItem('pontos', pontos);
            window.localStorage.setItem('acertos', acertos);
            window.location.href = "scores.php";
        }
    }
});

function atualizar_elementos() {
    $("#texto_pergunta").html(_pergunta.pergunta)
    for (const i in _pergunta.respostas) {
        const resposta = _pergunta.respostas[i];
        const elem_alternativa = $(".alternativas").eq(i);
        $(elem_alternativa).html(resposta.texto);
        $("#pontos").html(pontos);
    };
    $(".alternativas").css({
        opacity: 1,
    });
    $("#campo-alternativas div").css({
        "background-color": "white",
    });
    $("#vidas img").hide();
    for (let i = 0; i < vida; i++) {
        $("#vidas img").eq(i).show();
    };
    if (vida <= 0 || numero_pergunta >= 11) {
        window.localStorage.setItem('pontos', pontos);
        window.localStorage.setItem('acertos', acertos);
        window.location.href = "scores.php";
    }

}

function carregar_pergunta() {
    $.ajax({
        url: "../ajax/carregar_pergunta.php",
        data: {
            numero_pergunta: numero_pergunta
        },
        success: function (result) {
            _pergunta = result;
            atualizar_elementos();

        }
    });
}


function proxima_pergunta() {
    numero_pergunta++;
    carregar_pergunta();
    pausar_temporizador();
    iniciar_temporizador();
}


function mandarinfo() {
    $("#nome").attr("disabled", true);
    $("#btn_mandarinfo").attr("disabled", true);
    $.ajax({
        url: "../ajax/incluir_ranking.php",
        data: {
            pontos: window.localStorage.getItem('pontos'),
            nome: $("#nome").val().trim(),
            acertos: window.localStorage.getItem('acertos')
        },
        success: function () {
            ranking();
        }
    })
}


function ranking() {
    $.ajax({
        url: "../ajax/carregar_grade.php",
        success: function (result) {
            $("#grade tbody").html(result.tbody);
        }
    })
}


//temporizador
function iniciar_temporizador() {
    temporizador_segundos = temporizador_segundos_max;
    $("#temporizador-progresso").width("100%");
    $("#temporizador-progresso").stop().animate({ width: "0%" }, temporizador_segundos_max * 1000);
    temporizador_interval = setInterval(function () {
        temporizador_segundos--;
        $("#temporizador").stop().html(`00:${String(temporizador_segundos).padStart(2, "0")}`);
        if (temporizador_segundos === 0) {
            vida -= 1;
            pausar_temporizador();
            proxima_pergunta();
            $("#dica").hide();
        }
    }, 1000);
}

function pausar_temporizador() {
    clearInterval(temporizador_interval);
}

//ajudas
//adicionar tempo
function add_tempo(elem) {
    if ($(elem).is(".ajuda-usada")) {
        return false;
    }

    $(elem).addClass("ajuda-usada");
    pontos -= 25;
    $("#pontos").html(pontos);
    temporizador_segundos = temporizador_segundos + 10;
    $("#temporizador-progresso").width("#temporizador-progresso");
    $("#temporizador-progresso").stop().animate({ width: "0%" }, temporizador_segundos * 1000);
}
//tirar opçoes
function tirar_opçoes(elem) {
    if ($(elem).is(".ajuda-usada")) {
        return false;
    }
    $(elem).addClass("ajuda-usada");
    pontos -= 25;
    $("#pontos").html(pontos);
    for (const i in _pergunta.respostas) {
        if (_pergunta.respostas[i].tipo === 'f') {
            $(".alternativas").eq(i).css({
                "cursor": "default",
            }).animate({
                opacity: '0.2',
            }, 'slow');
        }
    }
}
//adicionar tentativa
function add_tentativa(elem) {
    if ($(elem).is(".ajuda-usada")) {
        return false;
    }
    $(elem).addClass("ajuda-usada");
    pontos -= 25;
    $("#pontos").html(pontos);
    dica_chance = true;
}
//dica escrita
function dica_escrita(elem) {
    escrito = true;
    if ($(elem).is(".ajuda-usada")) {
        return false;
    }
    $(elem).addClass("ajuda-usada");
    $("#temporizador-progresso").width("#temporizador-progresso");
    $("#temporizador-progresso").stop().animate({ width: "0%" }, temporizador_segundos * 1000);
    pontos -= 25;
    $("#pontos").html(pontos);
    if (escrito)
        $("#dica").html(_pergunta.dica);
    $("#dica").show();


}

//tempo para a proxima pergunta
var _aguardando_resposta = false;
function responder(i) {
    if (_aguardando_resposta) {
        return false;
    }
    _aguardando_resposta = true;
    if (_pergunta.respostas[i].tipo === 'v') {
        pontos += 50;
        $("#campo-alternativas div").eq(i).css({ "background-color": "green" });
        acertos++;
    } else {
        $("#campo-alternativas div").eq(i).css({ "background-color": "red" });
        if (dica_chance) {
            _aguardando_resposta = false;
            dica_chance = false;
            return false;
        }
        vida -= 1;
    }
    pausar_temporizador();
    setTimeout(function () {
        proxima_pergunta();
        $("#dica").hide();
        $(".alternativas").eq(i).css({
            "cursor": "pointer",
        });
        _aguardando_resposta = false;
    }, 2000);
}

