🔹 Quantos pedidos cada cliente fez?

SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
LEFT JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

🔹 Algum vendedor também é fornecedor?
SELECT v.nome AS vendedor, f.nome AS fornecedor
FROM vendedor v
JOIN fornecedor f ON v.id_fornecedor = f.id_fornecedor;

🔹 Produtos, fornecedores e estoque
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade
FROM produto p
JOIN produto_fornecedor pf ON p.id_produto = pf.id_produto
JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
JOIN estoque e ON p.id_produto = e.id_produto;

🔹 Valor total do pedido (atributo derivado)
SELECT ip.id_pedido,
       SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM item_pedido ip
GROUP BY ip.id_pedido
HAVING valor_total > 500;

🔹 Pedidos ordenados por valor
SELECT ip.id_pedido,
       SUM(ip.quantidade * ip.preco_unitario) AS total
FROM item_pedido ip
GROUP BY ip.id_pedido
ORDER BY total DESC;
