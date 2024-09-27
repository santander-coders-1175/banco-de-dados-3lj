CREATE TABLE clientes(
    cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(20),
    sobrenome_cliente VARCHAR(30),
    telefone_cliente VARCHAR(15),
    municipio_cliente VARCHAR(20),
    cod_tipo_cliente INT, -- Foreign key referindo-se a tipo_cliente
    CONSTRAINT fk_tipo_cliente FOREIGN KEY (cod_tipo_cliente) REFERENCES tipo_cliente(cod_tipo_cliente)
);

CREATE TABLE tipo_cliente(
    cod_tipo_cliente INT PRIMARY KEY AUTO_INCREMENT,
    tipo_cliente VARCHAR(30) UNIQUE   
);

CREATE TABLE produtos(
    cod_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(30),
    descricao_produto VARCHAR(100),
    cod_tipo_produto INT, -- Foreign key referindo-se a tipo_produto
    CONSTRAINT fk_tipo_produto FOREIGN KEY (cod_tipo_produto) REFERENCES tipo_produto(cod_tipo_produto)
);

CREATE TABLE tipo_produto(
    cod_tipo_produto INT PRIMARY KEY AUTO_INCREMENT,
    tipo_produto VARCHAR(30),
    cod_diretor INT, -- Foreign key referindo-se a diretoria
    CONSTRAINT fk_diretor FOREIGN KEY (cod_diretor) REFERENCES diretoria(cod_diretor)
);

CREATE TABLE diretoria(
    cod_diretor INT PRIMARY KEY AUTO_INCREMENT,
    nome_diretor VARCHAR(50),
    email_diretor VARCHAR(70)
);

-- Tabela de relacionamento entre clientes e produtos, já que um cliente pode adquirir vários produtos (0,n)
CREATE TABLE cliente_produto(
    cod_cliente INT, -- Foreign key referindo-se a clientes
    cod_produto INT, -- Foreign key referindo-se a  produtos
    PRIMARY KEY (cod_cliente, cod_produto),
    CONSTRAINT fk_cliente FOREIGN KEY (cod_cliente) REFERENCES clientes(cod_cliente),
    CONSTRAINT fk_produto FOREIGN KEY (cod_produto) REFERENCES produtos(cod_produto)
);


