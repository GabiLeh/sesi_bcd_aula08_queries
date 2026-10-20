select * from produto;
select * from pedido;
---- ATIVIDADE 1
select p.*, pr.* from pedido p join produto pr on p.id_produto = pr.id;
---- 2
select cliente.*, pedido.* from cliente join pedido on cliente.id = pedido.id_cliente;
---- 3
select cliente.*, pedido.* from cliente join pedido on cliente.id = pedido.id_cliente where cliente.id = 1;
---- 4
select p.*, pr.* from pedido p join produto pr on p.id_produto = pr.id order by p.id desc limit 2;
---- ATIVIDADE 2 a
select id, nome from produto;
---- b
select * from produto order by nome;
---- 2
select * from produto order by id desc limit 5;
---- 3 a
select id, quantidade, valor_unitario from pedido;
---- b
select id, quantidade, valor_unitario from pedido order by valor_unitario desc;
---- 4
select * from pedido order by id desc limit 10;
---- 5
select p.id, c.nome, p.quantidade, p.valor_unitario from pedido p join cliente c on p.id_cliente = c.id;
---- 6
select p.id, pr.nome, p.quantidade, p.valor_unitario from pedido p join produto pr on p.id_produto = pr.id;
---- 7
select p.id, c.nome, pr.nome, p.quantidade, p.valor_unitario, p.subtotal from pedido p join cliente c on c.id = p.id_cliente join
produto pr on pr.id =p.id_produto;
---- 8
select p.subtotal, c.nome, pr.nome from pedido p join cliente c on c.id = p.id_cliente join produto pr on pr.id =p.id_produto order by subtotal desc limit 5;
---- 9
select count(*) as total_clientes from cliente;
---- 10
select count(*) as total_produtos from produto;
---- 11
select c.nome, count(p.id) as total_pedidos from cliente c join pedido p on c.id = p.id_cliente group by c.id, c.nome;
---- 12
select pr.nome, count(p.id) from produto pr join pedido p on pr.id = p.id_produto group by pr.nome order by pr.nome;
---- 13
select sum(p.subtotal) as total from pedido p;
---- 14
select avg(p.quantidade) as media from pedido p;
---- 15
select pr.nome, sum(p.subtotal) as total from produto pr join pedido p on pr.id = p.id_produto group by pr.nome order by subtotal desc;