create database e_commerce;
use e_commerce;

create table produto(
id bigint auto_increment primary key,
nome varchar(255) not null,
origem varchar (50) not null,
dataentrada date,
preco decimal(8,2)
);

ALTER TABLE produto ADD quantidade int;

select * from produto;

select * from produto where preco > 500;
select * from produto where preco < 500;

insert into produto (nome, origem, dataentrada, preco, quantidade)
value("Mesa", "China", "2024-03-08", 9000, 10),
("Cadeira", "Europa", "2024-08-05", 3000, 20),
("Estante", "Chile", "2024-05-08", 8000, 10),
("Sofá", "Irlanda", "2023-12-08", 15000, 5),
("Jarro", "frança", "2024-03-09" , 3000, 8),
("Manta", "italia", "2023-08-08", 1500, 15),
("Almofada", "alemanha", "2024-03-08", 800, 18),
("Cama", "França", "2024-05-20", 20000, 10); 

UPDATE e_commerce.produto SET preco = 48000.90 WHERE (id = 8);
UPDATE `e_commerce`.`produto` SET `preco` = '480.90' WHERE (`id` = '5');
UPDATE `e_commerce`.`produto` SET `preco` = '499.99' WHERE (`id` = '7');