CREATE TABLE clientes ( 
 Id_clientes INT PRIMARY KEY ,  
  nome VARCHAR(70) NOT NULL,
 email VARCHAR(90) NOT NULL  
);


CREATE TABLE cadastro ( 
 Id_cadastro INT PRIMARY KEY ,  
 id_clientes INT,  
 email VARCHAR(50) NOT NULL,  
 senha VARCHAR(50) NOT NULL,  
 FOREIGN KEY(id_clientes) REFERENCES clientes (id_clientes)
); 

 

CREATE TABLE site ( 
 Id_site INT PRIMARY KEY ,  
 id_cadastro INT,  
 FOREIGN KEY(id_cadastro) REFERENCES cadastro (id_cadastro)
); 


CREATE TABLE estoque ( 
 Id_estoque INT PRIMARY KEY ,  
 quantidade_produtos VARCHAR(100)
); 


CREATE TABLE produtos ( 
 Id_produtos INT PRIMARY KEY ,  
  nome_produto VARCHAR(100),
  id_estoque INT,
  FOREIGN KEY(id_estoque) REFERENCES estoque (id_estoque)
); 


CREATE TABLE preco ( 
 Id_preco INT PRIMARY KEY ,  
 valor FLOAT, 
 id_produtos INT,
 FOREIGN KEY(id_produtos) REFERENCES produtos (id_produtos)
); 

INSERT INTO clientes (Id_clientes,nome,email)
VALUES
(1,'joão' , 'joão@gmail.com'),
(2,'ana' , 'ana@gmail.com'),
(3,'ygor' , 'ygor@gmail.com');


INSERT INTO estoque(Id_estoque,quantidade_produtos)
VALUES
(1,'20'),
(2,'10'),
(3,'40');


 INSERT INTO produtos (Id_produtos,nome_produto,id_estoque)
 VALUES
 (1,'playstation 5',1),
 (2,'playstation 4',2),
 (3,'xbox series s',3);
 
INSERT INTO preco (Id_preco,valor,id_produtos)
VALUES
(1,'2300.00',2),
(2,'2600.00',3),
(3,'3000.00',1);

select * from clientes;
select * from estoque;
 select * from produtos;
 select * from preco;