CREATE TABLE livro (
    isbn VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(40),
    autor VARCHAR(30)
);

CREATE TABLE exemplar (
    edicao INT,
    quantidade INT,
    livro VARCHAR(13),
    FOREIGN KEY(livro) REFERENCES livro(isbn)
);

CREATE TABLE usuario (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(30),
    telefone VARCHAR(11)
);

CREATE TABLE solicita (
    usuario VARCHAR(11),
    livro VARCHAR(13),
    edicao INT,
    emprestimo DATETIME PRIMARY KEY,
    devolucao DATETIME,
    FOREIGN KEY(usuario) REFERENCES usuario(cpf),
    FOREIGN KEY(livro, edicao) REFERENCES exemplar(livro, edicao)
);