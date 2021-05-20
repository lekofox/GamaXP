/* Busca de quantidade de pedidos no sistema - 1 consulta contemplando contagem ou totalização
select count(*) from pedidos*/

/* Busca para relacionar quantos pedidos um cliente fez e qual o status de cada um deles. - 1 consulta contemplando a junção entre 2 tabelas
select clientes.id, nome as nome_cliente, whatsapp, email, codigo as numero_pedido, status as status_pedido from clientes
inner join pedidos on pedidos.clientes = clientes.id
inner join pedidos_status on pedidos.pedido_status = pedidos_status.id
where pedidos.clientes = 1
*/

/* Busca de todos os pedidos, produtos e status de cada pedido relacionados a um cliente* - 1 consulta contemplando a junção entre 3 tabelas 

select nome as nome_cliente, whatsapp, email,pedidos.codigo as codigo_pedido, descricao as nome_produto, preco_unitario as preco_produto, quantidade as quantidade_produto, status as status_pedidos from clientes
inner join pedidos on clientes.id = pedidos.clientes
inner join produtos_pedidos on pedidos.id = produtos_pedidos.id_pedido
inner join pedidos_status on pedidos.pedido_status = pedidos_status.id
where pedidos.clientes = 1
*/

/* Busca de inventario dos produtos (tanto valor absoluto quanto quantidade de itens) agrupados por departamento - 1 consulta contemplando a junção entre 2 tabelas + uma operação de totalização e agrupamento 
select nome_departamento as departamento, sum(quantidade) as quantidade_produtos, sum(preco*quantidade) as inventario_total from produtos
inner join departamentos on produtos.departamento_id = departamentos.id
inner join estoque on produtos.id = estoque.produto_id
group by departamentos.nome_departamento
*/

/* Busca para relacionar cliente, contato, data, endereço de entrega e checkout(soma dos pedidos) filtrados por status positivos ( que não sejam cancelados ou reprovados) agrupado por ID - 1 consulta contemplando a junção entre 3 ou mais tabelas + uma operação de totalização e agrupamento*/
select clientes.id, nome as nome_cliente, whatsapp,email, data as data_pedido, estado, cidade, logradouro, complemento, sum(quantidade) as quantidade_checkout, sum(quantidade * preco_unitario) as soma_checkout from clientes
inner join enderecos on clientes.id = enderecos.cliente_id
inner join cidade_estado on cidade_estado.id = enderecos.cidade_estado
inner join pedidos on clientes.id = pedidos.clientes
inner join produtos_pedidos on pedidos.id = produtos_pedidos.id_pedido
inner join pedidos_status on pedidos_status.id = pedidos.pedido_status
where pedidos_status.id != 2 and pedidos_status.id != 5
group by clientes.id

 