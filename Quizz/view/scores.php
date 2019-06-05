<html>

<head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="../css/quiz.css">
    <script type="text/javascript" src="../js/funcao.js"></script>

</head>

<body>

    <br>
    <div id="painel">
        <div style="margin: 10px 0 0 0">
            <label style="color: #00ffe9; font-size: 40px;">Recordes</label>
        </div>
        <div>
            <input style="border-radius: 30px; margin-top: 1%; " placeholder="Digite seu nome" id="nome" autocomplete="off">
            <button id="btn_mandarinfo" onclick="mandarinfo()" style="border-radius: 20px;">Gravar</button>

        </div>
        <div>
            <table id="grade" border rules=all>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Pontos</th>
                        <th>Perguntas Certas</th>
                        <th>Salvo Em</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <a style="font-size: 30px" href="home.php">
            <div class="menu" style=" margin: 24px 330px; width: 30%;">voltar</div>
        </a>
    </div>
</body>

</html>