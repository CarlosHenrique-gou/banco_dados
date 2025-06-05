# criar banco de dados
CREATE DATABASE dbBiblioteca;

# usar banco de dados
USE dbBiblioteca;

# criar tabela
CREATE TABLE tablivros(
ISBN INT PRIMARY KEY,
nomeLivro VARCHAR (100),
valorlivro FLOAT,
autorLivro VARCHAR(50),
generoLivo VARCHAR(15),
anoPublicacao INT,
editoraLivro VARCHAR(20),
cidade VARCHAR (30),
paginaLivro INT
);

INSERT INTO tabLivros
VALUES (1111, "Java", 50.50, "Terror", 2025, "WAP", "Cotia", 100)