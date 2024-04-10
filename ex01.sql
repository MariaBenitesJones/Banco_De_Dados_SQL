create database empresa;
use empresa;

create table funcionarios(
id bigint auto_increment primary key,
cpf bigint not null, 
nome varchar(255) not null,
datanascimento date not null,
salario decimal(6,2) not null
);

select * from funcionarios;

insert into funcionarios(cpf, nome, datanascimento, salario)
values (12345, "Mariana", 23-03-2000, 1558.80),
(678910, "Carlos", 02-03-1980, 5000),
(135780, "Joaquim", 02-08-1999, 3500.50),
(012349, "Beatriz", 20-08-2005, 2300),
(096321, "Ana", 08-06-1990, 4000);


SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE salario < 2000;

UPDATE `empresa`.`funcionarios` SET `datanascimento` = '1999-08-02' WHERE (`id` = '3');
