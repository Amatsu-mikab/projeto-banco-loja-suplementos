
CREATE DATABASE IF NOT EXISTS loja_suplementos;
USE loja_suplementos;

CREATE TABLE Categorias(
ID_Categoria INT PRIMARY KEY AUTO_INCREMENT,
Nome_Categoria VARCHAR(100),
Descricao TEXT
);

CREATE TABLE Clientes(
ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE NOT NULL,
Senha VARCHAR(255),
Telefone VARCHAR(15),
Endereco_Entrega VARCHAR(255)
);

CREATE TABLE Produtos(
ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(150),
Descricao TEXT,
Preco_Venda DECIMAL(10,2),
Quantidade_Estoque INT,
Imagem_URL VARCHAR(255),
FK_Categoria INT,
FOREIGN KEY(FK_Categoria)
REFERENCES Categorias(ID_Categoria)
);

CREATE TABLE Pedidos(
ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
Data_Hora DATETIME,
Valor_Total DECIMAL(10,2),
Status_Pedido VARCHAR(30),
Metodo_Pagamento VARCHAR(30),
FK_Cliente INT,
FOREIGN KEY(FK_Cliente)
REFERENCES Clientes(ID_Cliente)
);

CREATE TABLE Item_Pedidos(
ID_Item_Pedido INT PRIMARY KEY AUTO_INCREMENT,
Quantidade INT,
Preco_Unitario DECIMAL(10,2),
FK_Pedido INT,
FK_Produto INT,
FOREIGN KEY(FK_Pedido)
REFERENCES Pedidos(ID_Pedido),
FOREIGN KEY(FK_Produto)
REFERENCES Produtos(ID_Produto)
);

INSERT INTO Categorias
(Nome_Categoria,Descricao)
VALUES
('Whey Protein','Proteínas'),
('Creatina','Suplementos de força'),
('Pré-Treino','Energia');

INSERT INTO Clientes
(Nome,Email,Senha,Telefone,Endereco_Entrega)
VALUES
('Leo Silva','leo@email.com','123456','11999999999','Rua A,123');

INSERT INTO Produtos
(Nome,Descricao,Preco_Venda,Quantidade_Estoque,Imagem_URL,FK_Categoria)
VALUES
('Whey Protein Isolado','Proteína premium',149.90,30,'img/whey.jpg',1),
('Creatina 300g','Creatina',89.90,50,'img/creatina.jpg',2);

