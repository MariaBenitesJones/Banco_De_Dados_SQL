create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
descricao varchar(500),
preco decimal(8,2) not null,
quantidade bigint not null,
categoriaid bigint not null,
datadeentrada date not null
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

select * from tb_produtos;

SELECT nome, preco, quantidade, datadeentrada, tb_categorias.tipo,tb_categorias.datavalidade
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, datadeentrada, tb_categorias.tipo,tb_categorias.datavalidade
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
where  tb_categorias.id = 5;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Nutella', '50', '10', '5', '2024-05-20');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Limão', 'azedo', '2', '200', '1', '2024-03-20');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('morango', 'doce', '8', '180', '24-04-10');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Beringela', null, '6', '2', '2024-02-28');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Brócolis', null, '3', '20', '2', '2024-04-29');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Alface',  null,'4', '110', '3', '2024-09-20');
INSERT INTO `db_cidade_dos_vegetais`.`tb_produtos` (`nome`, `preco`, `quantidade`, `categoriaid`, `datadeentrada`) VALUES ('Arroz',  null, '28', '25', '4', '2024-03-23');
UPDATE `db_cidade_dos_vegetais`.`tb_produtos` SET `preco` = '52.00' WHERE (`id` = '9');