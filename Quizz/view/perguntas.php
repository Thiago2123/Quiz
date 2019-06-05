<?php
require("../def/function.php");
$connection = connection();
?>

<html>

<head>

    <meta charset="utf-8">
    <title>Quiz</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="../css/quiz.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script type="text/javascript" src="../js/funcao.js"></script>
</head>

<body>
    <br>
    <div id="painel" class="pergunta">
        <div id="jaula">
            <div id="ajudas" style="display: inline-flex; width: 60%; margin: 0px auto">
                <div style="flex: 2; text-align: left">
                    <img style="cursor: pointer" onclick="dica_escrita(this)" src="../imgs/dica.png" title="Dica escita">
                    <img style="cursor: pointer" onclick="tirar_opçoes(this)" src="../imgs/balanca.png" title="50x50 V ou F">
                    <img style="cursor: pointer" onclick="add_tempo(this)" src="../imgs/relogio.png" title="+10 Sec">
                    <img style="cursor: pointer" onclick="add_tentativa(this)" src="../imgs/x2.png" title="+1 tentativa">
                </div>
                <div style="flex: 1; text-align: center">
                    <label style="color: #00ffe9" id="pontos" title="Pontos">0/500</label>
                </div>
                <div style="flex: 2; text-align: right">
                    <label style="color: #00ffe9" id="temporizador" title="Temporizador">00:00</label>
                </div>
            </div>
            <div id="pergunta">
                <div style="margin-top: 3%" id="texto_pergunta">Pergunta...</div>
                <div id="temporizador-progresso"></div>
                <div id="dica" style="font-size: 40%; color: blue"></div>
                <div id="vidas" style="position: absolute; bottom: 0; right: 5%;">
                    <img src="../imgs/coracao.ico" id="vida3" title="vida">
                    <img src="../imgs/coracao.ico" id="vida2" title="vida">
                    <img src="../imgs/coracao.ico" id="vida1" title="vida">
                </div>
            </div>
            <div id="campo-alternativas">
                <div class="alternativas" onclick="responder(0)">A</div>
                <div class="alternativas" onclick="responder(1)">B</div>
                <div class="alternativas" onclick="responder(2)">C</div>
                <div class="alternativas" onclick="responder(3)">D</div>
                <div class="alternativas" onclick="responder(4)">E</div>
            </div>
        </div>
    </div>
</body>

</html>