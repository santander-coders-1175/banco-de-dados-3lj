CREATE TABLE logs(
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    tabela_afetada VARCHAR(50),
    acao VARCHAR(10),
    usuario VARCHAR(50),
    descricao TEXT,
    data_acao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER log_insert_cliente
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('clientes', 'INSERT', USER(), 'Novo cliente inserido');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_update_cliente
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('clientes', 'UPDATE', USER(), 'Dados do cliente atualizados');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_cliente
AFTER DELETE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('clientes', 'DELETE', USER(), 'Cliente excluído');
END $$

DELIMITER ;

-- tipo_cliente

DELIMITER $$

CREATE TRIGGER log_insert_tipo_cliente
AFTER INSERT ON tipo_cliente
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_cliente', 'INSERT', USER(), 'Novo tipo de cliente inserido');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_update_tipo_cliente
AFTER UPDATE ON tipo_cliente
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_cliente', 'UPDATE', USER(), 'Dados do tipo de cliente atualizados');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_tipo_cliente
AFTER DELETE ON tipo_cliente
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_cliente', 'DELETE', USER(), 'Tipo de cliente excluído');
END $$

DELIMITER ;

-- produtos

DELIMITER $$

CREATE TRIGGER log_insert_produtos
AFTER INSERT ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('produtos', 'INSERT', USER(), 'Novo produto inserido');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_update_produtos
AFTER UPDATE ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('produtos', 'UPDATE', USER(), 'Dados do produto atualizados');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_produtos
AFTER DELETE ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('produtos', 'DELETE', USER(), 'Produto excluído');
END $$

DELIMITER ;

-- tipo_produto

DELIMITER $$

CREATE TRIGGER log_insert_tipo_produto
AFTER INSERT ON tipo_produto
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_produto', 'INSERT', USER(), 'Novo tipo de produto inserido');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_update_tipo_produto
AFTER UPDATE ON tipo_produto
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_produto', 'UPDATE', USER(), 'Dados do tipo de produto atualizados');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_tipo_produto
AFTER DELETE ON tipo_produto
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('tipo_produto', 'DELETE', USER(), 'Tipo de produto excluído');
END $$

DELIMITER ;

-- diretoria

DELIMITER $$

CREATE TRIGGER log_insert_diretoria
AFTER INSERT ON diretoria
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('diretoria', 'INSERT', USER(), 'Novo diretor inserido');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_update_diretoria
AFTER UPDATE ON diretoria
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('diretoria', 'UPDATE', USER(), 'Dados do diretor atualizados');
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_diretoria
AFTER DELETE ON diretoria
FOR EACH ROW
BEGIN
    INSERT INTO logs(tabela_afetada, acao, usuario, descricao)
    VALUES('diretoria', 'DELETE', USER(), 'Diretor excluído');
END $$

DELIMITER ;
