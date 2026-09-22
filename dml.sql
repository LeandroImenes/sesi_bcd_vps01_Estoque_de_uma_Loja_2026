use gestao_vestes;
insert into produto (nome, preco, quantidade, marca, id_fornecedor, id_categoria) values
("Camiseta verde", 60.00, 4, "Abibas", 3, 2),
("Tênis rosa", 150.00, 3, "Polma", 2, 3),
("Calça vermelha e azul", 70.00, 5, "Naike", 1, 1);

insert into categoria (nome, descricao) values
("Camiseta", "Verde"),
("Tênis", "Rosa"),
("Calça", "Vermelha e azul");

insert into fornecedor (razao_social, nome_fantasia, cnpj, telefone, email, endereco) values
("Ribeiro do Dia", "RDD", "123456789", "10123456789", "ribeiro@email.com", "Rua dos alfeneiros 4"),
("Jejum do Amarelo", "JDA", "987654321", "102223622222", "amarelo@email.com", "Rua Travessa samambaia 18"),
("Fagulha do Repolho Roliço", "FRR", "2444666666", "10333367423", "fagulha@email.com", "Rua Papeiro de latão 56");

insert into estoque (id_produto, quantidade, quantidade_minima, localizacao) values
(3, 2, 1, "Prateleira 2"),
(2, 5, 1, "Prateleira 16"),
(1, 3, 1, "Prateleira 8");

insert into movimentacao (id_produto, tipo, quantidade, data) values
(2, "Entrada", 5, "2026-03-14"),
(1, "Saída", 3, "2026-02-25"),
(3, "Saída", 2, "2026-01-05");


select * from produto;
select * from estoque;
select * from fornecedor;
select * from categoria;
select * from movimentacao;