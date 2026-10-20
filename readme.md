# Comandos das atividades
## Atividades 02
- Execute este **[script](https://github.com/wellifabio/sesi_bcd_aula03_mer_der_dd_dados_2026/blob/main/ddldml.sql)** que vai recriar o banco de dados de pedidos com mais dados nas tabelas
- Crie um arquivo chamado `dql.sql` e nele coloque todas as queries criadas para solucionar as solicitações a seguir.
#### 1 Listando produtos
- Liste todos os produtos cadastrados, mostrando apenas o id e o nome.
- Ordene os produtos pelo nome em ordem alfabética.
#### 2 Produtos mais recentes
- Mostre os 5 últimos produtos cadastrados, considerando o maior id como o mais recente.

#### 3 Maiores pedidos
- Liste os pedidos mostrando id, quantidade e valor_unitario,
- ordenando pelos pedidos de maior valor unitário para o menor.

#### 4 Primeiros pedidos
- Mostre somente os 10 últimos pedidos cadastrados.

#### 5 Pedidos com nomes dos clientes
- Liste todos os pedidos mostrando:
    - ID do pedido
    - Nome do cliente
    - Quantidade
    - Valor unitário
- Use JOIN entre as tabelas pedido e cliente.

#### 6 Pedidos com nome do produto
- Liste os pedidos mostrando:
    - ID do pedido
    - Nome do produto
    - Quantidade
    - Valor unitário

- Relacione pedido e produto.

#### 7 Pedidos completos
- Mostre uma lista contendo:
    - ID do pedido
    - Nome do cliente
    - Nome do produto
    - Quantidade
    - Valor unitário
    - Subtotal
- Utilize as três tabelas: pedido, cliente e produto.

#### 8 Os 5 pedidos de maior valor
- Mostre os 5 pedidos com maior subtotal, exibindo o nome do cliente, o produto e o subtotal.
- Comandos principais: JOIN, ORDER BY, LIMIT

#### 9 Quantidade de clientes
- Crie uma query que descubra quantos clientes estão cadastrados na tabela cliente.
- Comando principal: COUNT

#### 10 Quantidade de produtos
- Crie uma query que descubra quantos produtos existem cadastrados.
- Comando principal: COUNT

#### 11 Quantidade de pedidos por cliente
- Mostre o nome de cada cliente e a quantidade de pedidos realizados por ele.
- Comandos principais: JOIN, COUNT, GROUP BY

#### 12 Quantidade de pedidos por produto
- Mostre o nome de cada produto e quantas vezes ele aparece nos pedidos, em ordem alfabética de nome do produto.
- Comandos principais: JOIN, COUNT, GROUP BY, ORDER BY

#### 13 Valor total dos pedidos
- Calcule o valor total de todos os pedidos utilizando o campo subtotal.
- Comando principal: SUM

#### 14 Quantidade média por pedido
- Calcule a quantidade média de produtos por pedido.
- Comando principal: AVG

#### 15 Total vendido por produto
- Mostre o nome de cada produto e o valor total vendido de cada um, somando os subtotais dos pedidos.
- Ordene do produto que teve maior valor vendido para o menor.
- Comandos principais: JOIN, SUM, GROUP BY, ORDER BY
# Códigos
```sql
-- Consultas/Query
select * from cliente;
select * from telefone;
select * from produto;
select * from pedido;

-- Clientes em ordem alfabetica de nome descrescente
select * from cliente order by nome desc;

--  Somente os quatro primeiros clientes
select * from cliente limit 4;

-- Somente os quatro ultimos clientes
select * from cliente order by id desc limit 4;

-- Clientes do id 10 até o 13
select * from cliente where id between 10 and 13;

-- Somente o cliente chamado "Valter Martins"
select * from cliente where nome = "Valter Martins";

-- Pesquisa aproximado pelo nome do cliente (Iniciados com "Valter")
select * from cliente where nome like "Valter%";

-- Funções 
sum(), max(), min(), avg(), count()
select curdate();
select curtime();
select now();
select round(10.0/3.2)
select floor(10.0/3.5)
select round(10.0/3.2)

-- Operadores aritméticos e lógicos
select 10 + 10;
select 10 + 10 as soma;
select 10 * 10 as "multiplicação";
select 10 - 10 as "subtração";
select 10 / 10 as "divisão";
select 10 > 10 as Booleano;
select 10 > 9 as Booleano;

-- datediff() diferença de datas em dias
select datediff("2026-10-06","2026-10-03");
select datediff(now(),"1980-09-08");
select truncate(datediff(now(),"1980-09-08") / 365, 0);
select floor(datediff(now(),"1980-09-08") / 365);
select round(datediff(now(),"1980-09-08") / 365,1);

-- date_add() date_sub
select date_add(now(),interval 10 day);
select date_add(now(),interval 72 hour);
select date_sub(now(),interval 10 day);
select date_sub(now(),interval 72 hour);# sesi_bcd_aula08_queries
"# sesi_bcd_aula08_queries" 
