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
