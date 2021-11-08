--create database letscode_plano_de_saude;

--cliente: nome, data de nascimento, email

    create table cliente (
	id int primary key,
	nome varchar(100) not null,
	data_nascimento date not null,
	email varchar(50) not null
)

create table dependentes (
	id int primary key,
	cliente_id int references cliente(id),
	nome varchar(100) not null,
	data_nascimento date not null
)

create table produto (
	id int primary key,
	ans int not null,
	descricao varchar(100) not null,
	valor numeric not null
)

create table contrato (
	id int primary key,
	cliente_id int references cliente(id),
	data_inicio date not null
)

create table produto_contrato (
	id int primary key,
	contrato_id int references contrato(id),
	produto_id int references produto(id)
)
     