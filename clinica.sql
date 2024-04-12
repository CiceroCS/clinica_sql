create schema if not exists clinica;
use clinica; 

create table if not exists cargo(
id_cargo INT(11) primary key,
nome varchar(45)
);

create table if not exists empresa(
id_empresa int(11) primary key,
cnpj varchar(20),
nome_fantasia varchar(50),
endereco varchar(200),
telefone varchar(20)
);

create table if not exists medicos(
id_medicos int(11) primary key,
crm int(11),
nome varchar(100),
cpf varchar(20),
especialidade varchar(50),
data_de_nascimento date,
endereco varchar(200),
telefone varchar(20)
);

create table if not exists riscos_ocupacionais(
id_riscos int(11) primary key,
nome varchar(45)
);

create table if not exists tipos_exame(
id_tipo_exame int(11) primary key,
tipo varchar(30)
);

create table if not exists resultados_exame(
id_resultado_exame int(11) primary key,
tipo varchar(30)
);

create table if not exists funcionarios(
id_funcionario int(11) primary key,
nome varchar(100),
cpf varchar(20),
data_nascimento date,
endereco varchar(200),
telefone varchar(20),
cargo_id_cargo int(11),
empresa_id_empresa int(11),
constraint cargo_funcionarios foreign key (cargo_id_cargo) references cargo (id_cargo),
constraint cargo_empresa foreign key (cargo_id_cargo) references cargo (id_cargo)
);

create table if not exists exames(
id_exame int(11) primary key,
especialidade varchar(50),
data_realizacao date
);

create table if not exists atestados(
id_atestado int(11) primary key,
resultados_riscos varchar(100),
resultado varchar(100),
observacoes varchar(300),
medico_id int(11),
constraint atestados_medicos foreign key (medico_id) references medicos (id_medicos)
);

create table if not exists cargo_has_riscos_ocupacionais(

);

create table if not exists exame_has_atestado(

);

create table if not exists empresa_has_exame(

);

create table if not exists funcionario_has_exame(

);
