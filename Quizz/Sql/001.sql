create table pergunta(
	id_pergunta SERIAL,
	texto text not null,
	dica text, 
	CONSTRAiNT pk_pergunta primary key (id_pergunta)
);

create table resposta(
	id_resposta serial,
	id_pergunta integer not null,
	texto text not null,
	tipo char(1) not null,
	CONSTRAiNT pk_resposta primary key (id_resposta),
	CONSTRAiNT fk_resposta_pergunta foreign key (id_pergunta)
		references pergunta (id_pergunta) on update cascade 
						 on delete cascade,
	constraint ch_resposta_tipo check (tipo in ('v','f','z'))					 
);


create table placar(
	id_placar SERIAL,
	nome varchar(20),
	pontos integer not null default 0,
	criado_em timestamp not null,
	certas integer not null,
	constraint pk_placar primary key(id_placar) 
);
