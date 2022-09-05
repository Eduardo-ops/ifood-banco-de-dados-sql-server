-- *** CHAVE ESTRANGEIRA CLIENTE EM PEDIDO COM REFERENCIA EM CLIENTE *** 
ALTER TABLE pedido
ADD cliente smallint not null

ALTER TABLE pedido
ADD CONSTRAINT fk_pedido FOREIGN KEY (cliente) REFERENCES cliente(id_cliente)


-- *** CHAVE ESTRANGEIRA DE ITEM_PEDIDO PARA PEDIDO ***
ALTER TABLE item_pedido
ADD pedido smallint not null

ALTER TABLE item_pedido
ADD CONSTRAINT fk_item_pedido FOREIGN KEY (pedido) REFERENCES pedido(id_pedido)


-- *** CHAVE ESTRANGEIRA LOJA EM PRODUTO COM REFERENCIA EM LOJA***
ALTER TABLE produto
ADD loja smallint not null

ALTER TABLE produto
ADD CONSTRAINT fk_produto FOREIGN KEY (loja) REFERENCES loja(id_loja)

-- *** CHAVE ESTRANGEIRA LOJA EM PEDIDO COM REFERENCIA EM LOJA***
ALTER TABLE pedido
ADD loja smallint not null

ALTER TABLE pedido
ADD CONSTRAINT fk2_pedido FOREIGN KEY (loja) REFERENCES loja(id_loja)


-- *** MUITOS PARA MUITOS DE PRODUTO E CATEGORIA***
ALTER TABLE produto_caTegoria
ADD produto SMALLINT NOT NULL, categoria SMALLINT NOT NULL

ALTER TABLE produto_categoria
ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (produto) REFERENCES produto(id_produto), 
CONSTRAINT fk2_produto_categoria FOREIGN KEY (categoria) REFERENCES categoria(id_categoria)
