drop database if exists gestao_pedido;
create database gestao_pedido;
use gestao_pedidos;
create table produto(
    id int not null primary key auto_increment,
    id_categoria int not null required,
    id_fornecedor int not null required,
    nome varchar (50) not null required,
    descricao varchar (200) not null required,
    preco decimal (10,2) not null required,
    marca varchar (30) not null required
);
create table categoria(
    id int not null primary key auto_increment,
    nome varchar (50) not null required,
    descricao varchar (200) not null required
);
create table fornecedor(
    id int not null primary key auto_increment,
    razao_social varchar (10) not null required,
    nome_fantasia varchar (50) not null required,
    cnpj varchar (15) not null required,
    telefone varchar (15) not null required,
    email varchar (30) not null required,
    endereco varchar (50) not null required
);
create table estoque(
    id_estoque int not null primary key auto_increment,
    id_produto int not null required,
    quantidade int (5) not null required,
    quantidade_minima int (1) not null required,
    localizacao varchar (10) not null required
);
create table movimentacao(
    id_movimentacao int not null primary key auto_increment,
    id_produto int not null required,
    tipo enum(entrada, saida) not null required,
    quantidade int (5) not null required,
    data varchar (10) not null required
);

alter table produto add constraint fk_produto foreign key (id) references movimentacao(id_produto);
alter table fornecedor add constraint fk_fornecedor foreign key (id) references produto(id_fornecedor);
alter table estoque add constraint fk_estoque foreign key (id) references produto(id);
alter table categoria add constraint fk_categoria foreign key (id_categoria) references produto(id_categoria);

describe produto;
describe categoria;
describe fornecedor;
describe estoque;
describe movimentacao;
show tables;
