## Projeto de Banco de Dados 1 - Formação Cientista de Dados - Ada Tech - Santander Coders 2024

### Descrição do Projeto

Este projeto foi desenvolvido como parte do módulo Banco de Dados 1 do curso de Formação para Profissional em Ciência de Dados da Ada Tech - Santander Coders 2024, sob orientação do professor/instrutor Lucas Ximenes.

O objetivo principal foi desenvolver e manipular um banco de dados relacional, focando na modelagem, normalização e execução de consultas SQL. Para isso, usamos um Jupyter Notebook com as bibliotecas pandas e pymysql para execução das queries e inserções de dados. Também foram implementados triggers para resolver algumas necessidades específicas do negócio.

### Estrutura do Projeto

O projeto está organizado da seguinte maneira:
```
.
├── data
│   └── clientes_genericos.csv
├── database
│   ├── create.sql
│   ├── triggers.sql
├── refs
│   └── (vazia)
├── src
│   └── mysql.ipynb
├── .gitignore
├── modelo_conceitual.jpeg
├── modelo_logico.jpeg
├── README.md
└── requirements.txt
```

data/: Contém o arquivo clientes_genericos.csv usado para populações de tabelas com dados fictícios de clientes.
database/: Contém os arquivos SQL:

    create.sql: Script para criação das tabelas no banco de dados.
    triggers.sql: Script que define triggers para automatizar certas operações em nossas tabelas.

refs/: Diretório reservado para possíveis referências futuras, atualmente vazio.
src/: Contém o notebook mysql.ipynb, onde todas as queries, inserções e manipulações do banco foram realizadas utilizando pandas e pymysql.
modelo_conceitual.jpeg: Representação gráfica do modelo conceitual do banco de dados, fornecido inicialmente pelo gestor.
modelo_logico.jpeg: Representação gráfica do modelo lógico, já normalizado, respeitando as primeiras três formas normais.
.gitignore: Arquivo que define padrões de arquivos que devem ser ignorados no controle de versão.
README.md: Arquivo atual com a documentação do projeto.
requirements.txt: Arquivo contendo as dependências do projeto (bibliotecas Python usadas).

### Desafios Propostos

O projeto inclui a resolução de diferentes problemas de negócio, fornecidos pelo instrutor Lucas Ximenes, que abordam os seguintes tópicos:

    Modelagem e Normalização:
        Elaboração de um modelo conceitual e um modelo lógico (em conformidade com as três primeiras formas normais) para um banco de dados que relaciona clientes e produtos financeiros.

    Consultas SQL Simples e Complexas:
        Execução de consultas em um banco de dados relacional com relação muitos-para-muitos entre produtos e categorias, com foco em manipulações de DQL.

    Inserções, Alterações e Remoções de Dados:
        Inserções de dados e atualizações utilizando comandos DDL e DML.

### Dependências

Para rodar o projeto localmente, instale as dependências listadas no arquivo requirements.txt:

```
pip install -r requirements.txt
```

### Considerações Finais

Este projeto foi uma excelente oportunidade para aplicar conceitos teóricos de bancos de dados relacionais e práticas SQL. Além disso, a utilização de triggers trouxe mais automatização para o banco, destacando-se no contexto de modelagem de negócios.

Para dúvidas ou contribuições, sinta-se à vontade para abrir uma issue ou enviar um pull request.

