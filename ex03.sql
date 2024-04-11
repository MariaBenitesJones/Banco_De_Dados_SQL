create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table  tb_produtos(
id bigint auto_increment primary key,
produto varchar(255) not null,
descricao varchar(500),
preco decimal (8,2) not null,
quantidade int,
categoriaid bigint not null
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

select * from tb_produtos;

SELECT produto, preco, quantidade, tb_categorias.categoria,tb_categorias.cheiro
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT produto, preco, quantidade, tb_categorias.categoria,tb_categorias.cheiro
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
where  tb_categorias.id = 5;

SELECT produto, preco, quantidade, tb_categorias.categoria,tb_categorias.cheiro
FROM tb_produtos left JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos ORDER BY preco ASC;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `descricao`, `preco`, `quantidade`, `categoriaid`) VALUES ('Rimel', 'Natura, preto, cheiro amendoado', '50', '100', '2');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `descricao`, `preco`, `quantidade`, `categoriaid`) VALUES ('maleato de dexclorfeniramina betametasona', 'anti-alergico', '40', '200', '4');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `descricao`, `preco`, `quantidade`, `categoriaid`) VALUES ('amoxillina', 'antibiótico', '80', '150', '1');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `preco`, `quantidade`, `categoriaid`) VALUES ('fralda', '50', '100', '6');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `preco`, `quantidade`, `categoriaid`) VALUES ('Sacola verde', '0.25', '500', '5');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `preco`, `quantidade`, `categoriaid`) VALUES ('Sacola cinza', '0.25', '500', '5');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `descricao`, `preco`, `quantidade`, `categoriaid`) VALUES ('Escova de cabelo', 'cerdas maciais', '45', '50', '2');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`produto`, `preco`, `quantidade`, `categoriaid`) VALUES ('Traja preta', '60', '68', '3');
 
