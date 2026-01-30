INSERT INTO cliente (nome, email, tipo_cliente)
VALUES ('João Silva', 'joao@email.com', 'PF'),
       ('Empresa XYZ', 'contato@xyz.com', 'PJ');

INSERT INTO cliente_pf VALUES (1, '12345678901');
INSERT INTO cliente_pj VALUES (2, '12345678000199', 'Empresa XYZ LTDA');

INSERT INTO fornecedor (nome)
VALUES ('Fornecedor A'), ('Fornecedor B');

INSERT INTO vendedor (nome, id_fornecedor)
VALUES ('Carlos', 1);

INSERT INTO produto (nome, preco)
VALUES ('Notebook', 3500.00), ('Mouse', 150.00);

INSERT INTO produto_fornecedor VALUES (1,1),(2,2);

INSERT INTO estoque VALUES (1,10),(2,50);

INSERT INTO pedido (id_cliente, data_pedido)
VALUES (1, '2025-01-10'), (2, '2025-01-11');

INSERT INTO item_pedido VALUES (1,1,1,3500),(2,2,2,150);

INSERT INTO pagamento (tipo, valor)
VALUES ('PIX', 3500), ('CARTAO', 300);

INSERT INTO pedido_pagamento VALUES (1,1),(2,2);

INSERT INTO entrega (id_pedido, status, codigo_rastreio)
VALUES (1,'Enviado','BR123'),(2,'Entregue','BR456');
