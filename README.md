# Projeto Banco de Dados – Loja de Suplementos

Projeto desenvolvido para modelagem e implementação de um banco de dados para uma loja de suplementos, contemplando a estrutura necessária para gerenciamento de clientes, produtos, categorias e pedidos.

# Objetivo

Desenvolver a modelagem e implementação de um banco de dados representando o funcionamento de uma loja de suplementos, aplicando conceitos de modelagem relacional, chaves e integridade referencial.

# Tecnologias utilizadas

- MySQL Server
- MySQL Workbench
- SQL

# Estrutura do projeto

- diagrama_suplementos.mwb  
  Modelo EER editável do MySQL Workbench

- loja_suplementos.sql  
  Script de criação e implementação do banco de dados

- README.md  
  Documentação do projeto

# Entidades do banco

- Clientes
- Produtos
- Categorias
- Pedidos
- Item_Pedidos

# Atributos principais

### Clientes
- id_cliente
- nome
- email
- telefone

### Produtos
- id_produto
- nome
- preco
- estoque
- id_categoria

### Categorias
- id_categoria
- nome_categoria

### Pedidos
- id_pedido
- data_pedido
- id_cliente

### Item_Pedidos
- id_item
- id_pedido
- id_produto
- quantidade

# Relacionamentos

- Clientes → Pedidos (1:N)
- Pedidos → Item_Pedidos (1:N)
- Produtos → Item_Pedidos (1:N)
- Categorias → Produtos (1:N)

# Funcionalidades implementadas

- Criação das tabelas
- Definição de chaves primárias
- Definição de chaves estrangeiras
- Relacionamentos entre tabelas
- Inserção de dados de exemplo
- Consultas SQL
- Integridade referencial

# Como executar

1. Abrir o MySQL Workbench
2. Criar uma nova conexão com o servidor MySQL
3. Abrir o arquivo `loja_suplementos.sql`
4. Executar o script
5. Verificar a criação das tabelas e registros

## Autor

Léo
