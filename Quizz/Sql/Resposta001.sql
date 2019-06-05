INSERT INTO resposta (id_pergunta,texto, tipo) values ('1','Meteoritos.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('1','Planetas.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('1','Estrelas Caindo.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('1','Nave espacial.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('1','Lixo espacial.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('2','Vênus, por sua atmosfera muito densa.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('2','Marte, por seus desertos quentes.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('2','Sol, por ser uma super nova de fogo.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('2','Júpiter, por ser um planeta composto de gases. ', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('2','Mercúrio, por estar mais próximo do Sol.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('3','Netuno.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('3','Júpiter.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('3','Mercurio.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('3','Vênus.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('3','Urano.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('4','Neil Armstrong.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('4','Oniel Armestrong.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('4','Buzz Aldrin.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('4','Michael Jackson.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('4','Nill Armstrongue.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('5','Singularidade.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('5','Centro do buraco.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('5','Lado negro da força.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('5','Limite Temporal.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('5','Anomalida gravitacional.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('6','Matéria escura.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('6','Átomos.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('6','Hélio.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('6','Prótons.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('6','Carbono.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('7','8 Planetas.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('7','7 Planetas.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('7','5 Planetas.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('7','10 Planetas.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('7','9 Planetas.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('8','Ceres e Sedna.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('8','Plutão e HFLS3.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('8','Titã e Beta.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('8','Ceres e Titã.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('8','Beta e Alfa.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('9','Os deuses da mitologia grega.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('9','Nomes de pets dos politicos Americanos.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('9','Microorganismos marinhos.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('9','Reis da Grécia antiga.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('9','Personagens da história Òdiceia.', 'z');

INSERT INTO resposta (id_pergunta,texto, tipo) values ('10','Por causa de sua coloração avermelhada.', 'v');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('10','Por ser proximo ao Sol, ele fica avermelhado.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('10','Por jogarem corante vermelho nas terras.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('10','Por causa dos rubis que ali existem.', 'f');
INSERT INTO resposta (id_pergunta,texto, tipo) values ('10','Por sua superficie ser muito quente.', 'z');




/*
select * from resposta where tipo = 'f'

rezetar id_resposta e apagar tudo

TRUNCATE TABLE resposta
RESTART IDENTITY;

*/